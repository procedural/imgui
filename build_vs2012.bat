set "VSCMD_START_DIR=%CD%"
call "\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86_amd64
cl /MT /D_USRDLL /D_WINDLL imgui.cpp imgui_demo.cpp imgui_draw.cpp cimgui.cpp fontAtlas.cpp drawList.cpp /link /DLL /OUT:imgui.dll
del imgui.exp
del cimgui.obj
del drawList.obj
del fontAtlas.obj
del imgui.obj
del imgui_demo.obj
del imgui_draw.obj
pause
