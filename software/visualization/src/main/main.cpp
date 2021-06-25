// Project
#include <windowmanager.h>

int main(int, char**)
{   
    const int windowWidth = 1280;
    const int windowHeight = 720;

    WindowManager window;
    bool vsync = true;
    window.initialize("Red-Pitaya Oscilloscope", windowWidth, windowHeight, vsync);

    // Main loop
    while (!window.shouldClose())
    {
        window.pollEvents();

        window.checkSwapChainRebuild();

        window.renderImGui();
        
        if (!window.isMinimized())
        {
            window.renderFrame();
            window.drawFrame();
        }
    }

    window.destroy();

    return 0;
}