extends Node


class_name Item

var item_name : String

var base_price : int #Choosing to use intagers for $$$ may change later probably not as $ will be gold or something like that
var efficiency_modifier #may move this to player character
var retail_price : int

var stackable : bool
var stack_limit

#Function to compare how similar the passed item is to self
func compare(item : Item):
	
	pass
