#include <glad/glad.h>

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

#include <iostream>

#include "App.hpp"
#include "itdReader.hpp"
#include "map.hpp"
#include "utils.hpp"
#include "tower.hpp"
#include "glad/glad.h"

namespace
{
    App &window_as_app(GLFWwindow *window)
    {
        return *static_cast<App *>(glfwGetWindowUserPointer(window));
    }
}

// Optional: limit the frame rate
constexpr double TARGET_TIME_FOR_FRAME{1.0 / 60.0};

void mouseButtonCallback(GLFWwindow *window, int button, int action)
{
    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
    {
        double xpos, ypos;
        glfwGetCursorPos(window, &xpos, &ypos);
        std::cout << "Cursor position: (" << xpos << ", " << ypos << ")" << std::endl;
    }
}

int main()
{
    std::string osTypeTest;
    #ifdef IS_MACOS
        osTypeTest = "macOS";
    #elif IS_LINUX
        osTypeTest = "Linux";
    #elif IS_WINDOWS
        osTypeTest = "Windows";
    #else
        osTypeTest = "Unknown";
    #endif

    // Set an error callback to display glfw errors
    glfwSetErrorCallback([](int error, const char *description)
                         { std::cerr << "Error " << error << ": " << description << std::endl; });

    // Initialize glfw
    if (!glfwInit())
    {
        return -1;
    }

    // Create window
    GLFWwindow *window{glfwCreateWindow(1280, 720, "Window", nullptr, nullptr)};
    if (!window)
    {
        std::cerr << "Failed to create window" << std::endl;
        glfwTerminate();
        return -1;
    }

    // glfwSetMouseButtonCallback(window, mouseButtonCallback);

    // Make the window's context current
    glfwMakeContextCurrent(window);

    // Intialize glad (loads the OpenGL functions)
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cerr << "Failed to initialize OpenGL context" << std::endl;
        glfwTerminate();
        return -1;
    }

    App app{};
    app.osType = osTypeTest;

    glfwSetWindowUserPointer(window, &app);

    glfwSetKeyCallback(window, [](GLFWwindow *window, int key, int scancode, int action, int mods)
                       { window_as_app(window).key_callback(key, scancode, action, mods); });
    glfwSetMouseButtonCallback(window, [](GLFWwindow *window, int button, int action, int mods)
                               { window_as_app(window).mouse_button_callback(button, action, mods); });
    glfwSetScrollCallback(window, [](GLFWwindow *window, double xoffset, double yoffset)
                          { window_as_app(window).scroll_callback(xoffset, yoffset); });
    glfwSetCursorPosCallback(window, [](GLFWwindow *window, double xpos, double ypos)
                             { window_as_app(window).cursor_position_callback(xpos, ypos); });
    glfwSetWindowSizeCallback(window, [](GLFWwindow *window, int width, int height)
                          { window_as_app(window).size_callback(window, width, height); });

    // Force calling the size_callback of the game to set the right viewport and projection matrix
    {
        int width, height;
        glfwGetWindowSize(window, &width, &height);
        app.size_callback(window, width, height);
    }

    app.setup();

    // Loop until the user closes the window
    while (!glfwWindowShouldClose(window))
    {

        // Get time (in second) at loop beginning
        double startTime{glfwGetTime()};

        app.update();

        // Swap front and back buffers
        glfwSwapBuffers(window);

        // Poll for and process events
        glfwPollEvents();

        // Optional: limit the frame rate
        double elapsedTime{glfwGetTime() - startTime};
        // wait the remaining time to match the target wanted frame rate
        if (elapsedTime < TARGET_TIME_FOR_FRAME)
        {
            glfwWaitEventsTimeout(TARGET_TIME_FOR_FRAME - elapsedTime);
        }
    }

    glfwTerminate();
    return 0;
}
