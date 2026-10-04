extends Button

func _ready():
	self.pressed.connect(_on_pressed)

func _on_pressed():
	get_tree().change_scene_to_file("res://permainan/main.tscn")


func _on_keluar_2_pressed() -> void:
	pass 
