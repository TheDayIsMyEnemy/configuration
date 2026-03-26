function rp {
    param([string]$Path = ".")
    (Resolve-Path $Path).Path
}

function cl {
    Get-Content -Raw | Set-Clipboard
}

function gc {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Message
    )
    git add .
    git commit -m "$Message"
    git push
}

function ip {
    (Invoke-RestMethod -Uri "https://api.ipify.org")
}

function db { dotnet build @args }
function dr { dotnet run @args }
function dw { dotnet watch @args }