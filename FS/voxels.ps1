Copy-Item -Path "../KVX" -Destination "./KVX" -Recurse


Get-ChildItem "./KVX" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c c c
}

Get-ChildItem "./KVX/ANIM" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c c c
}

Get-ChildItem "./KVX/PICKUPS" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c c c
}

Get-ChildItem "./KVX/DECALS" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c 0 c
}

Get-ChildItem "./KVX/SWITCHES" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c 0 c
}