extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_text_changed() -> void:
	GlobalVars.player1Name = self.text


func _on_player_2_text_text_changed() -> void:
	GlobalVars.player2Name = $"../Player2Text".text
