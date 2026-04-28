extends Node2D



func _on_area_2d_mouse_entered() -> void:
	translate(Vector2(0, -10))  # same result
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	translate(Vector2(0, 10))  # same result
	pass # Replace with function body.
