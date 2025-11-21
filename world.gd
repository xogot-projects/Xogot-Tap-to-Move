extends Node2D

@onready var press = preload("res://Misc/Press.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		var new_press = press.instantiate()
		new_press.global_position = event.global_position
		add_child(new_press)