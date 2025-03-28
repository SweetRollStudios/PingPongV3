extends ColorRect

func _ready() -> void:
	if(self.get_meta("PlayerVal")==1):
		self.set_color(GlobalVars.player1Color)
		$NameField.text = GlobalVars.player1Name
	else:
		self.set_color(GlobalVars.player2Color)
		$NameField.text = GlobalVars.player2Name
	
	$ScoreField.text = str(0)
	$WinField.text = str(0)
	_update_scores()
	
func _process(delta: float) -> void:
	pass

func _update_scores() -> void:
	var player : int = self.get_meta("PlayerVal")
	var name = GlobalVars.player1Name if player==1 else GlobalVars.player2Name
	var amLeft = player==(2 if GlobalVars.isSwapped else 1)
	GlobalVars.updatePlayer(amLeft, $ScoreField.text, name)

func _on_increase_score_button_button_up() -> void:
	var scoreField : Label = $ScoreField
	var scoreFieldInt = int(scoreField.text)
	scoreFieldInt = scoreFieldInt + 1
	scoreField.text = str(scoreFieldInt)
	_update_scores()


func _on_decrease_score_button_button_up() -> void:
	var scoreField : Label = $ScoreField
	var scoreFieldInt = int(scoreField.text)
	scoreFieldInt = scoreFieldInt - 1
	if(scoreFieldInt < 0):
		scoreFieldInt = 0
	scoreField.text = str(scoreFieldInt)
	_update_scores()


func _on_decrease_wins_button_button_up() -> void:
	var winField : Label = $WinField
	var winFieldInt = int(winField.text)
	winFieldInt = winFieldInt - 1
	if(winFieldInt < 0):
		winFieldInt = 0
	winField.text = str(winFieldInt)


func _on_increase_wins_button_button_up() -> void:
	var winField : Label = $WinField
	var winFieldInt = int(winField.text)
	winFieldInt = winFieldInt + 1
	winField.text = str(winFieldInt)
