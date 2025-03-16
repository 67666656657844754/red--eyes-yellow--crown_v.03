extends Node2D

@onready var my_menu_anim = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_2_pressed() -> void:
	
	get_tree().change_scene_to_file("res://scene/node.tscn") # Replace with function body.


func _on_button_3_pressed() -> void:
	TrannsitionScreen. transition()
	await TrannsitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://scene/uatex.tscn") # Replace with function body.


func _on_button_pressed() -> void:
	TrannsitionScreen. transition()
	await TrannsitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://scene/game.tscn") # Replace with function body.


func _on_exit_pressed() -> void:
	my_menu_anim.play("Exit")
	
	# Replace with function body.


func _on_seting_pressed() -> void:
	my_menu_anim.play("seting")
	  # Replace with function body.


func _on_close_set_pressed() -> void:
	my_menu_anim.play("seting_close")
	  # Replace with function body.


func _on_yes_pressed() -> void:
	get_tree().quit() # Replace with function body.


func _on_no_pressed() -> void:
	my_menu_anim.play("nExit")# Replace with function body.


func _on_en_pressed() -> void:
	pass # Replace with function body.


func _on_uk_pressed() -> void:
	pass # Replace with function body.
