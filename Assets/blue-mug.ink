/**************************************************
*   
* The Blue Mug 
*
**************************************************/

//  DESCRIPTION
//  The inn is a large single storey timber framed building, with well-made wooden tables and chairs. Accomodations consist of several large rooms with beds and straw mattresses and a mezzanine with several wooden cots. The inn is widely known for its adventuring patrons.
//  The innkeeper is an old male dwarf named Tari. He is a retired assassin, and keeps a small arsenal of exotic weapons and poisons.

// PATRONS
//  Hilda: Female Human Fighter, Good. Hilda has red hair and gray eyes, and prominent ears. She is brave and inquisitive. Hilda seeks a company of adventurers to thwart the monstrous plan of Ulfang the Black.
//  Arir: Male Dwarf Fighter, Neutral. Arir has straight blonde hair and brown eyes, and large ears. He wears chain mail and wields a bastard sword and long bow. Arir seeks a company of adventurers to protect him from the assassins of Vaces the Mighty.
//  Urdul: Male Dwarf Cleric, Evil. Urdul is short, with brown hair and dark gray eyes. He is thoughtless and combative. Urdul seeks a company of adventurers to steal a caravan of exotic goods from a rival.
//  Ridget: Female Halfling Thief, Evil. Ridget is tall and stout, with white hair and green eyes. She is sadistic and haughty. Ridget seeks a company of adventurers to rescue the lady Erris from the goblins of the Bunulbun Crags.
//  Lava Bolgee: Female Halfling Druid, Neutral. Lava has brown hair and brown eyes, and large ears. She wears leather armor and wields a hammer. Lava is a practiced juggler.
//  Enderwel: Female Elf Fighter, Good. Enderwel has red hair and sharp brown eyes, and a flat nose. She wears banded mail and wields a flail.
//  Sarrey Masell: Female Human Illusionist, Good. Sarrey is overweight, with white hair and sharp brown eyes. She wears white robes and wields a quarterstaff and sling. Sarrey is cheerful and truthful.
//  Garman: Male Human Ranger, Good. Garman has golden hair and soft gray eyes, and a thin moustache. He wears scale mail and wields a flail and javelins. Garman seeks only fame and glory.


-> WelcomeToTheBlueMug

=== WelcomeToTheBlueMug ===

+ "Welcome weary adventurer!"-> StepInside

=StepInside
<> says a stout, bubbly serving maid as you step inside the Blue Mug.
The smells of {~stew|wood} and tilled earth swirl around you. The lighting from the small windows is dim but the glow of oil lamps makes it comforting. There are  no hushed tones of secrecy.  Conversations are spoken openly in strong, friendly voices. You sense that any of the small clusters of people would welcome you into their story.

When the serving maid comes over you ask about Quests.

She asks, what sort of Quests you're interested in?
You tell her you're interested


+ [Ask about Quests?] -> Origins

= CurrentQuests
+ [BACK TO START] -> WelcomeToTheBlueMug
->END

==Origins
Quest 1 is currently underway!
+ [BACK TO START] -> WelcomeToTheBlueMug
->END

==TimeTombs
Quest 1 is currently underway
+ [BACK TO START] -> WelcomeToTheBlueMug
->END

==LostWorld
This campaign has ended

+ [BACK TO START] -> WelcomeToTheBlueMug
->END

=== Rumors ===
* Ravens have been gathering at the Sanctuary of Angels. ->DONE
* An evil curse has befallen the village of Hahyrst. ->DONE
* A star has fallen into the Chuka Veldt. ->DONE
* Ghosts walk the ramparts of the Fortress of Dono during the full moon. ->DONE
* The old monastery on Bone Hill is haunted by ghosts. ->DONE
* Ghosts walk the ramparts of the Bastion of Zarahuu the Demonic during the full moon.->DONE
-> END
