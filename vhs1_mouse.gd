extends Node2D

var initialY: float
var tween: Tween
var isRaised = false

func _ready() -> void:
	initialY = $vhs1.position.y

func _on_area_2d_mouse_entered() -> void:
	if isRaised:
		return
	transformY(initialY - 10)
	isRaised = true

func _on_area_2d_mouse_exited() -> void:
	if !isRaised:
		return 
	transformY(initialY)
	isRaised = false

func transformY(newY: float):
	if tween:
		tween.kill()
	tween = get_tree().create_tween()
	tween.tween_property($vhs1, "position:y", newY, .2)
