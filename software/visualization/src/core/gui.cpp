#include "windowmanager.h"

void WindowManager::renderImGui() {
    // Our state variables
    static int   bar_data[11];
    static float x_data[1000];
    static float y_data[1000];

    static bool init = false;

    if (!init) {
        init = true;

        for (int i = 0; i < 11; i++) {
            bar_data[i] = i + 1;
        }

        for (int i = 0; i < 1000; i++) {
            x_data[i] = 0.0f + 0.01f * i;
            y_data[i] = sinf(x_data[i]) + x_data[i];
        }
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
    
    ImGui::Text("Funky text inside here");
    
    ImGui::End();
    
    ImGui::SetNextWindowPos(ImVec2(0.25f * windowWidth, 0.0f), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(windowWidth - 0.25f * windowWidth, windowHeight), ImGuiCond_Always);
    
    ImGui::Begin("Plot", nullptr, window_flags);
    if (ImPlot::BeginPlot("My Plot", 0, 0, ImVec2(-1.0f, -1.0f), 0, ImPlotAxisFlags_AutoFit, ImPlotAxisFlags_AutoFit)) {
        ImPlot::PlotBars("My Bar Plot", bar_data, 11);
        ImPlot::PlotLine("My Line Plot", x_data, y_data, 1000);
        ImPlot::EndPlot();
    }
    ImGui::End();

    // Rendering
    ImGui::Render();
    draw_data = ImGui::GetDrawData();
}