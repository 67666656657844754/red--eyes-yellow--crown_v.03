extends Node

const SAVE_PATH = "user://savegame.json"

var clicks: int = 0

func save_game():
	var data = {"clicks": clicks}
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	file.store_string(JSON.stringify(data))
	file.close()

func load_game():
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		var data = JSON.parse_string(file.get_as_text())
		file.close()
		if data:
			clicks = data.get("clicks", 0)


