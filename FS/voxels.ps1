function Convert-Dimensions($dim) {

    $arr = 0, 0, 0

    $integr = [Math]::Truncate($dim)
    $fract = $dim - $integr

    if ($dim -lt 0) { $sign = 255 }
    else { $sign = 0 }

    if ($fract -ne 0) { $right = 128 }
    else { $right = 0 }

    if ($dim -lt 0) { $left = 256 + $integr }
    else { $left = $integr }
    if ($dim -le 0 -and $right -eq 128) { $left-- }

    $arr[0] = $left
    $arr[1] = $right
    $arr[2] = $sign
    return $arr
}

function Test {
    $a = Convert-Dimensions(0)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 0 0 0"
    ""
    $a = Convert-Dimensions(0.5)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 0 128 0"
    ""
    $a = Convert-Dimensions(1)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 1 0 0"
    ""
    $a = Convert-Dimensions(1.5)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 1 128 0"
    ""
    $a = Convert-Dimensions(-0.5)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 255 128 255"
    ""
    $a = Convert-Dimensions(-1)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 255 0 255"
    ""
    $a = Convert-Dimensions(-1.5)
    Write-Host "Result:" $a[0] $a[1] $a[2]
    Write-Host "Correct: 254 128 255"
}

function Main($file, $newx, $newy, $newz) {

    $X = 4;
    $Y = 8;
    $Z = 12;
    $XPIV = 17;
    $YPIV = 21;
    $ZPIV = 25;

    $bytes = $null
    $bytes = [System.IO.File]::ReadAllBytes($file)

    if ($newx -eq "c") { [float]$newx = ($bytes[$X] / 2) }
    if ($newy -eq "c") { [float]$newy = ($bytes[$Y] / 2) }
    if ($newz -eq "c") { [float]$newz = ($bytes[$Z] / 2) }

    $xx = $null
    $yy = $null
    $zz = $null

    $xx = Convert-Dimensions([float]$newx)
    $yy = Convert-Dimensions([float]$newy)
    $zz = Convert-Dimensions([float]$newz)

    $bytes[$XPIV] = $xx[0]
    $bytes[$XPIV - 1] = $xx[1]
    $bytes[$XPIV + 1] = $xx[2]
    $bytes[$XPIV + 2] = $xx[2]

    $bytes[$YPIV] = $yy[0]
    $bytes[$YPIV - 1] = $yy[1]
    $bytes[$YPIV + 1] = $yy[2]
    $bytes[$YPIV + 2] = $yy[2]

    $bytes[$ZPIV] = $zz[0]
    $bytes[$ZPIV - 1] = $zz[1]
    $bytes[$ZPIV + 1] = $zz[2]
    $bytes[$ZPIV + 2] = $zz[2]

    [System.IO.File]::WriteAllBytes($file, $bytes)
}

Copy-Item -Path "../KVX" -Destination "./KVX" -Recurse

# swingblade fix
Rename-Item -Path "./KVX/ANIM/1080.KVX" -NewName "1080_t.KVX"
Rename-Item -Path "./KVX/ANIM/1081.KVX" -NewName "1081_t.KVX"
Rename-Item -Path "./KVX/ANIM/1082.KVX" -NewName "1082_t.KVX"

Rename-Item -Path "./KVX/ANIM/1084.KVX" -NewName "1082.KVX"
Rename-Item -Path "./KVX/ANIM/1085.KVX" -NewName "1081.KVX"
Rename-Item -Path "./KVX/ANIM/1086.KVX" -NewName "1080.KVX"

Rename-Item -Path "./KVX/ANIM/1080_t.KVX" -NewName "1086.KVX"
Rename-Item -Path "./KVX/ANIM/1081_t.KVX" -NewName "1085.KVX"
Rename-Item -Path "./KVX/ANIM/1082_t.KVX" -NewName "1084.KVX"

# chain fix
Rename-Item -Path "./KVX/ANIM/0746.KVX" -NewName "0746_t.KVX"
Rename-Item -Path "./KVX/ANIM/0747.KVX" -NewName "0747_t.KVX"

