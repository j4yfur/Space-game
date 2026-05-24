function saveGame()
{
	//Save highscore
	var _file = file_text_open_write("Save.txt");
	
	file_text_write_real(_file, global.highScore);
	
	file_text_close(_file);
}

function loadGame()
{
	if (file_exists("Save.txt"))
	{
		//Load highscore
		var _file = file_text_open_read("Save.txt");
		
		global.highScore = file_text_read_real(_file);
		
		file_text_close(_file);
	}
	else
	{
		global.highScore = 0;
	}
}