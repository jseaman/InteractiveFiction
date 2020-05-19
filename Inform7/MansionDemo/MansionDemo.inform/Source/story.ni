"MansionDemo" by JS

Outside_The_Mansion is a room. "You are outside of a mansion belonging to Ray Jones. This place looks like it was taken from a video game. You can only go North into the house".

The printed name of Outside_The_Mansion is "Outside the Mansion".

The Mansion is here. It is scenery. The description of The Mansion is "This place is enormous. It must have cost millions of dollars".

Mansion_Hallway is a room. "You find yourself inside the mansion. It looks like no one is in here. A staircase lies in front of you. There is a room upstairs. A dining room is west of here. The living room is east of here". The printed name of Mansion_Hallway is "Mansion Hallway".  It is north of Outside_The_Mansion.

The rug is in Mansion_Hallway. "There is a beautiful rug spread out in front of you". The rug is fixed in place.
The description of the rug is "There seems to be a small bulge. Try looking under the rug".

Underlying relates various things to one thing. The verb to underlie means the underlying relation. The verb to be under means the underlying relation. The verb to be beneath means the underlying relation.

The screwdriver is a thing. The screwdriver is under the rug.

Instead of looking under a thing which is underlaid by something: 
	say "You find [the list of things which underlie the noun] under the rug! It is now in your possession";
	now every thing which underlies the noun is carried by the player; 
	 now every thing which underlies the noun does not underlie the noun.

The table is a supporter.  "There is a small table right next to the stairs.".
The table is in Mansion_Hallway.

The Severed Finger is a thing. The description of Severed Finger is "Yuck, a severed finger! I wonder who was the previous owner".
The Severed Finger is inside the box. 

The box is a container. The description of the box is "This box seems to be closed shut and there is no apparent way to open it.". The box is closed, locked and fixed in place.

Chess piece is a kind of thing.
The king, the queen and the knight are chess pieces.

The description of king is "king chess piece".
The description of queen is "queen chess piece".
The description of knight is "knight chess piece".

Missing Pieces is  a list of chess pieces that varies. Missing Pieces is {king, queen, knight}.

The chess set is a supporter. 

Instead of examining chess set:
	say "The chess set seems to be wired to the locked box, [Missing Pieces with definite articles] pieces are missing from the layout".
	
The chess set and the box are on the table.

Instead of putting something on chess set:
	if noun is a chess piece:		
		now the noun is fixed in place;
		if noun is listed in Missing Pieces:
			remove noun from Missing Pieces;
		continue the action;
	otherwise:
		say "You can't put [noun] on the chess set".

After putting something on chess set when the number of entries in Missing Pieces is 0:
	say "After placing the final chess piece in place you hear a click. The box is now unlocked";
	now the box is unlocked.
	
The Steel Gate is above Mansion_Hallway and below Main_Bedroom. "There is a steel gate on top of the staircase. There is a fingerprint scanner next to it. It will only open with the right fingerprint.". Steel Gate is a door and locked.

Instead of opening Steel Gate:
	if the player is carrying the Severed Finger:
		say "You place the bloody severed finger on the fingerprint scanner. You hear a click";
		now Steel Gate is unlocked;
		continue the action;
	otherwise:
		say "There is no other apparent way of opening it beside using the fingerprint scanner".
		
The description of Steel Gate is "The massive steel gate is closed shut. Ray Jones must be very paranoid in order to own a door as secure as this one. The only way of opening it is using a valid fingerprint".

Main_Bedroom is a room. 
		
After going to Main_Bedroom:
	end the story saying "Congratulations! You won". 
	
Dining_Room is a room. "You have found your way into the dining room. There is a huge table in the middle of the room. The kitchen is north of here, the main hallway is west of here.". It is west of Mansion_Hallway.

China Curio is a thing.  "There is a big china curio furniture with a single drawer on the right". China Curio is in Dining_Room.
China Curio is fixed in place.

The drawer is part of China Curio. The drawer is a container. The drawer is closed and openable.

The UV Lamp is a container. The description of UV Lamp is "you notive a small notch in form of a cross under the UV Lamp".
The UV Lamp is inside the drawer.

The batteries is a thing.

Instead of taking UV lamp:
	if the player is not carrying batteries:
		say "It's of no use, you are not carrying any batteries to operate it.";
	otherwise:
		say "You place the batteries in the UV Lamp and take it with you";
		now the batteries is in the UV Lamp;
		continue the action.
		
The grate is a container. "You notice there is a small grate on the floor". The grate is closed, openable, transparent and fixed in place. 
The grate is in Dining_Room.

The king is inside the grate.

Instead of opening grate:
	if the player is carrying the screwdriver:
		if the grate is closed:
			say "Using the screwdriver you open the grate";			
			now the grate is open;	
		otherwise:		
			continue the action;
	otherwise:
		say "You need something to remove the screws".
		
Kitchen is a room. "The kitchen is beautiful and clean. It still smells like food. The dining room is south of here". Kitchen is north of Dining_Room.

The microwave oven is a container. "There is a microwave oven here". The microwave oven is closed, locked, transparent and fixed in place. The microwave oven is in the Kitchen.

The queen is inside the microwave oven.

Instead of examining or opening microwave oven:
	if microwave oven is unlocked:
		continue the action;
	otherwise:
		say "There is a numeric panel";
		now the command prompt is "Enter number: ".

After reading a command when the command prompt is "Enter number: ":
	if the player's command matches "6969" :
		say "You hear a ding and a click. The microwave oven is now unlocked";
		now the microwave oven is unlocked;
	otherwise:
		say "Wrong attempt!";
	now the command prompt is ">";
	reject the player's command.

The whiteboard is a supporter. "There is a whiteboard next to the microwave oven". The whiteboard is in the kitchen.

Instead of putting something on the whiteboard:
	if the noun is UV Lamp:
		if batteries is in UV Lamp:
			say "You put the UV Lamp on the whiteboard.";
			now the UV Lamp is on the whiteboard;
			try examining the whiteboard;
		otherwise:
			say "It's of no use without any batteries";
	otherwise:
		say "You don't need to put the [noun] on the whiteboard".

Instead of examining the whiteboard:
	if the UV Lamp is on the whiteboard and batteries is in the UV Lamp:
		say "You see the number 6969 under the purplish glow of the UV lamp";
	otherwise:
		say "There is nothing written on the whiteboard. However, you notice a cross shaped notch on the side of the whiteboard.".
	
The Living_Room is a room. "You are in the main living room. The main hallway is west of here.". The Living_Room is east of Mansion_Hallway.

The chimney is a thing. "You see a big chimney here". The chimney is a supporter. The chimney is in Living_Room.

The urn is a container. "There is a beautiful urn next to the chimney. The remains of someone dearest to Ray Jones perhaps?". The urn is closed, openable and fixed in place. The description of the urn is "Perhaps there is something inside". The urn is in Living_Room.

The batteries is inside the urn.

The knight is on the chimney.