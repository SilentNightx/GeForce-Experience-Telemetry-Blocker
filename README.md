# GeForce Experience Telemetry Blocker  
 GeForce Experience Telemetry Blocker is a set of two PowerShell scripts that let you quickly block/unblock Nvidia telemetry using the hosts file.  

 `Block Nvidia.ps1` blocks Nvidia telemetry.  
 `Unblock Nvidia.ps1` unblocks Nvidia telemetry.  

The idea is you create shortcuts to these scripts in your Start Menu to be able to quickly unblock Nvidia telemetry and update drivers with the GeForce Experience then reblock when done.  

To make the shortcuts first create a shortcut of PowerShell located at `%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe`  

Rename it to `Block Nvidia`, open properties, and edit the Shortcut -> Target to add the path of the script and an argument to bypass the system execution policy.  
For example: `%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\Block Nvidia.ps1"`  

Then go to Shortcut -> Advanced and check the Run as Administrator checkbox.  

Do the same for `Unblock Nvidia.ps1`.  

Move the shortcuts to `%ProgramData%\Microsoft\Windows\Start Menu\Programs` to put them in your Start Menu.  

Scripts could be easily edited to block other programs as well.  