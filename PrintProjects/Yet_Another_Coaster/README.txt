                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:3474118
Yet Another Coaster by mkoistinen is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

I decided to try my hand at some coasters. I normally partake in cold drinks, which eventually condenses a lot of water around my glass, then drips everywhere. PLA isn't particularly good at soaking this up, so I know I wanted to depend on capillary action to pull this water away from my glass and into the coaster. For this reason, my design has space beneath the surface to collect this condensate. I tried some other patterns, including concentric rings/circles, but this wasn't so good for paper cups, which have a paper-thin ring at the bottom which would get stuck, or worse, cause the cup to fall over.

Then, I decided to fire up [Structure Synth](http://structuresynth.sourceforge.net/) to make a new pattern which avoided this issue and still provides the required sucking power of capillary action, and is also a lot more pleasing to the eye. This also happens to be the first 3D print I've seen that uses Structure Synth for a more practical use, rather than making abstract art pieces =)

In order to get the 2-tone drink pad (inner tray), I added [M600](http://marlinfw.org/docs/gcode/M600.html) to my gcode to trigger a filament change starting at the 4.2mm layer.

As witnessed with the blue/white photograph, this model is pretty cool with temperature sensitive filaments. When you set a hot drink on it, the color turns from blue to white. In this example, I'm using Amolen filament, which printed perfectly onto my usual Amazon Basics white the first time (and every time).

I've also made one with TPU (flexible filament) for the inner tray. This makes for a nicer sound when setting your drink onto the tray, but I understand that TPU absorbs moisture, which is great for a coaster, but may lead to break-down of the tray's structure. Also, the stringiness of that print gave it a sub-standard appearance.

The outer tray has a 0.1mm tolerance which is perfect for my printer. If you struggle to get the inner tray to fit within the outer, I recommend scaling the X and Y axes of the outer tray a little to widen the tolerance. (E.g., If you need 0.2mm clearance, use a scale factor of 1.0013 for both X and Y, and so on.)

# Print Settings

Printer Brand: Prusa
Printer: I3 MK3S
Rafts: No
Supports: No
Resolution: Mixed
Infill: 20%
Filament_brand: Amazon Basics / Amolen
Filament_color: Any color you like!
Filament_material: PLA

Notes: 
I uses 0.1mm layers on the Outer Shell, and 0.2mm layers on the Inner Tray.