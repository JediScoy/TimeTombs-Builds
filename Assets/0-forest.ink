#title: Wandering in the Forest
#author: Master Scoy

INCLUDE OriginsGlobalVariables.ink
INCLUDE 5RoomDungeon


// STORY OUTLINE
VAR Season0 =           "WANDERING IN THE FOREST"
VAR S0Prologue =        "THE FOREST"
VAR S0EpisodeOne =      "AWAKE IN THE WOODS"
VAR S0EpisodeTwo =      "CROSSROADS"
VAR S0EpisodeThree =    "THE VILLAGE"
VAR S0EpisodeFour =     "THE BLUE MUG"
VAR S0EpisodeFive =     "HABITS OF MIND"
VAR S0Epilogue =        "Epilogue"

// AUDIO
// <div align="center"><audio src="http://www.regioscientiae.com/files/theme/fx-valleys.mp3" controls autoplay loop></div>

->StartMenu0
=== StartMenu0 ===
START MENU
    + {not S0Preface} [Preface]
        ->S0Preface
    + [PRESS START]
        ->S0Pro
    + [{S0EpisodeOne}]
        -> S0Ep1
    + [{S0EpisodeTwo}]
        -> S0Ep2
    + [{S0EpisodeThree}]
        -> S0Ep3
    + [{S0EpisodeFour}]
        -> S0Ep4
    + [{S0EpisodeFive}]
        -> S0Ep5
    -> DONE

===Inventory===
You have {food}.
You have {weapons}.
You have {armor}.
You have {items}.
    + [BACK]
        ->S0Ep1

    
=== S0Preface ===
#audio: fx-valleys
#audio: fx-valleys
PURPOSE OF ORIGINS SERIES:
- {CYOAPurpose}
- OBJECTIVES FOR "{Season0}":
\* Content 
\* Content
\* Content
\* Content
\* Habits of Mind
    + [next]
- WORLD OF REGIO SCIENTIAE:
- {WorldSetting}
    + [next]


- FIRST PUBLISHED: 
- LAST UPDATED:
    +[Ω]
        ->StartMenu0
    + NPCs & MONSTERS (Spoliers)
    - Are you sure?
        ++ [No]
            ->StartMenu0
        ++ Yes
        -- NPC's ->NPCs
        
    
->DONE

=== S0Pro ===
{S0Prologue}
Yellow rays of light shoot through the dense deciduous forest as the sun just starts peaking over the horizon. Morning birds call out. Squirrels and other little critters scurry about their business.
    +[Ω]
        ->StartMenu0
    +[NEXT EPISODE]
        ->S0Ep1
->DONE

=== S0Ep1 ===
{S0EpisodeOne}
You awake in the woods. You feel {~chilled|sweaty} and have {~an aching head|sore ribs|an aching neck}. Its appears you're completely alone.
   + {inventory < 1} [Check your inventory]
    -- (inventory)
        -- You have {food}.
        -- You have {weapons}.
        -- You have {armor}.
        -- You have {items}.
        ++ [...]
    + [Stumble out into a path and start walking]
        ->S0Ep1_END
    + [Sit tight and wait for help]
        -- You opt to sit tight and wait for help, but after a few hours no one comes along. You're getting more hungry and unconformable. It would seem no hero will be rescuing you; it's up to you.
    - You decide to get up and start walking.
    ->S0Ep1_END
    
 =S0Ep1_END
Once you get your footing on the path its an easy walk. You travel less than {~a quarter-mile|a half mile|a mile} before coming to a crossroads.
    +[Ω]
        ->StartMenu0
    + [NEXT EPISODE]
        ->S0Ep2
->DONE

== S0Ep2 ==
// CROSSROADS
{S0EpisodeTwo}
An overgrown single-track trail snakes westwards towards a dark foreboding tower. Probably less than a day's march. To the east, a well worn path cuts through the forest.
    + {not ForestPath} [Head east on the forest path]
        ->ForestPath
    + {ClunCastlePath} {ForestPath} You take a few moments to consider your choices.
    -- Now that you've had a chance to calm your mind, you're feeling optimistic about the eastern the path.
    ++ [next] ->VillagePath
    + {not ClunCastlePath} [Trek west to the dark tower]
        ->ClunCastlePath
->DONE

