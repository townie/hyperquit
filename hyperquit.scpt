on ApplicationIsRunning(appName)
	tell application "System Events" to set appNameIsRunning to exists (processes where name is appName)
	return appNameIsRunning
end ApplicationIsRunning

if ApplicationIsRunning("HyperSwitch") then
	tell application "HyperSwitch"
		if it is running then
			quit
		end if
	end tell
end if

delay 2 -- Wait for HyperSwitch to close

tell application "HyperSwitch" to activate

