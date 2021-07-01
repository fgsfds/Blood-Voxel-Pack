Copy-Item -Path "../KVX" -Destination "./KVX" -Recurse


Get-ChildItem "./KVX/PROPS" -Filter *.kvx |
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

Get-ChildItem "./KVX/TREES" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c c c
}

Get-ChildItem "./KVX/GIBS" -Filter *.kvx |
ForEach-Object{
    java -jar ./kvxoff.jar $_.FullName c c c
}

Get-ChildItem "./KVX/MONSTERS" -Filter *.kvx |
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
