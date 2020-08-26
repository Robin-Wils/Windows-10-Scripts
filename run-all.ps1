#   Description:
# This script runs all powershell scripts except the Extra-scripts.


# WARNING: It is recommended to read the scripts first.
# You might want to edit some of them.

# Especially check the Debloat-Windows-10\utils\install-basic-software.ps1 script.



# Directories with scripts you want to run
# NOTE: The order of this matters!
$directoryList = @(
    'Debloat-Windows-10\scripts'
    'Debloat-Windows-10\utils'
    'Selfmade-cleanup-scripts'
);

foreach ($directory in $directoryList) {
    $scripts = Get-ChildItem $directory -file *.ps1 -Name

    foreach ($script in $scripts) {
        & $script
    }
}

