# Ruta a GitVersion.exe
$gitVersionExe = ".\GitVersion.exe"

# Carpeta donde están los archivos .yml
$folder = "."

# Buscar todos los archivos YML en la carpeta
$ymlFiles = Get-ChildItem -Path $folder -Filter "*.yml"

foreach ($file in $ymlFiles) {
    Write-Host "`n--- Ejecutando con config: $($file.Name) ---"

    $output = & $gitVersionExe /showvariable FullSemVer /config $file.FullName

    Write-Host "Resultado: $output"
}
