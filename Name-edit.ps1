<#
.SYNOPSIS
    Welcome to the file name editor, or standardiser.

.DESCRIPTION
    This is a simple script to help standardise the names of files in a directory. This is done through removing letters before the identifying number.
    
.PARAMETER folderPath
    The path of the targetted directory from the current directory.

.PARAMETER help
    Shows help message with usage information.

.EXAMPLE
    .\Name-edit.ps1 -folderPath . -number 
    
    Outputs: 01 PPC curve, 02 Opportunity Cost, 03 Scarcity
.INPUTS
    [string] for the -folderPath param
    [swtich] for the -number and -chapter param

.OUTPUTS
    [string] Listed files with updated names

.NOTES
    Version: 1.0
    Author: Confucus
#>

Param (
    [Alias("showHelp", "sh")] [switch]$help,
    [Alias("u")][string]$folderPath,
    [Alias("n")][switch]$number,
    [Alias("ch")][switch]$chapter
)

if ($help){
    Get-Help ./Name-edit.ps1 -Full;
    exit 0;
}
if ($folderPath){
    $items = Get-ChildItem -Path $folderPath;

    foreach($file in $items){
        if (-not $file.PSIsContainer){
            Write-Output "file";
        }
        else{
            Write-Output "No files in directory";
        }
    }

}elseif (-not $folderPath) {
    Write-Host "Please insert a valid folder path using -folderPath or -u. E.g. -u ../folder";
}

