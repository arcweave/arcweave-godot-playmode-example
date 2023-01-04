extends Control

const SAVE_PATH : String = "user://arcweave_saved.json"

onready var text_container: RichTextLabel = $MarginContainer/VBoxContainer/Content
onready var options_container: VBoxContainer = $MarginContainer/VBoxContainer/OptionsContainer

var story: Story = Story.new()


func _ready():
	if not load_file_exists():
		enable_load_button(false)
	redraw()


func enable_load_button(yes : bool = true) -> void:
	var load_button : Button = $MarginContainer/VBoxContainer/StateButtons/LoadButton
	
	if yes:
		load_button.disabled = false
		load_button.focus_mode = FOCUS_ALL
	else:
		load_button.disabled = true
		load_button.focus_mode = FOCUS_NONE

func load_file_exists()-> bool:
	var file = File.new()
	if file.file_exists(SAVE_PATH):
		return true
	return false


func addOptions(options):
	for n in options_container.get_children():
		options_container.remove_child(n)
		n.queue_free()
	for option in options:
		var lastLabel = null
		for connection in option.connectionPath:
			if connection.label:
				lastLabel = connection.label
		if lastLabel == null:
			lastLabel = self.story.elements[option.targetid].title
		if lastLabel == null or lastLabel == "":
			lastLabel = self.story.elements[option.targetid].get_content(self.story.state)
		createButton(lastLabel, option.targetid)
	# If options, focus goes to first option button:
	if options_container.get_child_count() > 0:
		options_container.get_child(0).grab_focus()
		return
	# If no options, focus goes to Restart button:
	$MarginContainer/VBoxContainer/StateButtons/RestartButton.grab_focus()


func createButton(text, id):
	var button = load("res://scenes/OptionButton.tscn").instance()
	button.connect("pressed", self, "_on_option_selection", [id])
	options_container.add_child(button)
	text = strip_option_bbcode(text)
	button.text = text


func strip_option_bbcode(text: String) -> String:
	text = text.replace("\\n", " ")
	for tag in ["[i]", "[/i]", "[b]", "[/b]"]:
		text = text.replace(tag, "")
	return text


func _on_option_selection(id):
	story.select_option(id)
	redraw()


func redraw():
	var content : String = story.get_current_content()
	content = content.replace("[quote]", "[i][b]")
	content = content.replace("[/quote]", "[/b][/i]")
	content = content.replace("\n", "\n\n")
	text_container.bbcode_text = content
	addOptions(story.get_current_options())


func load_state():
	var file = File.new()
	if file.file_exists(SAVE_PATH):
		file.open(SAVE_PATH, File.READ)
		var data = JSON.parse(file.get_as_text()).result
		file.close()
		story.set_state(data['state'])
		story.set_current_element(data['element'])


func save_state()->void:
	var currentState = self.story.get_state()
	var currentElementId = self.story.get_current_element().id
	
	var saveObject = {
		'state': currentState,
		'element': currentElementId
	}
	
	var file = File.new()
	file.open(SAVE_PATH, File.WRITE)
	file.store_string(JSON.print(saveObject, '\t'))
	file.close()
	enable_load_button()


func _on_SaveButton_pressed() -> void:
	save_state()


func _on_LoadButton_pressed() -> void:
	load_state()
	redraw()


func _on_RestartButton_pressed() -> void:
	get_tree().reload_current_scene()


func _on_QuitButton_pressed() -> void:
	get_tree().quit()
