New-Item -ItemType Directory -Force -Path "./defs"

Get-ChildItem "../DEF" -Filter *.def |

    ForEach-Object {

        foreach ($line in Get-Content $_.FullName) {

            $a = -split $line
            $comm = $null

            # commented out voxels
            if ($a[0].StartsWith("/")) { $comm = "//" }
			
			$disabledVoxels = @(
				'0187', #WALL_SKULL_A
				'0188', #WALL_SKULL_B
				'0189', #WALL_SKULL_C
				'0541', #TREE
				'0544', #TREE
				'0547', #TREE
				'0599', #BUSH
				'0745', #CHAIN
				'0795', #LAMP
				'0797', #TREE
				'0916', #SLICER
				'1066', #WEB1
				'1067', #WEB2
				'1068', #WEB3
				'1069', #WEB4
				'1087', #WEB_BRK_A				
				'1088', #WEB_BRK_B
				'1089', #WEB_BRK_C
				'2420', #WEB_FIRE_A
				'2421', #WEB_FIRE_B
				'2422', #WEB_FIRE_C
				'2423', #WEB_FIRE_D
				'2579', #CHAIN
				'2580', #CHAIN_A
				'2581'  #CHAIN_A
				)
				
			$voxelId = $a[1] -replace '\D'

            # voxels disabled specifically for Fresh Supply
            if ($voxelId -in $disabledVoxels) { $comm = "//" }

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
