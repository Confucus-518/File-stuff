
Param (
    [Alias("h")] [switch]$help,
    [Alias("u")][string]$folderPath
)

if ($help){
    Write-Host "To use, simply add -folderPath or -u and folder path from current dir. E.g. -u ../folder";
}

if ($folderPath){
    $items = Get-ChildItem -Path $folderPath;

    foreach($file in $items){
        if ($file.PSIsContainer){
            Write-Output "folder:$($file.Name)";
        }
        else{
            Write-Output "file:$($file.Name)";
        }
    }

}elseif (-not $folderPath) {
    Write-Host "Please insert a valid folder path using -folderPath or -u. E.g. -u ../folder";
}

