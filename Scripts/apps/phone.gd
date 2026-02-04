extends Control

@onready var messages_app = $"Messages App"

func _on_messages_app_pressed():
	get_tree().change_scene_to_file("res://Scenes/apps/messages.tscn")
