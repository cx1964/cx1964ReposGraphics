rem File: install_python_env.sh
rem Functie: installatie tbv opzetten van een python3 omgeving
rem opmerking: Uitgangspunt python3 software is al geinstalleerd onder Windows10/Linux

rem maak virtuele python environment voor python libraries
python3 -m venv env_python3_graphics

# windows
# .\env_python3_DWH\Scripts\activate.bat
# Linux 
source ./env_python3_graphics/bin/activate
