@echo off
echo Launching OpenGL application via WSL (software rendering)...
wsl -d Ubuntu -- bash -c "export LIBGL_ALWAYS_SOFTWARE=1 && export MESA_GL_VERSION_OVERRIDE=4.5 && cd '/mnt/c/Users/Surabhi M R/Downloads/OpenGL3DComputerGraphicsEngine/build' && ./getting_started_hello_triangle"
pause
