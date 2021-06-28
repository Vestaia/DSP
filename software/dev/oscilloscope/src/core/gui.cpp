#include "windowmanager.h"
#include "stringformat.h"

#include "network.h"

void WindowManager::renderImGui() {
    // Our state variables
    static float x_data[1000];
    static float y_data[1000];
    static int16_t data[1000];
    
    static client c = client();

    static bool init = false;

    if (!init) {
        init = true;
        
        c.connect_to("127.0.0.1", 42069);
        
        for (int i = 0; i < 1000; i++) {
            x_data[i] = 0.0f + 0.01f * i;
        }
    }
    
    c.get_frame(data, 0, 0, 1000, 1);
    
    for (int i = 0; i < 1000; i++) {
        y_data[i] = (float) data[i];
    }   
     
    static ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoMove | 
                                           ImGuiWindowFlags_NoResize | 
                                           ImGuiWindowFlags_NoCollapse;

    // Start the Dear ImGui frame
    ImGui_ImplVulkan_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
    
    ImGui::SetNextWindowPos(ImVec2(0.0f, 0.0f), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(0.25f * windowWidth, windowHeight), ImGuiCond_Always);
    
    ImGui::Begin("Controls", nullptr, window_flags);
    
    ImGui::PushTextWrapPos();
    ImGui::Text("Application average %.3f ms/frame\n(%.1f FPS) Vsync: %s", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate, vsync ? "On" : "Off");
    ImGui::PopTextWrapPos();
    
    if (ImGui::CollapsingHeader("Connection", ImGuiTreeNodeFlags_DefaultOpen)) {
        static char ip[16];
        ImGui::Text("Target IP: ");
        ImGui::SameLine();
        ImGui::PushItemWidth(-1.0f);
        ImGui::InputText("##target ip", ip, IM_ARRAYSIZE(ip));
        ImGui::PushItemWidth(0.0f);
        
        static char port[6];
        ImGui::Text("Target Port: ");
        ImGui::SameLine();
        ImGui::PushItemWidth(-1.0f);
        ImGui::InputText("#target port", port, IM_ARRAYSIZE(port));
        ImGui::PushItemWidth(0.0f);
        
        if (ImGui::Button(string_format("Connect to %s:%s", (strcmp(ip, "") == 0) ? "xxx.xxx.xxx.xxx" : ip, (strcmp(port, "") == 0) ? "xxxxx" : port).c_str())) {
            if (strcmp(ip, "") == 0) {
                
            }
        }
    }
    
    ImGui::End();
    
    ImGui::SetNextWindowPos(ImVec2(0.25f * windowWidth, 0.0f), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(windowWidth - 0.25f * windowWidth, windowHeight), ImGuiCond_Always);
    
    ImGui::Begin("Plot", nullptr, window_flags);
    if (ImPlot::BeginPlot("My Plot", 0, 0, ImVec2(-1.0f, -1.0f), 0, ImPlotAxisFlags_AutoFit, ImPlotAxisFlags_AutoFit)) {
        ImPlot::PlotLine("My Line Plot", x_data, y_data, 1000);
        ImPlot::EndPlot();
    }
    ImGui::End();


    // Rendering
    ImGui::Render();
    draw_data = ImGui::GetDrawData();
}