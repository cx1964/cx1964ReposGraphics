rem activate python env
# windows
# .\activate_python_env.cmd
# Linux
source ./env_python3_graphics/bin/activate

rem upgrade pip
python -m pip install --upgrade pip

rem install benodigde python libraries
pip install Matplotlib

rem toon geinstalleerde python libraries
pip list

# remove a package
# pip uninstall pyside