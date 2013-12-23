rem cl /O2 /W3 /Zl /c /DLUA_BUILD_AS_DLL /D_CRT_SECURE_NO_WARNINGS *.c
cl /c /nologo /Zi /W3 /WX- /EHa /GS /Od /MD /D_CRT_SECURE_NO_WARNINGS *.c
del lua.obj luac.obj print.obj
lib /out:lua5.2-static.lib *.obj
rem link /OUT:luac.exe luac.o print.o lua5.2-static.lib
