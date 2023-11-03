extends Node

class UserInfo:
	
	var db
	var db_path = "res://database"
	var result
	
	func _init(database):
		db = database
		
	func get_user_info(userkey):
		db.path = db_path
		db.open_db()
		
		var query = "SELECT * FROM userInfo WHERE userkey = " + str(userkey)
		result = db.query(query)
		
		return result	
