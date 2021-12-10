function onCreate()
	-- background shit
	makeLuaSprite('forest', 'forest', -600, -300);
	setScrollFactor('forest', 0.9, 0.9);
	
	makeLuaSprite('scrap', 'scrap', -650, 600);
	setScrollFactor('scrap', 0.9, 0.9);
	scaleObject('scrap', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('void', 'void', -125, -100);
		setScrollFactor('roomlight_left', 0.9, 0.9);
		scaleObject('roomlight_left', 1.1, 1.1);
		
		makeLuaSprite('void', 'void', 1225, -100);
		setScrollFactor('void', 0.9, 0.9);
		scaleObject('void', 1.1, 1.1);
		setProperty('void.flipX', true); --mirror sprite horizontally

		makeLuaSprite('void', 'void', -500, -300);
		setScrollFactor('void', 1.3, 1.3);
		scaleObject('void', 0.9, 0.9);
	end

	addLuaSprite('forest', false);
	addLuaSprite('scrap', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end