$files = Get-ChildItem -File -Filter *.tgs
$result = @()

foreach ($f in $files) {
    $name = [IO.Path]::GetFileNameWithoutExtension($f.Name)

    # 1. убрать emoji_
    if ($name -match '^(?i)emoji_') {
        $name = $name.Substring(6)
    }

    # 2. lower
    $name = $name.ToLower()

    # 3. убрать цифры
    $name = $name -replace '\d',''

    # 4. пробелы и дефисы → _
    $name = $name -replace '[\s\-]+','_'

    # 5. trim _
    $name = $name.Trim('_')

    if ([string]::IsNullOrWhiteSpace($name)) {
        continue
    }

    $base = $name
    $i = 1

    # 6. коллизии имён
    while (Test-Path (Join-Path $f.DirectoryName ($name + ".tgs"))) {
        if ($f.BaseName -eq $name) { break }
        $name = "$base`_$i"
        $i++
    }

    # 7. переименование
    if ($f.BaseName -ne $name) {
        Rename-Item -LiteralPath $f.FullName -NewName ($name + ".tgs")
    }

    $result += @{ code = $name }
}

# 8. index.json
$result | ConvertTo-Json -Depth 2 | Set-Content -Encoding UTF8 index.json