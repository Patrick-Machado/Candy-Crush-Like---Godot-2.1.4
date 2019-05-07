extends Sprite

var moves = 5

func _ready():
	updatenum()

func set_moves(m):
	moves = m
	updatenum()

func updatenum():
	get_node("Number1").set_texture(load("res://Shary the fairy/files/png/gui/Group_" + str(moves/10) + ".png"))
	get_node("Number2").set_texture(load("res://Shary the fairy/files/png/gui/Group_" + str(moves%10) + ".png"))


func _on_Candies_played():
	moves -= 1
	updatenum()
