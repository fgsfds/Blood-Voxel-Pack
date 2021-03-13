New-Item -Path "./" -Name "defs" -ItemType "directory"
New-Item -Path "./defs/" -Name "levelHacks" -ItemType "directory"

Get-ChildItem "../maphacks" -Filter *.MHK -Recurse |

ForEach-Object{
	
	(Get-Content $_.FullName) |	
		Foreach-Object {
		$_ -replace 'crc32 ', '' `
		   -replace 'notmd', 'novoxel' `
		   -replace 'mdposxoff', 'mdxoff' `
		   -replace 'mdposyoff', 'mdyoff' `
		   -replace 'mdposzoff', 'mdzoff' `
		} | Out-File ("./defs/levelHacks/" + $_.Basename + ".txt")
}
	
Add-Content -Path ./defs/levelHacks/cp09.txt -Value 'sprite 803 x 29184'

Add-Content -Path ./defs/levelHacks/e1m5.txt -Value 'xsectorid 244 124 1 0 // clear damage type'
	
Add-Content -Path ./defs/levelHacks/e2m1.txt -Value 'spriteid 373 x 52992
spriteid 373 y -40192'

Add-Content -Path ./defs/levelHacks/e2m3.txt -Value 'spriteid 376 clearcstat 1
spriteid 377 clearcstat 1
spriteid 113 remove'

Add-Content -Path ./defs/levelHacks/e3m2.txt -Value 'spriteid 297 remove'

Add-Content -Path ./defs/levelHacks/e4m4.txt -Value 'wallid 2502 x 40448
wallid 2502 y 50944
wallid 2503 x 40448
wallid 2503 y 50944'

Add-Content -Path ./defs/levelHacks/e4m6.txt -Value 'wallid 1334 clearcstat 1
wallid 1333 clearcstat 1
wallid 1332 clearcstat 1
wallid 1331 clearcstat 1
wallid 1312 clearcstat 1
wallid 1311 clearcstat 1
wallid 1310 clearcstat 1
wallid 1309 clearcstat 1
wallid 1356 clearcstat 1
wallid 1355 clearcstat 1
wallid 1354 clearcstat 1
wallid 1353 clearcstat 1
wallid 1352 clearcstat 1
wallid 1351 clearcstat 1
wallid 1287 clearcstat 1
wallid 1288 clearcstat 1
wallid 1289 clearcstat 1
wallid 1290 clearcstat 1
wallid 1250 clearcstat 1
wallid 1251 clearcstat 1
wallid 1252 clearcstat 1
wallid 1253 clearcstat 1
wallid 1255 clearcstat 1
wallid 1270 clearcstat 1
wallid 1336 clearcstat 1
wallid 1292 clearcstat 1
wallid 1314 clearcstat 1'

Add-Content -Path ./defs/levelHacks/e3m2.txt -Value 'spriteid 297 remove'
