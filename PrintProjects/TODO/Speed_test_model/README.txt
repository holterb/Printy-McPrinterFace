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


http://www.thingiverse.com/thing:3369642
Speed test model by Lolo95 is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

Speed test model for Anet A8 and Alfawise U20.

Here are 2 models I made to test the optimum print speed for the Anet A8 and the Alfawise U20. There are 2 models and the corresponding G-CODE. On model is thin, 0.8mm thick, with 2 layers of external walls. The other model is thicker, 2.8mm.
When printing the thin model with the Anet A8, we can clearly see the ghosting. The ghosting completly disapears on the thick model, with the exact print speed of the wall (?) If someone has a clue...

There are 8 different print speeds on the models from bottom to top, starting @ 40mm/s up to 106mm/s. 

As a result, the difference between the Anet A8 and the Alfawise U20 is not so important, surprisingly. On the thick model, the ghosting is more important on the U20 than the A8… but on the thin model, the ghosting on the A8 is very bad.

Concerning the speeds, it starts from 40. The outer wall is the speed/2, i.e. 20. The inner wall and the fill is are the written speed (40). The same rule applies on all the levels.

The Anet is way faster in the curve, where the Alfawise is "stuck" in processing G-Code and reaches a maximum speed (to be determined). As a result, the Anet is way faster than the Alfawise for these models, ans each time there are curves in the thing. This tells that the firmware of the Anet A8 is more efficient and fast than the Alfawise U20. And the print quality is very equivalent. 

The only mod on the Anet is the fan nozzle, other than that, it is the original. 
On the Alfawise, the mods are the classic ones: addition of the silent blocks, the TL-smoothers. Latest version of firmware 2.16

The G-CODE has been generated on Cura 3.6.0, and checked manually.