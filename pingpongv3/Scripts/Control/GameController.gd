extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_switch_sides_button_button_up() -> void:
	var playerContainer : HBoxContainer = $CanvasLayer/HBoxContainer
	var player1Index = playerContainer.get_children().find($CanvasLayer/HBoxContainer/Player1)
	if(player1Index == 0):
		playerContainer.move_child($CanvasLayer/HBoxContainer/Player1,1)
	else:
		playerContainer.move_child($CanvasLayer/HBoxContainer/Player1,0)
	GlobalVars.isSwapped = !GlobalVars.isSwapped
	$CanvasLayer/HBoxContainer/Player1/ScoreField.text = str(0)
	$CanvasLayer/HBoxContainer/Player2/ScoreField.text = str(0)
	
	GlobalVars.updatePlayer(!GlobalVars.isSwapped, "0", GlobalVars.player1Name)
	GlobalVars.updatePlayer(GlobalVars.isSwapped, "0", GlobalVars.player2Name)

func _on_restart_game_button_button_up() -> void:
	var playerContainer : HBoxContainer = $CanvasLayer/HBoxContainer
	playerContainer.move_child($CanvasLayer/HBoxContainer/Player1,0)
	playerContainer.move_child($CanvasLayer/HBoxContainer/Player2,1)
	$CanvasLayer/HBoxContainer/Player1/ScoreField.text = str(0)
	$CanvasLayer/HBoxContainer/Player2/ScoreField.text = str(0)
	$CanvasLayer/HBoxContainer/Player1/WinField.text = str(0)
	$CanvasLayer/HBoxContainer/Player2/WinField.text = str(0)
	GlobalVars.updatePlayer(!GlobalVars.isSwapped, "0", GlobalVars.player1Name)
	GlobalVars.updatePlayer(GlobalVars.isSwapped, "0", GlobalVars.player2Name)


func _on_reset_score_button_button_up() -> void:
	$CanvasLayer/HBoxContainer/Player1/ScoreField.text = str(0)
	$CanvasLayer/HBoxContainer/Player2/ScoreField.text = str(0)
	GlobalVars.updatePlayer(!GlobalVars.isSwapped, "0", GlobalVars.player1Name)
	GlobalVars.updatePlayer(GlobalVars.isSwapped, "0", GlobalVars.player2Name)
