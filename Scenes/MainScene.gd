extends Node

var Model = preload("res://Scripts/Models/UserInfo.gd")
var View = preload("res://Scripts/Views/UserInfoView.gd")
var Controller = preload("res://Scripts/Controllers/GetInfoController.gd")
var sqlite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")

var db

var model 
var view 
var controller

func _ready():
	db = sqlite.new()
	
	model = Model.new(db)
	view = View.new()
	controller = Controller.new(model, view)
