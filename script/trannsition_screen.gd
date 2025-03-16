extends CanvasLayer

signal on_transition_finished

@onready var color_rect = $ColorRect
@onready var animation_player = $AnimationPlayer

func _ready() -> void:
	color_rect.visible = false
	animation_player.animation_finished.connect(_on_animtion_fished)
	


	

func _on_animtion_fished(anim_name):
	if anim_name == "fable_to_black":
		on_transition_finished.emit()
		animation_player.play("fable_to_normal")
	elif anim_name == "fable_to_normal":
		color_rect.visible = false
 
	


func transition():
	color_rect.visible = true
	animation_player.play("fable_to_black")	
