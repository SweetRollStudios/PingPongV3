extends Button



func _ready() -> void:
	self.pressed.connect(func(): createNewPlayer())



func _process(delta: float) -> void:
	pass




func createNewPlayer() -> Dictionary:
	var parentNode = self.get_parent()
	var nicknameNode : TextEdit  = parentNode.get_node("NicknameTextField")
	var ageNode : TextEdit  = parentNode.get_node("AgeTextField")
	var firstNameNode : TextEdit  = parentNode.get_node("FnameTextField")
	var lastNameNode : TextEdit  = parentNode.get_node("LnameTextField")
	var playerDict = {"Nickname":nicknameNode.text,"Age":ageNode.text,"Fname":firstNameNode.text,"Lname":lastNameNode.text}
	var playerList : ItemList = parentNode.get_node("PlayerList")
	var newNode = Node.new()
	newNode.set_meta("Nickname",nicknameNode.text)
	newNode.set_meta("Age",ageNode.text)
	newNode.set_meta("Fname",firstNameNode.text)
	newNode.set_meta("Lname",lastNameNode.text)
	AllPlayers.add_child(newNode)
	return playerDict
