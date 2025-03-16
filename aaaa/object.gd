extends Area2D

@export var butt: Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if butt:
		butt.visible = false

# Called when another Area2D enters this area.
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("$../CharacterBody2D"):  
		if butt:
			butt.visible = true
