powershell .\def.ps1
powershell .\maphacks.ps1
powershell .\voxels.ps1

mkdir FS
move defs FS
move KVX FS
copy fs_install.bat FS
copy 7za.exe FS

rmdir /s /q defs
rmdir /s /q KVX