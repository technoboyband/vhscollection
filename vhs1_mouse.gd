extends Node2D

var initialY: float
var tween: Tween
var isRaised = false

func _ready() -> void:
	initialY = $vhs1.position.y

func _on_area_2d_mouse_entered() -> void:
	if isRaised:
		return
	if tween:
		tween.kill()
	tween = get_tree().create_tween() 
	tween.tween_property($vhs1, "position:y", initialY - 10, .2)
	isRaised = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	if !isRaised:
		return 
	if tween:
		tween.kill()
	tween = get_tree().create_tween()
	
	tween.tween_property($vhs1, "position:y", initialY, .2)
	isRaised = false
	pass # Replace with function body. Replace with function body.
