foreach($line in Get-Content ../voxels.def) {
   
    $a = -split $line

    if ($a[0].StartsWith("/"))
    {
        #Add-Content -Path ./extraVoxels.txt -Value $line
    }

    else
    {
        if ($a[0].StartsWith("v")) {
            if ($a[3].StartsWith("tile0"))
            {
                #multi angeled sprites
                continue
            }

            else
            {
                if ($a[5].StartsWith("r"))
                {
                    #rotate
                    Add-Content -Path ./extraVoxels.txt -Value ("Voxel " + $a[4] + " { filename " + $a[1] + " rotate TRUE } " + $a[7] + " " + $a[8])
                }

                else
                {
                    Add-Content -Path ./extraVoxels.txt -Value ("Voxel " + $a[4] + " { filename " + $a[1] + " } " + $a[6] + " " + $a[7])
                }
            }
        }
    }
}
