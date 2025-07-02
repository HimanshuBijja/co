@echo off
cls

REM Assemble the .ASM file
masm sumcub.asm;

REM Link the .OBJ file to create .EXE
link sumcub.obj;

REM Start DEBUG on the generated .EXE
debug sumcub.exe
