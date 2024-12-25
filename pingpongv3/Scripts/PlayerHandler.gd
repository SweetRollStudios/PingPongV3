extends ColorRect

func _ready() -> void:
	var playerColor : Color = get_meta("PlayerColor")
	self.set_color(playerColor)
	$ScoreField.text = str(0)

func _process(delta: float) -> void:
	pass


func _on_increase_score_button_button_up() -> void:
	var scoreField : Label = $ScoreField
	var scoreFieldInt = int(scoreField.text)
	scoreFieldInt = scoreFieldInt + 1
	scoreField.text = str(scoreFieldInt)


func _on_decrease_score_button_button_up() -> void:
	var scoreField : Label = $ScoreField
	var scoreFieldInt = int(scoreField.text)
	scoreFieldInt = scoreFieldInt - 1
	scoreField.text = str(scoreFieldInt)
