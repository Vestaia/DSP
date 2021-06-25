#pragma once

// ImGui
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_vulkan.h"

// GLFW
#define GLFW_INCLUDE_NONE
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

// Vulkan
#include <vulkan/vulkan.h>

class WindowManager {
    public:
        GLFWwindow* window;
        int windowWidth, windowHeight;

        void initialize(int windowWidth, int windowHeight);

        void renderImGui();
    private:
        // Returns 0 - no error, or ERR_CODE
        int initializeWindow(int windowWidth, int windowHeight);
};