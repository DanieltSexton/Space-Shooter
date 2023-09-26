extends Node

var score = 0
var lives = 0
var time = 0

func _ready ():
	randomize()
	rest()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("Quit"):
		get_tree().quit()


func update_lives(l):
	lives += l
	if lives < 0:
		get_tree().change_scene_to_file("res://UI/end_game.tscn")

func update_score(s):
	score += s
	
func update_time(t):
	time += t

func rest():
	score = 0
	time = 30
	lives = 5

