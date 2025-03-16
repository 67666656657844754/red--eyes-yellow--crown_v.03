extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_minigame_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/minigame_2d.tscn") # Rep
	 # Replace with function body.


func _on_minigame_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/mg_2d.tscn")
	 


func _on_node_2d_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/node_2d.tscn")# Replace with function body.
