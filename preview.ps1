$fileNames = @("bio.toast.json", "styles.css")
$encodedFiles = @()

foreach ($fileName in $fileNames) {
    $base64String = [Convert]::ToBase64String([IO.File]::ReadAllBytes($fileName))
    $encodedFileName = $fileName + ".enc"
    $base64String | Out-File -FilePath $encodedFileName
    $encodedFiles += "$(Get-Content $encodedFileName)"
}

$previewUrl = "https://localhost:5173/lightly-toasted?preview=$($encodedFiles -join '|')"
Start-Process $previewUrl

foreach ($fileName in $fileNames) {
    $encodedFileName = $fileName + ".enc"
    Remove-Item $encodedFileName
}