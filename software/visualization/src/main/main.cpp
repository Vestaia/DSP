// Project
#include <windowmanager.h>

int main(int, char**)
{   
    const int windowWidth = 1280;
    const int windowHeight = 720;

    WindowManager window;
    window.initialize("window", windowWidth, windowHeight);

    // Main loop
    while (!window.shouldClose())
    {
        window.pollEvents();

        window.checkSwapChainRebuild();

        window.renderImGui();
        ImDrawData* draw_data = window.draw_data;
        
        if (!window.isMinimized())
        {
            window.renderFrame();
            window.drawFrame();
        }
    }

    window.destroy();

    return 0;
}