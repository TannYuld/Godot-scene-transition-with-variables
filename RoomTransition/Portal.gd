extends Node2D

export(String, FILE) var ScenePath = "" 
export var PlayerSpawnPosition:Vector2

func bodyEnter(body):
	if(body.name == "Player"):
		if ScenePath != "":
			gloVar.playerSpawnLoc = PlayerSpawnPosition
			var newScene = load(ScenePath).instance()
			get_tree().get_root().add_child(newScene)
			get_node("..").free()
		else:
			print_debug("This portal is empty !")
		pass
