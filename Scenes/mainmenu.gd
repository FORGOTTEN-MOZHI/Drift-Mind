extends Control
@onready var fade: ColorRect = $fade


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fade.visible = true
	fade.modulate.a = 1.0  # start fully opaque
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 0.0, 2.0)  # fade to transparent over 3 seconds
	await tween.finished
	fade.visible = false
	
	
	


func fade_out():
	fade.visible = true
	fade.modulate.a = 0.0  # start transparent
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 1.0, 3.0)  # fade to opaque
	await tween.finished
	fade.visible=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_beginbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/scene2.tscn")
	Audiocontroller.play_click()
	
	
