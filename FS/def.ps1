New-Item -ItemType Directory -Force -Path "./defs"

Get-ChildItem "../DEF" -Filter *.def |
    ForEach-Object {

        foreach ($line in Get-Content $_.FullName) {

            $a = -split $line

            if ($a[0].StartsWith("/")) {
                # Add-Content -Path ./extraVoxels.txt -Value $line
            }

            else {
                if ($a[0].StartsWith("v")) {
                    if ($a[3].StartsWith("tile0")) {
                        # multi angeled sprites
                        continue
                    }

                    else {

                        $comm = ""

                        # disabled sprites
                        if ($a[1] -match 0795 -or
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
                            $a[1] -match 2423 ) { $comm = "//" }

                        if ($a[5].StartsWith("r")) {
                            # rotate
                            Add-Content -Path ./defs/extraVoxels.txt -Value ($comm + "Voxel " + $a[4] + " { filename " + $a[1] + " rotate TRUE } " + $a[7..$a.Count])
                        }

                        else {
                            Add-Content -Path ./defs/extraVoxels.txt -Value ($comm + "Voxel " + $a[4] + " { filename " + $a[1] + " } " + $a[6..$a.Count])
                        }
                    }
                }
            }
        }
    }
