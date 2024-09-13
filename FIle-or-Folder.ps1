$folderPath = Read-Host "Enter your folder path from current directory, e.g. ../folder";

$items = Get-ChildItem -Path $folderPath;

foreach($file in $items){
    if ($file.PSIsContainer){
        Write-Output "folder:$($file.Name)";
    }
    else{
        Write-Output "file:$($file.Name)";
    }
}