============================================================================================
Blood Voxel Pack
============================================================================================

Version:       0.96.1
Release Date:  30.12.2023


============================================================================================
ABOUT
============================================================================================

This pack provides voxel replacements for sprites in Blood.
It is meant to be used with BuildGDX, NBlood and Raze ports.


============================================================================================
HOW TO USE
============================================================================================

BuildGDX (1.15 or later) and NBlood (r11419 or later):
- put voxels_blood_*.zip into autoload folder located in a game directory
- make sure "enable autoload folder" checkbox is enabled

Raze (1.1.3 or later):
- drag and drop voxels_blood_*.zip onto Raze.exe and select then Blood

Fresh Supply:
- unpack voxels_freshsupply_*.zip in the Fresh Supply folder
- start fs_install.bat

BuildLauncher:
- put voxels_blood_*.zip into Data\Addons\Blood\Mods folder
- or download straight from the launcher


============================================================================================
KNOWN ISSUES
============================================================================================

- Complex voxels such as trees are not rendered properly in BuildGDX port (ver 1.17)

- Tree voxels are very demanding and for that reason they were disabled. While they should
work fine in original Blood levels, the game might run super slow in certain custom maps due
to their abundance. They can be turned on in "blood_voxels.def" by removing leading "//" and
saving the file.

