param(
    [int]$Port = 5500
)

# Try to use the system Python to serve files. This avoids file:// CORS issues in browsers.
if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "Starting Python HTTP server on port $Port... (Ctrl+C to stop)"
    python -m http.server $Port
} elseif (Get-Command py -ErrorAction SilentlyContinue) {
    Write-Host "Starting Python (py) HTTP server on port $Port... (Ctrl+C to stop)"
    py -m http.server $Port
} else {
    Write-Host "Python not found. Install Python or use the Live Server extension in VS Code."
    exit 1
}