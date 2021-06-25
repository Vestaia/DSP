#include "windowmanager.h"

void WindowManager::initialize(int windowWidth, int windowHeight) {
    glfwSetWindowUserPointer(this->window, this);
}