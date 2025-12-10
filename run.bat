@echo off
setlocal enabledelayedexpansion

echo Found the following models:
set i=0

for %%f in ("models\*.gguf") do (
    set /a i+=1
    echo !i!: %%f
    set model[!i!]=%%f
)

set /p choice=Enter number of model to load:

set MODEL=!model[%choice%]!

llama-b7327-bin-win-cpu-x64\llama-cli.exe -m "%MODEL%" -p "Hello"
