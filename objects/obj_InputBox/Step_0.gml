if (position_meeting(mouse_x, mouse_y, self)) 
{
	// If the mouse is over the text box.
	if (mouse_check_button_pressed(mb_left)) 
	{
		// If we click on the text box.
		canWrite = true; // Then we can write into the text box.
	} 
}	else 
	{
		if mouse_check_button_pressed(mb_left) 
		{
			//If we click on a place other than the text box.
			canWrite = false; // We can't write.
			keyboard_string = "";
		}
	}


if (canWrite) {
	// If we can write in our text box.
	cursor = "|"; // Set our cursor.
	text = string_copy(keyboard_string, 1, 15); // set our text to what we are typing with our keyboard
												// 15 is max length, can use varable instead such as limit = 15;
	
	if (keyboard_check_pressed(vk_enter)) {
		canWrite = false; // Once enter is pressed no more writing.
	}
} else {
	cursor = ""; //	If we can't write into the text box then there is no need for cursor.
}