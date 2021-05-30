tell application "App Store" to activate
tell application "System Events" to tell process "App Store"
	set target_item to a reference to (menu item "Sign In" of menu 1 of menu bar item "Store" of menu bar 1)
	if target_item exists then
		click target_item
	 	error	
	end if
end tell