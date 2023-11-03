extends Node

class MainScene:

	var controller
	
	func _init():
		pass
	
	func _setController(controller):
		self.controller = controller
		
	func _ready():
		var button = Button.new()
		button.connect("pressed", self, "_on_Button_pressed")
		
	func _on_Button_pressed():
		controller._onButtonClick(1)
	
	func displayData(data):
		if data.size() > 0 :
			var user_data = data[0]
			
			print("userkey: " + str(user_data["userkey"]))
			print("user name: " + str(user_data["user_name"]))
			print("user nickname: " + str(user_data["user_nickname"]))
			print("user email: " + str(user_data["user_email"]))
			print("user address: " + str(user_data["user_addr"]))
			
			
			
			
			
