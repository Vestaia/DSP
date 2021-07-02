#include "windowmanager.h"
#include "stringformat.h"

#include "network.h"

#include <string>

void WindowManager::renderImGui() {
    // State variables
    static bool init = false;
    
    // Data variables
    static const int n = 2000;
    static float x_data[n];
    static float y_data[n];
    static int32_t data[n];
    
    // Client variables
    static client c = client();
    static char ip[16] = "192.168.1.10";
    static char port[6] = "42069";
    static bool connected = false;
    
    // DAQ variables
    static float ring_buffer_samples = (1 << 23);
    static float acquisition_rate = 125000000;
    
    static float clock_cycle_period = ring_buffer_samples / n;
    static float rate = acquisition_rate / clock_cycle_period;
    static float real_period = 1 / rate;
    
    if (!init) {
        init = true;
        
        for (int i = 0; i < n; i++) {
            x_data[i] = i * real_period;
        }
        
        // try once to connect upon initialization
        connected = c.connect_to(ip, std::stoi(port)) == 0;
    }
    
    // retrieve data from FPGA
    if (connected){
        c.get_frame(data, 0, 0, n, rate);
        for (int i = 0; i < n; i++) 
            y_data[i] = (float) data[i];
    }
    //Make logic to connect on button click
    else{
        
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
    
    ImGui::Text("Status: %s", connected ? "Connected" : "No connection");
    
    if (ImGui::CollapsingHeader("Connection", ImGuiTreeNodeFlags_DefaultOpen)) {
        ImGui::Text("Target IP: ");
        ImGui::SameLine();
        ImGui::PushItemWidth(-1.0f);
        ImGui::InputText("##target ip", ip, IM_ARRAYSIZE(ip));
        ImGui::PushItemWidth(0.0f);
        
        ImGui::Text("Target Port: ");
        ImGui::SameLine();
        ImGui::PushItemWidth(-1.0f);
        ImGui::InputText("#target port", port, IM_ARRAYSIZE(port));
        ImGui::PushItemWidth(0.0f);
        
        if (ImGui::Button(string_format("Connect to %s:%s", (strcmp(ip, "") == 0) ? "xxx.xxx.xxx.xxx" : ip, (strcmp(port, "") == 0) ? "xxxxx" : port).c_str())) {
            if (strcmp(ip, "") != 0) {
                connected = c.connect_to(ip, std::stoi(port)) == 0;
            }
        }
    }
    
    ImGui::End();
    
    ImGui::SetNextWindowPos(ImVec2(0.25f * windowWidth, 0.0f), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(windowWidth - 0.25f * windowWidth, windowHeight), ImGuiCond_Always);
    
    ImGui::Begin("Plot", nullptr, window_flags);
    if (ImPlot::BeginPlot("Red Pitaya Data", "Time (s)", "Reading (Some Unit)", ImVec2(-1.0f, -1.0f), 0)) {
        ImPlot::PlotLine("My Line Plot", x_data, y_data, n);
        ImPlot::EndPlot();
    }
    ImGui::End();


    // Rendering
    ImGui::Render();
    draw_data = ImGui::GetDrawData();
}