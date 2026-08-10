# Aliases
set-alias vim nvim
set-alias zip compress-archive
set-alias unzip rg
set-alias touch new-item
set-alias ls eza
set-alias cat bat
set-alias lg lazygit
set-alias wall Wallpaper_Shuffler
set-alias find fd
set-alias flip $HOME\.local\Scripts\coin_flip.ps1

# Appearance
invoke-expression (&starship init powershell)
set-PSReadlineOption -predictionsource History
fastfetch

# Variables
$json = "$HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$games = "$HOME\Games\Visual Novels\Game Files"
$rust = "$HOME\Projects\Wallpaper_Shuffler\src"
$nvim = "$HOME\AppData\Local\nvim"

# Yazi
$ENV:YAZI_FILE_ONE = 'C:\Program Files\Git\usr\bin\file.exe'

function y {
        $tmp = (New-TemporaryFile).FullName
        yazi.exe @args --cwd-file="$tmp"
        $cwd = Get-Content -Path $tmp -Encoding UTF8
        if ($cwd -and $cwd -ne $PWD.Path -and (Test-Path -LiteralPath $cwd -PathType Container)) {
            Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
        }
        Remove-Item -Path $tmp
}