- In Raze port, voxels have incorrect offsets when overriding already existing voxels (replacing
Monolith's original voxels): https://github.com/ZDoom/Raze/issues/1114


============================================================================================
LINKS
============================================================================================

> BuildGDX port:
   https://m210.duke4.net/index.php/downloads/download/8-java/53-buildgdx

> NBlood dev builds:
   https://github.com/nukeykt/NBlood/releases

> Raze port
   https://github.com/coelckers/Raze/releases

> BuildLauncher
   https://github.com/fgsfds/BuildLauncher
   
> GitHub repo:
   https://github.com/fgsfds/Blood-Voxel-Pack


============================================================================================
CREDITS
============================================================================================

> Voxel creation
   fgsfds (https://github.com/fgsfds)
   Dzierzan (https://twitter.com/Dzierzan23)
   Chillo (https://twitter.com/DanielWienerson)
   SomeThingEviL
   warezeater
   BloodyTom (https://www.moddb.com/members/bloodytom)

> Maphacks
   fgsfds
   Dzierzan

> Special thanks
   Victorious_Games


============================================================================================
CHANGELOG
============================================================================================

Version 0.97 (??.??.202?)
---------------------------
Dzierzan:
 > Updated maphacks
 > Updated voxel key door markers (2540-2545)
 > Adjusted pivots for 0634, 0635, 0636, 0249, 0622, 0623
 > Updated metal bars (0104)
 > Updated mirror (0710, 0711)
 > Updated pouch (0822)
 > Updated decals (0933, 0942, 0359, 0402, 0844, 0957, 0823, 0151, 0353, 0444, 0740, 0943, 0981, 2357, 2538, 2318, 0695, 0577, 0614, 0644, 0752, 0789, 0790, 2174, 1719, 1726, 0637, 0611, 0074, 0617, 0849, 0423, 0425, 0426, 0958, 1169, 2070, 2071, 0621)
 > Updated tree (0798) and adjusted its pivots.
 > Updated face ball (0853)
 > Updated eye gib (1454)
 + Stone face (0635, 0636)
 + Stones (0805, 0804, 0808, 2494)
 + Bush (0599)
 + Raven (0828)
 + Wooden bars (0116)
 + Stone railing (0339)
 + Feather (0783)
 + Pile of rocks (0806)
 + Gates (1064, 1065)
 + Brain storage sign (0014)
 + Metal bars (0331, 0332, 0463, 0464, 0465, 0466, 1055, 1056)
 + Metal fence (0330)
 + Icicles (2497, 2498)
 + Voodoo doll (0525)
 + Statue decal (0576) [Based on Chillo's 0577]
 + Banner decal (0850)
 + Gib (0467)
 + Bone ladder (0338)
 + Wood blockade (1142, 1143)
 + Paintings (0610, 0612, 0613)
 + Slicer trap (0916)
 + Assisted Suicide Ward decal (0133)
BloodyTom:
 + Tree (0797) [Polished by Dzierzan]
fgsfds:
 + Wooden Cross (0703)
 + Seaweed (0664-0667)


Version 0.96.1 (30.12.2023)
---------------------------
Dzierzan:
 > Adjusted pivots for 1348


Version 0.96 (20.12.2021)
---------------------------
Dzierzan:
 + Added decal (0225)
 > Updated a bunch of voxels


Version 0.95 (06.11.2021)
---------------------------
Dzierzan:
 > Updated a lot of decals so their backs are no longer pitch-black.
 > Updated wine glass (0521)
 > Updated empty glass (0574)
 > Updated ladder to have less dark sides (0334)
 + Cuesta Verde Mall sign (2129)
 + Ichabod's Halloween supply sign (2340)
 + Pub & Grille sign (0741)
 + Miskatonic Station sign (0646)
 + Miguel's Guns and Ammo sign (2341)
 + Metal bars (0155)
 + Bone (1531)
 + Igor's lab supply outlet sign (1145)
 + Buy me toys sign (1146)
 + The house of horrors sign (1041)
 + One-Millionth shopper off/on sign (2012, 2013)
 + Voodoo bone (2444)
 + The house of horrors sign (0653)
 + Metal gate (1060)
 + Hand gib (1455)
 + Gas mask pickup (0831)
 + Metal decal (0248)
 + Plaza sign (2317)
 + Happy-Go-Pukey sign (1259)
 + Window bar (0502)
 + The River Ride of Terror sign (0930)
 + Grass (0603) [based on Chillo's 0536]
Chillo:
 + Beheaded head (0680, 0681)
 + Hatch (0262)
 + Wall stone face (0634)
 + Wall runes (0637)
 + Trees (0542, 0543, 3360)
 + Plant (0536)
 + Torch statue (0572, 0573) [modifed by Dzierzan]
 + Stone object (0679)
 + Ripped leg (0682)
 + Train wheels (0708)
 + Innocent corpse (2334)
 + Stone shield (0578)
 + Heads on stake (0687)
 + Mime (2400-2403)
 + Mime gibs (2404, 2405)
 + Cleaver (2138-2153)
 + Bone projectile (1463-1469)


Version 0.94 (18.07.2021)
---------------------------
fgsfds:
 > Maphacks support for BuildGDX
 > Restored Fresh Suppply support
 + Web (1066-1069, 1087-1089, 2420-2423)
 + Rotating Candlestick (0590-0591) [modifed by Dzierzan]
Dzierzan:
 + Face Target (0853)
 + Duck Target (0852)
 + Balloon (1115)
 + Bell (0382)
 + Goblet (0803)
 + Pillars (0534, 0535)
 + Empty Glass (0574)
 + Hellhound Eye Gib (1327)
 + Stalactite (0654)
 + Targets (0966, 0967)
 + Med Pouch (0822)
 + Freddy's Outfit (0446)
 + Jason's Outfit (0447)
 + Skull Goblet (0520)
 + Blood drops and splashes (1148-1152, 1160, 2028, 2029)
 + Water drops and splashes (1262-1266, 1147)
 + Wine Glass (0521)
 + Clock (1165, 1166)
 + Fly (2410, 2415)
 + Skeleton (0696)
 + Chain Hook (0694)
 + Chains (0692, 0745-0750, 2579-2582)
 + Flares Box (0818)
 + Wall Lamp (0795)
 + Lamps (0944, 0945)
 + Keyhole (2538)
 + Rope (0112)
 + Candy Machine (2273)
 + Metal Bars (0104)
 + Skull (0683)
 + Anvil (0579)
 + Books (0348, 0349, 0639)
 + Poles (0247, 0248)
 + Metal piece (0511)
 + Vase with water (1063)
 + Roman vase (0642)
 + Skull emerging from the wall (0187-0189)
 + Blades (1090, 1091)
 + Swinging Blade (1080-1086)
 + Keep out sign (0824)
 + Under construction sign (0844)
 + Hanging body (0697, 0924, 0975, 0976)
 + Chalkboard (2318)
 + Skull on stake (0259)
 + Guillotine (0835)
 + Green weed (0927,0928)
 + Frame (0144)
 + Painting (0163)
 + Brain in jar (0075, 0076)
 + Skull (0807)
 + Pile of skulls (0684)
 + Map painting (0644)
 + Morningside cemetery sign (1726)
 + Test subjects sign (0019)
 + Scroll (0833)
 + Axed skull (0686)
 + Sale sign (2357)
 + Carnival sign (1725)
 + Wrapped body (1059)
 + Vase (0707)
 + Reflective shots pickup (2428-2432)
 + Question mark pickup (0832)
 + Tree trunk (0609)
 + Piece of metal (0510)
 + Punch o meter sign (0402)
 + Knight armour (0715)
 + Red cross sign (0328)
 + Beast painting (0269)
Chillo:
 + Wall Decorations (0164, 0165, 0167, 0227)
 + Wall Face (0226, 0662, 0623)
 + Lamp (0676, 0677)
 + Wall Skull (1456)
 + Kimble's Suit (0631)
 + Skull on Stake (1348)
 + Demon Skull (0685)
 + Cow Skull (0738)
 + Demon Face (0226)
 + Reaper (0799)
 + Pajamas (1144)
 + Gibs (1456, 1267, 1268, 2155-2158,)
 + Skull Lamp (0564, 0565)
 + Knocker (0166)
 + Corpses (0688-0690, 0698, 0895, 0906, 2330, 2333, 0648, 0691)
 + Cocoon (1061)
 + Trees (0540, 0541, 0544, 0545, 0547, 0798)
 + Chicken (1350)
 + Beef (1351)
 + Jack (2447)
 + Skull Candle (0601-0603)
 + Gargoyle pedestal (1538)
 + Gargoyle statue (1530)
 + Ophelia (0370)
 + Statue (0577, 0536)
 + Stroller (0183)
 + Wall texture (0142)
 + Corpse (0895) [modifed by Dzierzan]
warezeater:
 + Skull on Stake (0257)
 + Pot on and off (0550, 0551) [modifed by Dzierzan]
SomeThingEvil:
 + Freaks sign (0849)
 + Anatomy painting (0611)
 + Hospital sign (0151, 0695)
 + Jojo sign (0981)
 + Tickets sign (0943)
 + Infirmary sign (0066)
 + Welcome to hell sign (0974)
 + Danger signs (0933, 0942)
 + Welcome mat (2070, 2071)
 + Admission sign (0752)
 + Employees must wash hand sign (1719)
 + No admittance sign (0823)
 + Exit sign (0761)
 + Radiology sign (2174)
 + Morgue sign (1062)
 + Manager sign (0751)
 + Crematorium sign (1169)
 + Syphilis sign (0426)
 + Tax dollar sign (0444)
 + Pickman's sign (0740)
 + Sloth sign (0932)
 + Arrow signs (1042, 1043)
 + Spine crusher sign (0335)
 + Weekly specials sign (2376)
 + Bargain prices sign (2356)
 + K-Marche sign (0074)
 + Emergency room sign (0353)
 + East wing sign (0143)
 + Westbound local sign (0359)
 + Northbound express sign (0420)
 + Leprosy ward sign (0423)
 + Scabies ward sign (0425)
 + Demon painting (0614)
 + In loving memory sign (0789)
 + I dismembered momma sign (0790)
 + Members only sign (0957)
 + Bath house sign (0958)
Victorious_Games
 > Voxels offsets for FS


Version 0.93 (21.05.2020)
---------------------------
fgsfds:
 * Various voxels fixes
 + Metal Bars (0058-0059)
 + Wooden Railings (0350-0351, 0588)
 + Fire Lantern (1701-1707)
 + Dropped Dynamite Stick (3422-3424)
 + Dropped Dynamite Bundle (3433-3435)
 + Dropped Spray Can (3467-3470)
Dzierzan:
 + Stalactite (0632)
 + Eye Gib (1454)
 + Air Freshener (1092-1094)


Version 0.92 (10.02.2020)
---------------------------
+ Maphacks support for NBlood
+ Jug (0616)
+ Lantern (0693)
+ Jug (0712)
+ Vase (0739)


Version 0.91 (13.09.2019)
---------------------------
+ Torch (0506-0509)
+ Jacob's Ladder #1 (2479-2481)
+ Jacob's Ladder #2 (2482-2489)
+ Tesla Coil (2472)
+ Plant #1 (1009)
+ Plant #2 (1010)
+ Tommy Gun (0558)
+ Remote Dynamite (3457-3458)
+ Proximity Dynamite (3444-3448)
* Respawn Skulls (2274-2279) update
* Vase (0537) update


Version 0.9 (30.06.2019)
---------------------------
> Added NBlood compatibility
+ Vase (0537)
