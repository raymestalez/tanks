extends Node2D

var bar_red = preload("res://spritesheets/UI/barHorizontal_red_mid 200.png")
var bar_green = preload("res://spritesheets/UI/barHorizontal_green_mid 200.png")
var bar_yellow = preload("res://spritesheets/UI/barHorizontal_yellow_mid 200.png")

func _ready():
	# Hide healthbar until enemy takes some damage
	for node in get_children():
		node.hide()
		
func _process(delta):
	# Don't turn health bar with the parent(enemy tank)
	global_rotation = 0
	
func update_healthbar(value):
	$HealthBar.texture_progress = bar_green
	if value < 60:
		$HealthBar.texture_progress = bar_yellow
	if value < 25:
		$HealthBar.texture_progress = bar_red
	if value < 100:
		$HealthBar.show()
	$HealthBar.value = value