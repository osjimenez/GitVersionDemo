# Ruta a GitVersion.exe
$gitVersionExe = ".\GitVersion.exe"

# Carpeta donde están los archivos .yml
$folder = "."

# Buscar todos los archivos .yml en la carpeta
$ymlFiles = Get-ChildItem -Path $folder -Filter "*.yml"

foreach ($file in $ymlFiles) {
    $nameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    
    # Ejecutar GitVersion con ese archivo
    $version = & $gitVersionExe /showvariable FullSemVer /config $file.FullName

    Write-Host "$nameWithoutExtension = $version"
}