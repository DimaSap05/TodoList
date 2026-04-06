$ans = Read-Host "Remove all volume data? [y/N]"
if ($ans -eq 'y') {
    docker compose down todoapp-postgres
    if (Test-Path out\pgdata) {
        Remove-Item -Recurse -Force out\pgdata
    }
    Write-Host "Cleaned up"
} else {
    Write-Host "Cancelled"
}