= ClunCastlePath
- Stones have fallen and the place is clearly abandoned.
- Besides the occasional bushwhacking the walk isn't too difficult and soon you approach the dark tower’s main gate.
- Stones have fallen around it.
    + [The place is clearly abandoned.]
    - At least you <i>thought</i> it was abandoned. The Drow warrior slips from a shadowy side entrance. 
        + [Fight]
        + [Flee]
- Blades move so fast they are a blur. You have no time to react. This quickly ends your otherwise pleasant walk.
        + [next]
            ->Death
->DONE

= ForestPath
- You walk down the forest path for a few minutes. A short while later a group of bandits rushes out onto the path.
- The {~five|six|seven|eight} bandits are wearing red bandanas and loose gray clothing. Two of them are dual weilding daggers with the remainder carrying short swords.  
    + [Fight]
    -- You attempt hand-to-hand combat, but you're no match for them. Perhaps if you had a weapon, tool, or had been training you might stand a chance. Unfortunately you don't.
        ++ [next]
            ->Death
    + [Flee]
    -- You attempt to flee, but you're caught. Perhaps if you had a weapon, tool, or had been training you might stand a chance. Unfortunately you don't. You're no match for them.
    ++ [next]
            ->Death
->DONE

= VillagePath
- Not long after midday a friendly farmer offers you a ride in {~his|her} {~turnip|carrot|potato} cart towards the nearest village.
The forest comes to a clearing and opens to village.
// + [Go towards the village] -> Ep4
// + [Go back west] -> CanisVilla.leave_early

    +[Ω]
        ->StartMenu0
    +[NEXT EPISODE]
        ->S0Ep3
->DONE

== S0Ep3 ==
{S0EpisodeThree}
- A small village lies before you. The village center is loosely surrounded by a variety of stout timbered buildings. You are greeted by a weathered signpost <i>Canis Villa</i>.
    + [Enter the village]
- You walk the main path between two buildings into the village center. It opens to a grassy courtyard.
    -> courtyard_views

= courtyard_views
    + [Looking to the south side] -> sign
     // *[Looking to your right] Apothecary
     // *[Looking to your left] 
     // *[Looking to the eastern farside of the courtyard] Path leading away from town and black
     // *[Looking along the northern side] Blacksmith shop
     + [Walk farther into the courtyard] -> courtyard1
 
= courtyard1
You walk into the courtyard, but nothing seems to be going on there. Most people are either coming or going from a large inn on the southern side.
    + [Head towards the inn]
        -> sign
    // + [Leave the village to the west] ->leave_early

= leave_early
You decide the village is not for you. You head back west. It takes much longer without a ride, but you come to the crossroads again.
    // + You continue west. -> ClunCastle.early
    +[Ω]
        ->StartMenu0

= sign
 A hanging sign with a dark blue mug above catches your eye. An inscription along the bottom reads "Drink from the cup of knowledge." This looks like a place to find some answers.
    + [Enter the Blue Mug]
    - 
    +[Ω]
        ->StartMenu0
    +[NEXT EPISODE]
        ->S0Ep4

== S0Ep4 ==
{S0EpisodeFour}
- You enter and look around "The Blue Mug." Its a basic, two story wooden inn and tavern with a bar and dining on the first floor. Worn stairs lead above to rooms. The decor is simple and slighty dingy, but of stout timber material.
    + [Observe the occupants.]
-  The inn and tavern could be a metaphor for most of the patrons: simple, slighty dingy, and stout frame.
    + [Closer observation]
- A few mercenaries and traveling merchants are also sitting around the dining area, but keeping to themselves.
 - The people look beaten down. This community needs helps. 
    + [...the kindess of strangers.]
- Helping others is the right thing to do though there are times when testing one's own abilities is necessary. 
    + The serving maid comes over and interrupts your thoughts.
- "Hi! My name is {ServingMaid}. What can I get you?
    + You: "What good food and drink do you have?"
- {ServingMaid}: "Today we're cooking up {~roasted boar|chicken|vegetables}"
    + You: "That sounds good"
    + You: Not what you were hoping for, but reply "OK, I'll have some." 
- The meal is good and quickly finish eating.
    + You: "I am interested in going on adventures. Where might I prepare for future adventures?"
- {ServingMaid}: "I reckon you want to seek a Master trainer just east of town. The King's army rarely makes it to small villages like ours, so we've had to learn to protect ourselves." she says with pride.
    + You: "What can a Master do?"
