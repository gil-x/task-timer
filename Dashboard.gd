extends Control

const STOPWATCH = preload("res://Stopwatch.tscn")

func _ready():
	pass # Replace with function body.


func _on_Create_pressed():
	if not $Panel/HBoxContainer/Input.text in ["Activity", ""]:
		print("OK")
		var stopwatch = STOPWATCH.instance()
#		stopwatch/name.text = $Panel/HBoxContainer/Input.text
		$Panel/Container.add_child(stopwatch)
