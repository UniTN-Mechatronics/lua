rem cl /MD /O2 /W3 /c /DLUA_BUILD_AS_DLL /D_CRT_SECURE_NO_WARNINGS *.c
cl /MD /O2 /W3 /c /D_CRT_SECURE_NO_WARNINGS *.c
del *.o
ren lua.obj lua.o
ren luac.obj luac.o
ren print.obj print.o
rem link /OUT:lua5.2.lib *.obj
rem link /OUT:lua.exe lua.o lua5.2.lib
lib /out:lua5.2-static.lib *.obj
rem link /OUT:luac.exe luac.o print.o lua5.2-static.lib
