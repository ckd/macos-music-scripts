-- Playcount
-- Dumb script to set a track's played count.

tell application "Music"
	
	set sel to selection of front browser window
	if sel is {} then
		display dialog "Nothing is selected." buttons {"Quit"} with icon 0
		return
	end if
	
	set newPlaycount to text returned of (display dialog "New Playcount:" default answer "0")
	
	repeat with i from 1 to (count of sel)
		set thisTrack to item i of sel
		set played count of thisTrack to newPlaycount
	end repeat
	
end tell

