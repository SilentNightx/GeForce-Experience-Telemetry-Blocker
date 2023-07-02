# Declare host rules
$nvidiaHosts = @(
    "0.0.0.0 ls.dtrace.nvidia.com",
    "0.0.0.0 telemetry.gfe.nvidia.com",
    "0.0.0.0 accounts.nvgs.nvidia.com",
    "0.0.0.0 accounts.nvgs.nvidia.cn",
    "0.0.0.0 nvidia.tt.omtrdc.net",
    "0.0.0.0 api.commune.ly",
    "0.0.0.0 login.nvgs.nvidia.com",
    "0.0.0.0 login.nvgs.nvidia.cn"
)

# Set file paths
$file = "C:\Windows\System32\drivers\etc\hosts"
$tempfile = "C:\Windows\System32\drivers\etc\temp_hosts"

# Rename the hosts file to allow writing to it
Rename-Item -Path $file -NewName $tempfile

# Get an array of lines from the hosts file
$hostfile = Get-Content $tempfile

# Loop through our host rules
foreach ($entry in $nvidiaHosts) {
    # Check if our host file contains the rules
    if ($hostfile -notcontains "$entry") {
        # Add the rule to the array if it doesn't
        $hostfile += "$entry"
    }
}

# Write our array to the hosts file
Set-Content -Path $tempfile -Value $hostfile -Force

# Rename the temporary file back to hosts
Move-Item -Path $tempfile -Destination $file -Force