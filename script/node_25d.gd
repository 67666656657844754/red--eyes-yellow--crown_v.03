extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



	
	 # Replace with function body.


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/minigame_menu.tscn")
   # Replace with function body.


func _on_my_pc_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/my_pc.tscn") # Replace with function body.


func _on_web_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/web.tscn") # Replace with function body.


func _on_off_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/game.tscn")
	  # Replace with function body.
