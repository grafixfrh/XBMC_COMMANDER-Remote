



local keyboard = libs.keyboard;

local win = libs.win;--@help Launch XBMC application
actions.launch = function()
	if OS_WINDOWS then
		os.start("%programfiles(x86)%\\XBMC\\XBMC.exe");
	end
end

--@help Start playback
actions.play = function()
	keyboard.stroke("P");
end

--@help Pause playback
actions.pause = function()
	keyboard.stroke("P");
end

--@help Toggle play/pause
actions.play_pause = function()
	keyboard.stroke("P");
end

--@help Raise volume
actions.volume_up = function()
	if(OS_WINDOWS)
		then
		keyboard.stroke("oem_plus");
	else
		keyboard.stroke("plus");
	end
end

--@help Lower volume
actions.volume_down = function()
	if(OS_WINDOWS)
	then
		keyboard.stroke("oem_minus");
	else
		keyboard.stroke("minus");
	end
end

--@help Toggle mute volume
actions.volume_mute = function()
	keyboard.stroke("volume_mute");
end

--@help Navigate up
actions.up = function()
	keyboard.stroke("up");
end

--@help Navigate left
actions.left = function()
	keyboard.stroke("left");
end

--@help Navigate down
actions.down = function()
	keyboard.stroke("down");
end

--@help Navigate right
actions.right = function()
	keyboard.stroke("right");
end

--@help Select current item
actions.select = function()
	keyboard.stroke("return");
end

--@help Stop playback
actions.stop = function()
	keyboard.stroke("X");
end

--@help Play previous item
actions.previous = function()
	keyboard.stroke("oem_comma");
end

--@help Play next item
actions.next = function()
	keyboard.stroke("oem_period");
end

--@help Rewind
actions.rewind = function()
	keyboard.stroke("R");
end

--@help Fast forward
actions.fast_forward = function()
	keyboard.stroke("F");
end

--@help Navigate back
actions.back = function()
	keyboard.stroke("back");
end







--@help mainmenu
actions.backhome = function()
	keyboard.stroke("Escape");
end--@help metro
actions.nometro = function()
	keyboard.stroke("Alt" ,"F4", "Alt");
end--@help metro
actions.netflixstart = function()
	keyboard.stroke("lctrl" ,"Shift", "Home" , "lctrl");end--@help Launch Netflix Application
actions.switchtowait3sec = function ()
	win.close("XBMC.exe"); win.switchtowait(3000); keyboard.stroke("lctrl" ,"Shift", "Home" , "lctrl");	
	end
--@help mymovies
actions.moviefile = function()
	keyboard.stroke("E");
end--@help mymusic
actions.musicfile = function()
	keyboard.stroke("B");
end--@help mytv
actions.tvfile = function()
	keyboard.stroke("J");
end--@help mypicture
actions.picturefile = function()
   keyboard.stroke("K");
end--@help kidsshow
actions.kidsfile = function()
   keyboard.stroke("H");
end--@help favourite
actions.myfavourites = function()
   keyboard.stroke("End");
end--@help power
actions.powermenu = function()
   keyboard.stroke("S");
end
