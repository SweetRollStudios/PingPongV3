extends ColorPickerButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_popup_closed() -> void:
	GlobalVars.player1Color = self.color


func _on_player_2_color_picker_popup_closed() -> void:
	GlobalVars.player2Color = $"../Player2ColorPicker".color
