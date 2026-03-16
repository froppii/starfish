extends Control

func _ready():
	if has_node("StartButton"):
		var btn = $StartButton
		# Godot 4: connect using a Callable
		btn.connect("pressed", Callable(self, "_on_StartButton_pressed"))

func _on_StartButton_pressed():
	var run_scene = "res://scenes/run/run.tscn"
	if get_tree().has_method("change_scene_to_file"):
		get_tree().change_scene_to_file(run_scene)
	else:
		get_tree().change_scene(run_scene)
