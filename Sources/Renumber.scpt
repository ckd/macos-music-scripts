-- Renumber
-- Dumb script to renumber track number by offset

tell application "Music"
	
	set sel to selection of front browser window
	if sel is {} then
		display dialog "Nothing is selected." buttons {"Quit"} with icon 0
		return
	end if
	
	set trackOffset to text returned of (display dialog "Track offset:" default answer "0")
	
	repeat with i from 1 to (count of sel)
		set thisTrack to item i of sel
		set thisTrackNumber to track number of thisTrack
		set track number of thisTrack to (thisTrackNumber + trackOffset)
	end repeat
	
end tell
