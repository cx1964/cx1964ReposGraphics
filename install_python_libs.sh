# activate python env
# Tbv Windows machine met mingw64
source /c/tmp/cx1964ReposGraphics/env_python3_graphics/Scripts/activate

# Linux 
source ./env_python3_graphics/bin/activate


# upgrade pip uitvoeren in Linux shell of Windows machine met mingw64
python -m pip install --upgrade pip

# install benodigde python libraries
# uitvoeren in Linux shell of Windows machine met mingw64
pip install Matplotlib

# toon geinstalleerde python libraries
pip list

# remove a package
# pip uninstall pyside