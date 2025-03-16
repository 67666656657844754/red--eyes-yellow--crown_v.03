extends CharacterBody2D  # Для Godot 4.x

@export var speed = 300
@onready var an_menu = $AnimationPlayer
@onready var animated_sprite = $AnimatedSprite2D  # Зберігаємо вузол анімації

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	# Отримуємо напрямок руху з клавіш
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		animated_sprite.flip_h = false  # Персонаж дивиться вправо
	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1
		animated_sprite.flip_h = true  # Персонаж дивиться вліво

	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	elif Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Рух персонажа
	velocity = direction.normalized() * speed
	move_and_slide()

	# Відтворення анімацій
	if velocity.length() > 0:
		animated_sprite.play("pl_an")  # Вмикаємо анімацію ходьби
	else:
		animated_sprite.play("pl")  # Вмикаємо анімацію бездіяльності


func _on_button_pressed() -> void:
	an_menu.play("menuu") 


func _on_mmenu_pressed() -> void:
	TrannsitionScreen.transition()
	await TrannsitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://scene/menu_2d.tscn") 


func _on_return_pressed() -> void:
	an_menu.play("menuu_2") 


func _on_exit_pressed() -> void:
	an_menu.play("menuu_2")
	await an_menu.animation_finished
	an_menu.play("y-n") 


func _on_nouou_pressed() -> void:
	an_menu.play("RESET")
	await an_menu.animation_finished 
	an_menu.play("menuu")


func _on_yeees_pressed() -> void:
	get_tree().quit()


func _on_keyboart_pressed() -> void:
	an_menu.play("menuu_2")
	await an_menu.animation_finished
	an_menu.play("s") 


func _on_save_pressed() -> void:
	an_menu.play("menuu_2")
	await an_menu.animation_finished
	an_menu.play("s")


func _on_butto7n_pressed() -> void:
	an_menu.play("RESET")


func _on_loadsave_pressed() -> void:
	an_menu.play("menuu_2")
	await an_menu.animation_finished
	an_menu.play("s")


func _on_setting_pressed() -> void:
	an_menu.play("menuu_2")
	await an_menu.animation_finished
	an_menu.play("s")  
# Replace with function body.
