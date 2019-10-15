-- Ya just played yourself
-- Dumb script to increment play count of selected track by one and update the last played date.

tell application "Music"
	
	set sel to selection of front browser window
	if sel is {} then
		display dialog "Nothing is selected." buttons {"Quit"} with icon 0
		return
	end if
	
	repeat with i from 1 to (count of sel)
		set thisTrack to item i of sel
		set currentPlayCount to played count of thisTrack
		
		set played date of thisTrack to (current date)
		set played count of thisTrack to (currentPlayCount + 1)
	end repeat
	
end tell

