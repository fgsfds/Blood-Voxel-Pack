New-Item -ItemType Directory -Force -Path "./defs"

Get-ChildItem "../DEF" -Filter *.def |

    ForEach-Object {

        foreach ($line in Get-Content $_.FullName) {

            $a = -split $line
            $comm = $null

            # commented out voxels
            if ($a[0].StartsWith("/")) { $comm = "//" }

            # voxels disabled specifically for Fresh Supply
            if ($a[1] -match 0187 -or
                $a[1] -match 0188 -or
                $a[1] -match 0189 -or
                $a[1] -match 0541 -or
                $a[1] -match 0544 -or
                $a[1] -match 0547 -or
                $a[1] -match 0599 -or
                $a[1] -match 0745 -or
                $a[1] -match 0795 -or
                $a[1] -match 0797 -or
                $a[1] -match 1066 -or
                $a[1] -match 1067 -or
                $a[1] -match 1068 -or
                $a[1] -match 1069 -or
                $a[1] -match 1087 -or
                $a[1] -match 1088 -or
                $a[1] -match 1089 -or
                $a[1] -match 2420 -or
                $a[1] -match 2421 -or
                $a[1] -match 2422 -or
                $a[1] -match 2423 -or
                $a[1] -match 2482 -or
                $a[1] -match 2579 -or
                $a[1] -match 2580 -or
                $a[1] -match 2581 ) { $comm = "//" }

            if ($a[0].StartsWith("v") -or $a[0].StartsWith("//v")) {

                # multi angle sprites
                if ($a[3].StartsWith("tile0")) {
                    [int]$x = $a[4]
                    while ($a[6] -ge $x) { Add-Content -Path ./defs/extraVoxels.txt -Value ($comm + "Voxel " + $x++ + " { filename " + $a[1] + " } " + $a[8..$a.Count]) }
                }

                else {
                    #rotate
                    if ($a[5].StartsWith("r")) { Add-Content -Path ./defs/extraVoxels.txt -Value ($comm + "Voxel " + $a[4] + " { filename " + $a[1] + " rotate TRUE } " + $a[7..$a.Count]) }
                    else { Add-Content -Path ./defs/extraVoxels.txt -Value ($comm + "Voxel " + $a[4] + " { filename " + $a[1] + " } " + $a[6..$a.Count]) }
                }
            }
        }
    }
