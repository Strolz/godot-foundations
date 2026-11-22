extends Sprite2D

var normal_speed := 600.0
var max_speed := normal_speed
var boost_speed := 1500.0

func _process(delta: float) -> void:
	var direction := Vector2(0, 0)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_left", "move_right")

	if direction.length() > 1.0:
		direction = direction.normalized()
