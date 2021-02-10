DIR=build
$(shell mkdir -p $(DIR))
$(shell nasm -f win64 Program.asm -o Program.o)
$(shell x86_64-w64-mingw32-ld Program.o -o build/WinForkBomb.exe)
$(shell rm Program.o)
