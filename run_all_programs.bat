@echo off
title OpenGL 3D Graphics Engine - Program Launcher
color 0A

:menu
cls
echo ============================================================
echo        OpenGL 3D Computer Graphics Engine - Launcher
echo ============================================================
echo.
echo   Pick a program to run:
echo.
echo   [1]  Hello Window           - Empty teal window
echo   [2]  Hello Triangle         - Orange triangle
echo   [3]  Hello Triangle Indexed - Wireframe rectangle
echo   [4]  Triangle Exercise 1    - Two triangles side by side
echo   [5]  Triangle Exercise 2    - Two triangles (separate VAOs)
echo   [6]  Triangle Exercise 3    - Two triangles, different colors
echo   [7]  Shaders Ins/Outs       - Colored triangle (data flow)
echo   [8]  Shaders Uniforms       - Animated color-changing triangle
echo   [9]  Shaders More Attribs   - Rainbow triangle (R,G,B corners)
echo   [10] Shader Class Demo      - Rainbow triangle (clean code)
echo.
echo   [0]  Exit
echo.
echo ============================================================
set /p choice="   Enter your choice (0-10): "

if "%choice%"=="1" set "prog=getting_started_hello_window"
if "%choice%"=="2" set "prog=getting_started_hello_triangle"
if "%choice%"=="3" set "prog=getting_started_hello_triangle_indexed"
if "%choice%"=="4" set "prog=getting_started_hello_triangle_exercise1"
if "%choice%"=="5" set "prog=getting_started_hello_triangle_exercise2"
if "%choice%"=="6" set "prog=getting_started_hello_triangle_exercise3"
if "%choice%"=="7" set "prog=getting_started_shaders_ins_outs"
if "%choice%"=="8" set "prog=getting_started_shaders_uniforms"
if "%choice%"=="9" set "prog=getting_started_shaders_more_attributes"
if "%choice%"=="10" set "prog=getting_started_shaders_more_attributes_source_using_shader_class"
if "%choice%"=="0" exit

if not defined prog (
    echo    Invalid choice! Try again.
    timeout /t 2 >nul
    goto menu
)

echo.
echo    Launching: %prog%
echo    (Close the OpenGL window or press ESC to return here)
echo.
wsl -d Ubuntu -- bash -c "export LIBGL_ALWAYS_SOFTWARE=1 && export MESA_GL_VERSION_OVERRIDE=4.5 && cd '/mnt/c/Users/Surabhi M R/Downloads/OpenGL3DComputerGraphicsEngine/build' && ./%prog%"

set "prog="
echo.
echo    Program closed. Returning to menu...
timeout /t 2 >nul
goto menu
