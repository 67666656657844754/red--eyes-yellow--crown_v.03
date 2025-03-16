extends CharacterBody2D

# Змінні
var speed = 100              # Швидкість руху ворога
var direction = 1            # 1 = вправо, -1 = вліво
var move_distance = 200      # Дистанція руху
var start_position = Vector2()

func _ready():
	start_position = position  # Запам'ятовуємо початкову позицію

func _physics_process(delta):
	# Рухаємо ворога в обраному напрямку
	velocity.x = speed * direction
	move_and_slide()

	# Перевірка, чи ворог пройшов задану відстань
	if abs(position.x - start_position.x) >= move_distance:
		direction *= -1        # Змінюємо напрямок

	# Перевірка на зіткнення з гравцем
  # Перезапуск сцени


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "$../Godot":  # Перевіряємо, чи ім'я об'єкта — Player
			get_tree().reload_current_scene()  # Replace with function body.
