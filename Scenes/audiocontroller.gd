extends Node2D


# Called when the node enters the scene tree for the first time.

@export var mute : bool = false

func _ready():
	if not mute:
		print("not mute")
# Called when the node enters the scene tree for the first time.
func play_oceanbackground():
	if not mute :
		$oceanbackground.volume_db=-18
		$oceanbackground.play()
		
func play_click():
	if not mute :
		$click.play()
		
