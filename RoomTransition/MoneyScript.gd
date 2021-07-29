extends Label

func _ready():
	text = "Money: " + str(gloVar.money)

func _process(delta):
	text = "Money: " + str(gloVar.money)

func pressedPlus():
	gloVar.money += 10
	pass

func pressedMinus():
	gloVar.money -= 10
	pass
