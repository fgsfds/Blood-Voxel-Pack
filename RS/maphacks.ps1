New-Item -ItemType Directory -Force -Path "./defs/levelHacks"

Get-ChildItem "../MHK" -Filter *.MHK -Recurse |

	ForEach-Object {

		(Get-Content $_.FullName) |

			ForEach-Object {
				$_ -replace 'crc32 ', '' `
					-replace 'notmd', 'novoxel' `
					-replace 'mdposxoff', 'mdxoff' `
					-replace 'mdposyoff', 'mdyoff' `
					-replace 'mdposzoff', 'mdzoff' `
			} | Out-File -encoding utf8 ("./defs/levelHacks/" + $_.Basename + ".txt")
		}


#removing everything but angoff
Get-ChildItem "./defs/levelHacks" -Filter *.txt | ForEach-Object {
    $path = $_.FullName
    $lines = Get-Content $path

    if ($lines.Count -gt 0 -and $lines[0] -match '^\d') {
        $lines[0] = '0'
    } else {
        $lines = @('0') + $lines
    }

    $lines = $lines | Where-Object { $_ -notmatch 'angoff' }

    Set-Content -Path $path -Value $lines
}
