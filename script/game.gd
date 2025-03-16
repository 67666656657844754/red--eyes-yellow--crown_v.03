extends Node2D


#@onready var dorr = $AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
	  # Add initialization code here if needed.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass  # Add frame-based logic here if needed.

# This function changes the scene when the first button is pressed.
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/node_22d.tscn")  # Change to a specific scene.

# This function plays an animation on the AnimatedSprite2D when the second button is pressed.
func _on_button_2_pressed() -> void:
	pass
	#$AnimatedSprite2D.play("revo_an")
	
	
func _an_stop() -> void:
	pass
	

	#TrannsitionScreen. transition()
	#await TrannsitionScreen.on_transition_finished

#func _on_exit_pressed() -> void:
	#get_tree().change_scene_to_file("res://scene/menu_2d.tscn") # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	TrannsitionScreen. transition()
	await TrannsitionScreen.on_transition_finished
	
	
	get_tree().change_scene_to_file("res://scene/game/game_2.tscn")
	  # Replace with function body.


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	TrannsitionScreen. transition()
	await TrannsitionScreen.on_transition_finished
	
	get_tree().change_scene_to_file("res://scene/game/game_1.tscn")# Replace with function body.
