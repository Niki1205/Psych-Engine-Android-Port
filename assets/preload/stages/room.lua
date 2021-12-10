function onCreate()
	-- background shit
	makeLuaSprite('room', 'room', -600, -300);
	setScrollFactor('room', 0.9, 0.9);
	
	makeLuaSprite('roomfloor', 'roomfloor', -650, 600);
	setScrollFactor('roomfloor', 0.9, 0.9);
	scaleObject('roomfloor', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('roomlight_left', 'room_light', -125, -100);
		setScrollFactor('roomlight_left', 0.9, 0.9);
		scaleObject('roomlight_left', 1.1, 1.1);
		
		makeLuaSprite('roomlight_right', 'room_light', 1225, -100);
		setScrollFactor('roomlight_right', 0.9, 0.9);
		scaleObject('roomlight_right', 1.1, 1.1);
		setProperty('roomlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('chromokey', 'chromokey', -500, -300);
		setScrollFactor('chromokey', 1.3, 1.3);
		scaleObject('chromokey', 0.9, 0.9);
	end

	addLuaSprite('room', false);
	addLuaSprite('roomfloor', false);
	addLuaSprite('roomlight_left', false);
	addLuaSprite('roomlight_right', false);
	addLuaSprite('chromokey', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end