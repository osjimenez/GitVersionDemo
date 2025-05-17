# Ruta a GitVersion.exe
$gitVersionExe = ".\GitVersion.exe"

# Carpeta donde están los archivos .yml
$folder = "."

# Buscar, ordenar alfabéticamente por nombre (sin extensión)
$ymlFiles = Get-ChildItem -Path $folder -Filter "*.yml" | Sort-Object { [System.IO.Path]::GetFileNameWithoutExtension($_.Name) }

foreach ($file in $ymlFiles) {
    $nameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    $version = & $gitVersionExe /showvariable FullSemVer /config $file.FullName
    Write-Host "$nameWithoutExtension ? $version"
}