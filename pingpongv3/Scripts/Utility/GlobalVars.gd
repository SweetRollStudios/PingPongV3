extends Node

@onready var player1Color : Color = Color.BLUE
@onready var player2Color : Color = Color.RED
@onready var player1Name : String = ''
@onready var player2Name : String = ''
@onready var isSwapped = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func updatePlayer(left: bool, score: String, name: String) -> void:
	var amLeft = self.get_meta("PlayerVal")==(2 if isSwapped else 1)
	var scorefile = FileAccess.open("user://left_score.txt" if left else "user://right_score.txt", FileAccess.WRITE)
	scorefile.store_string(score)
	var namefile = FileAccess.open("user://left_name.txt" if left else "user://right_name.txt", FileAccess.WRITE)
	namefile.store_string(name)
