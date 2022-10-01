extends Interactable

class_name Maker

var maker_type = "DEFAULT"
var selected_recipie
var progress # Used as a percentage at 100% will drop the selected item.

"""
Function 
"""
func interact():
	print(maker_type, ": What do you want to make?")
	pass

"""
Function for advancing the currently selected crafting recipie
"""
func advance(number):
	pass

"""
Function 
"""
func drop_item():
	pass
