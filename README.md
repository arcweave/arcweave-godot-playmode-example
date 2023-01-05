# Arcweave Play Mode in Godot

This is an example project of the [Arcweave](https://arcweave.com) Play Mode implemented in Godot using the [Arcweave Godot Plugin](https://github.com/Arcweave/arcweave-godot-plugin).

It uses the [plugin](https://github.com/Arcweave/arcweave-godot-plugin) to integrate an [Arcweave](https://arcweave.com) project, in this case our Example "Castle" Project and create a simple text interactive game.

This project showcases three main concepts of the Plugin:

* How to use the [content of an Arcweave Element](#drawing-the-element-contents--options)
* How to [iterate through the Elements](#element-iteration) using their Connections/Options
* How to [save and load](#game-state-save--load) the state of the game

## Scenes

We have one main scene where the main components are:

* a `RichTextLabel` that we will call `text_container` 
* a `VBoxContainer` that we will call `options_container`, containing the selectable options/buttons of an `Element`

## Scripts

The main implementation and usage of the Plugin is in [scripts/main.gd](scripts/main.gd). In this file you will find some extra code for button handling as well as style customizations. In the examples bellow, you will find the bare code to use with our Plugin.

### Initialization


Firstly we have to initialize our `Story`

```gdscript
var story: Story = Story.new()
```

### Drawing the Element Contents & Options

On `_ready` we will draw the contents of the starting element.

```gdscript
func _ready():
    redraw()

func redraw():
    var content: String = story.get_current_content()
    text_container.bbcode_text = content
```

This is enough for drawing the contents of an element. We can also add the options as buttons in our options_container

```gdscript
func redraw():
    var content: String = story.get_current_content()
    text_container.bbcode_text = content

    addOptions(story.get_current_elements())
```

The `addOptions` function gets the options of the current element and creates their corresponding buttons.

In the Arcweave Play Mode implementation, the text of the option can be one of the three:

* The label of the last connection (in case we follow some branches, jumpers etc.)
* If there is no label in the connections, the title of the target Element
* If there is no title on the target Element, the content of the target Element

We follow the same process in our Godot implementation too.

```gdscript
func addOptions(options):
    # Firstly we clear the old options if they exist
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
        if lastLabel == null:
            lastLabel = self.story.elements[option.targetid].get_content(self.story.state)
        createButton(lastLabel, option.targetid)

func createButton(text, id):
    var button = load("res://scenes/OptionButton.tscn").instance()

    button.connect("pressed", self, "_on_option_selection", [id])
    options_container.add_child(button)
    button.text = text
```

### Element Iteration

When clicking on an option, we have to select the option in the `Story` so the new element is selected as the `current_element` and the new options are generated. Then we redraw the new content of the element and their options.

```gdscript
func _on_option_selection(id):
    story.select_option(id)
    redraw()
```

### Game State Save & Load

We can also save the state of the game to save our progress:

```gdscript
const SAVE_PATH : String = "user://arcweave_saved.json"

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
```

And then load it to resume our game:

```gdscript
func load_state():
    var file = File.new()
    if file.file_exists(SAVE_PATH):
        file.open(SAVE_PATH, File.READ)
        var data = JSON.parse(file.get_as_text()).result
        file.close()
        story.set_state(data['state'])
        story.set_current_element(data['element'])
```
