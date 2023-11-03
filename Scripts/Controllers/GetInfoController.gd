extends Node

class GetInfoController:
	
	var model
	var view
	
	func _init(model, view):
		self.model = model
		self.view = view
		view._setController(self)
		
	func _onButtonClick(userkey):
		var userInfo = model.get_user_info(userkey)
		view.displayData(userInfo)

	