- {ServingMaid}: "All villages with Training grounds will have at least one Master, some have two or more. Often other trainees can help you in the Training grounds if the Masters are busy."
    + [next]
- "You must hone your skills if you plan on traveling in this area of the realm. Training and practicing one's skills before taking part in Adventures or attacking Bosses is always a good idea" she says.
    +[Ω]
        ->StartMenu0
    +[NEXT EPISODE]
        ->S0Ep5
->DONE

== S0Ep5 ==
{S0EpisodeFive}
- You know to be useful to the community - and not die every five minutes - you need proper training and gear. Even with the best gear and Master trainers, its going to take hard work on your part. Having enthusiasm, maximum effort, and focus are a few of the mindsets you'll need to be successful.
    + [next]
- It is rumored that these Masters can grant access to a magical library in the ether. This magical library contains more information than any of the worldly libraries. It is said to contain books that can be summoned with special instruments. You'll have access to special scrolls, training strategies, and the ability to battle Bosses of varying levels.
    + [next]
- Keep in mind that a Master Jedi is a <i>guide</i> only. <i>You</i> must lead your own learning. You must ask for help and clarification. Great tools and gear mean nothing if you are unwilling to pick them up and use them properly.
    + [next]
- That is all ...for now. You hear whispers of troubling things. You suspect that very soon you may be called upon to go adventuring.
    + [next]
- CALL TO ACTION
- Find a tool that can connect to the ether.
- Enable the tool using your personal identification.
- Find the nearest Master and ask for the access code to the library in the ether. Gaining access to one of the librarys in the ether will grant you access to others, so your sequence of actions is important.
You are not the most talented of adventurers YET, but you are PERSISTENT. A positive, can-do attitude could make the difference.
The coming weeks are going to be a challenge. Growth in mind and muscle will be needed.



-> END

=== Death ===
-
    + {Death < 2} You have died.
        -- Do not fear death weary adventurer. It is possible to have your life renewed by one of the kind paladins or clerics that wander these lands. They have a way of knowing if you are worthy of a 1-UP. 
        ++ Tennessee Williams quote:
        --- "I have always depended on the kindess of strangers."
        +++[next]
        ---...
        +++[next]
        ---...
        +++ Your bones have been found
        ---...
        +++[next]
        ---...
        +++ Do or do not, there is no try. Commit yourself to making new and hopefully better choices
        ---
        +++ [next]
            ->S0Ep1
    + {Death > 1} You have died. Again.
        -- Do not fear death weary adventurer. The kindess of strangers has already saved you at least once. Sometimes life's quests knock you down.
        ++ Winston Churchill:
            --- Never give up.
            +++ [next]
            --- Never give up.
            ++++ [next]
            ---- Never give up.
            +++++ [next]
        ++ Chumbawamba:
        -- I get knocked down,<>
        +++[next]
        --- but I get up again.
        --- I get knocked down,<>
        +++ [next]
        ---- but I get up again.
        ++++ [next]
-
        ->S0Ep1
// Soon enough your bones will be found and your life renewed.
// You are demostrating PERSISTENCE and GRIT. Kind paladins and clerics wander these lands. Soon enough your bones will be found and your life renewed.
        ->S0Ep1
->DONE

 // Explore the quaint village to discover, Starter Set, your first Quest. Like all others, this Quest has multiple tasks to accomplish. Generally each quest has Training, an Adventure, a Boss, and a Boss Elite. An adventure may have one to four parts within it. Read each description of the required tasks carefully. Ask members of your Party for assistance and ask Jedi Master Scoy for clarification as needed.

// INVENTORY VARIABLES
VAR food =          "no food"
VAR weapons =       "no weapons"
VAR armor =         "no armor"
VAR items =         "no special items, not even flint and steel"

// NPCS
VAR Farmer1 =           "James"
VAR Farmer2 =           "Robert"
VAR Villager1 =         "Dan"
VAR Boy1    =           "Timothy"
VAR Girl1   =           "Becca"
VAR BanditStats =      "<b>BANDIT</b> AC: 12 HP: 11"
VAR BanditAction1 =     "<b>Scimitar</b> +3 to hit, reach 5 ft., one target. Hit: 4 (1d6 + 1) slashing damage."
VAR BanditAction2 =     "<b>Light Crossbow</b> +3 to hit, range 80 ft./320 ft., one target. Hit: 5 (1d8 + 1) piercing damage."
VAR Drow =              ""

// MONSTERS