Rename-Item -Path "./KVX/ANIM/0749.KVX" -NewName "0747.KVX"
Rename-Item -Path "./KVX/ANIM/0750.KVX" -NewName "0746.KVX"

Rename-Item -Path "./KVX/ANIM/0746_t.KVX" -NewName "0750.KVX"
Rename-Item -Path "./KVX/ANIM/0747_t.KVX" -NewName "0749.KVX"

Get-ChildItem "./KVX/ANIM" -Filter *.kvx |
    ForEach-Object {
        if ($_.BaseName -eq "0508") { Main $_.FullName 6 6 24.5 }
        elseif ($_.BaseName -eq "0509") { Main $_.FullName 6 6 25.5 }
        elseif ($_.BaseName -eq "0583") { Main $_.FullName 15 10 41 }
        elseif ($_.BaseName -eq "0854") { Main $_.FullName 13 5 22 }
        elseif ($_.BaseName -eq "0941") { Main $_.FullName 4.5 3.5 14 }

        elseif ($_.BaseName -eq "1080") { Main $_.FullName 62.5 7.5 63.5 }
        elseif ($_.BaseName -eq "1081") { Main $_.FullName 61.5 7.5 63.5 }
        elseif ($_.BaseName -eq "1082") { Main $_.FullName 46 7.5 63.5 }
        elseif ($_.BaseName -eq "1083") { Main $_.FullName 44.5 7.5 63.5 }
        elseif ($_.BaseName -eq "1084") { Main $_.FullName 46.5 7.5 63.5 }
        elseif ($_.BaseName -eq "1085") { Main $_.FullName 59.5 7.5 63.5 }
        elseif ($_.BaseName -eq "1086") { Main $_.FullName 61.5 7.5 63.5 }

        elseif ($_.BaseName -eq "2488") { Main $_.FullName 22 20 60.5 }
        elseif ($_.BaseName -eq "2489") { Main $_.FullName 22 20 64.5 }

        elseif ($_.BaseName -eq "3423") { Main $_.FullName 45.5 3.5 5 }
        elseif ($_.BaseName -eq "3424") { Main $_.FullName 29.5 3.5 3.5 }

        elseif ($_.BaseName -eq "3434") { Main $_.FullName 42.5 8 7.5 }
        elseif ($_.BaseName -eq "3435") { Main $_.FullName 42 8 7.5 }

        elseif ($_.BaseName -eq "3468") { Main $_.FullName 30.5 8 15.5 }
        elseif ($_.BaseName -eq "3469") { Main $_.FullName 33 8 16.5 }
        elseif ($_.BaseName -eq "3470") { Main $_.FullName 31.5 8 16 }
        else { Main $_.FullName c c c }
    }

Get-ChildItem "./KVX/DECALS" -Filter *.kvx |
    ForEach-Object {
        if ($_.BaseName -eq "0142") { Main $_.FullName c 26.5 c }
        else { Main $_.FullName c 0 c }
    }

Get-ChildItem "./KVX/GIBS" -Filter *.kvx |
    ForEach-Object { Main $_.FullName c c c }

Get-ChildItem "./KVX/MONSTERS" -Filter *.kvx |
    ForEach-Object { Main $_.FullName c c c }

Get-ChildItem "./KVX/PICKUPS" -Filter *.kvx |
    ForEach-Object { Main $_.FullName c c c }

Get-ChildItem "./KVX/PROPS" -Filter *.kvx |
    ForEach-Object {
        if ($_.BaseName -eq "0485") { Main $_.FullName c 0 c }
        elseif ($_.BaseName -eq "0976") { Main $_.FullName 14 8.5 63 }
        elseif ($_.BaseName -eq "1067") { Main $_.FullName 32 0.5 64 }
        elseif ($_.BaseName -eq "1068") { Main $_.FullName 8 0.5 64 }
        else { Main $_.FullName c c c }
    }

Get-ChildItem "./KVX/SWITCHES" -Filter *.kvx |
    ForEach-Object { Main $_.FullName c 0 c }

Get-ChildItem "./KVX/TREES" -Filter *.kvx |
    ForEach-Object { Main $_.FullName c c c }
