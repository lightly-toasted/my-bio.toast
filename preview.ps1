$fileNames = @("styles.css", "bio.toast.json")
$encodedFiles = @()

foreach ($fileName in $fileNames) {
    $base64String = [Convert]::ToBase64String([IO.File]::ReadAllBytes($fileName))
    $encodedFileName = $fileName + ".enc"
    $base64String | Out-File -FilePath $encodedFileName
    $encodedFiles += "$(Get-Content $encodedFileName)"
}

$previewUrl = "https://bio.toast.name/github?preview=$($encodedFiles -join '|')"
Start-Process $previewUrl

foreach ($fileName in $fileNames) {
    $encodedFileName = $fileName + ".enc"
    Remove-Item $encodedFileName
}