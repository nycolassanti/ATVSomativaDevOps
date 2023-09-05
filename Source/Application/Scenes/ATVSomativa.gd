extends VBoxContainer


var storedText = ""

func _on_store_button_pressed():
	var input_text = get_node("HBoxContainer/InputTextEdit").text.strip_edges()
	if input_text != "":
		storedText = input_text
		get_node("Label2").text = "CADASTRO REALIZADO"

func _on_check_button_pressed():
	var input_text = get_node("HBoxContainer/InputTextEdit").text.strip_edges()
	if input_text == storedText:
		get_node("Label2").text = "CADASTRO ENCONTRADO"
	else:
		get_node("Label2").text = "CADASTRO NÃO ENCONTRADO"
