extends Node2D

var xscore  = 0
var yscore = 50


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$work.text = str(xscore,"/", yscore)
	


func _on_work_pressed() -> void:
	xscore += 1
	if xscore == yscore:
		pass
		 # Replace with function body.
  
