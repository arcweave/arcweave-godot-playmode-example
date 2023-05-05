extends Object
class_name DataExport

var starting_element: String = ""
var name: String = ""
var utils: Utils
var data = {
	"startingElement": "adceb7d8-1bc6-4027-90fa-203d803e3758",
	"boards": {
		"2ad15ff6-f2ba-4f1d-9d9d-68938c683d7e": {
			"name": "Root",
			"root": true,
			"children": [
				"630fdb8a-48d6-473e-9974-2460f7eb2b41"
			]
		},
		"630fdb8a-48d6-473e-9974-2460f7eb2b41": {
			"name": "Main Board",
			"notes": [],
			"jumpers": [
				"35801461-fea9-4287-b005-67c946064fbd"
			],
			"branches": [
				"f49140aa-37aa-4a34-93ab-83985063a8a7"
			],
			"comments": [],
			"elements": [
				"69e24dbf-c856-47ad-9043-a241b6c8539d",
				"c57b56ac-28fe-4a98-b490-e4918be9059d",
				"50526a02-c378-4d23-8fee-04965b11e626",
				"adceb7d8-1bc6-4027-90fa-203d803e3758"
			],
			"connections": [
				"6886ab7b-a70f-4ba8-b5a5-fd82b87777e5",
				"32ac1abd-d6d3-4d91-91a4-db7f00cb9d35",
				"031ab3f4-4a89-4471-874b-1c845fd82f06",
				"05e60b46-7992-47cb-a69b-b56f736daf14",
				"8812191b-6be5-466c-8e4c-105d7acfef8f",
				"bbb0c30c-4ab8-47ee-99bc-278c9bd12366",
				"c76ee688-bca2-48eb-bc6a-58372378fa6c",
				"08d98983-5c96-4ec8-a0b8-1a8e523e46af"
			]
		}
	},
	"notes": {},
	"elements": {
		"50526a02-c378-4d23-8fee-04965b11e626": {
			"theme": "default",
			"title": "test\n",
			"content": "TO_BE_REPLACED",
			"outputs": [
				"c76ee688-bca2-48eb-bc6a-58372378fa6c"
			],
			"autoHeight": true,
			"components": [],
			"contentRef": "element_0_content"
		},
		"69e24dbf-c856-47ad-9043-a241b6c8539d": {
			"theme": "default",
			"title": "Start\n",
			"content": "TO_BE_REPLACED",
			"outputs": [
				"6886ab7b-a70f-4ba8-b5a5-fd82b87777e5",
				"8812191b-6be5-466c-8e4c-105d7acfef8f",
				"bbb0c30c-4ab8-47ee-99bc-278c9bd12366"
			],
			"autoHeight": true,
			"components": [],
			"contentRef": "element_1_content"
		},
		"adceb7d8-1bc6-4027-90fa-203d803e3758": {
			"theme": "default",
			"title": "test\n",
			"content": "TO_BE_REPLACED",
			"outputs": [
				"08d98983-5c96-4ec8-a0b8-1a8e523e46af"
			],
			"autoHeight": true,
			"components": [],
			"contentRef": "element_2_content"
		},
		"c57b56ac-28fe-4a98-b490-e4918be9059d": {
			"theme": "default",
			"title": "Enter\n",
			"content": "TO_BE_REPLACED",
			"outputs": [
				"031ab3f4-4a89-4471-874b-1c845fd82f06"
			],
			"autoHeight": true,
			"components": [],
			"contentRef": "element_3_content"
		}
	},
	"jumpers": {
		"35801461-fea9-4287-b005-67c946064fbd": {
			"elementId": "69e24dbf-c856-47ad-9043-a241b6c8539d"
		}
	},
	"connections": {
		"031ab3f4-4a89-4471-874b-1c845fd82f06": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "c57b56ac-28fe-4a98-b490-e4918be9059d",
			"targetid": "35801461-fea9-4287-b005-67c946064fbd",
			"sourceType": "elements",
			"targetType": "jumpers",
			"labelRef": "connection_0_label"
		},
		"05e60b46-7992-47cb-a69b-b56f736daf14": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "5696e09c-3161-4325-a8ec-f5ceb64a1ae7",
			"targetid": "c57b56ac-28fe-4a98-b490-e4918be9059d",
			"sourceType": "conditions",
			"targetType": "elements",
			"labelRef": "connection_1_label"
		},
		"08d98983-5c96-4ec8-a0b8-1a8e523e46af": {
			"type": "Bezier",
			"label": null,
			"theme": "default",
			"sourceid": "adceb7d8-1bc6-4027-90fa-203d803e3758",
			"targetid": "69e24dbf-c856-47ad-9043-a241b6c8539d",
			"sourceType": "elements",
			"targetType": "elements"
		},
		"32ac1abd-d6d3-4d91-91a4-db7f00cb9d35": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "111f629b-45a8-42e7-9263-902e8ba49da3",
			"targetid": "c57b56ac-28fe-4a98-b490-e4918be9059d",
			"sourceType": "conditions",
			"targetType": "elements",
			"labelRef": "connection_3_label"
		},
		"6886ab7b-a70f-4ba8-b5a5-fd82b87777e5": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "69e24dbf-c856-47ad-9043-a241b6c8539d",
			"targetid": "f49140aa-37aa-4a34-93ab-83985063a8a7",
			"sourceType": "elements",
			"targetType": "branches",
			"labelRef": "connection_4_label"
		},
		"8812191b-6be5-466c-8e4c-105d7acfef8f": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "69e24dbf-c856-47ad-9043-a241b6c8539d",
			"targetid": "c57b56ac-28fe-4a98-b490-e4918be9059d",
			"sourceFace": "bottom",
			"sourceType": "elements",
			"targetFace": "bottom",
			"targetType": "elements",
			"labelRef": "connection_5_label"
		},
		"bbb0c30c-4ab8-47ee-99bc-278c9bd12366": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "69e24dbf-c856-47ad-9043-a241b6c8539d",
			"targetid": "50526a02-c378-4d23-8fee-04965b11e626",
			"sourceType": "elements",
			"targetType": "elements",
			"labelRef": "connection_6_label"
		},
		"c76ee688-bca2-48eb-bc6a-58372378fa6c": {
			"type": "Bezier",
			"label": "TO_BE_REPLACED",
			"theme": "default",
			"sourceid": "50526a02-c378-4d23-8fee-04965b11e626",
			"targetid": "69e24dbf-c856-47ad-9043-a241b6c8539d",
			"sourceType": "elements",
			"targetType": "elements",
			"labelRef": "connection_7_label"
		}
	},
	"branches": {
		"f49140aa-37aa-4a34-93ab-83985063a8a7": {
			"theme": "default",
			"conditions": {
				"ifCondition": "111f629b-45a8-42e7-9263-902e8ba49da3",
				"elseCondition": "5696e09c-3161-4325-a8ec-f5ceb64a1ae7"
			}
		}
	},
	"components": {
		"65005bda-15d0-41c5-867f-68c118829f08": {
			"name": "Root",
			"root": true,
			"children": []
		}
	},
	"attributes": {},
	"variables": {
		"747d0495-341f-42b2-8788-b47dace22bf8": {
			"root": true,
			"children": [
				"b218155d-10e5-42e1-87cd-64467ac11d1e"
			]
		},
		"b218155d-10e5-42e1-87cd-64467ac11d1e": {
			"name": "patience",
			"type": "integer",
			"value": 20
		}
	},
	"conditions": {
		"111f629b-45a8-42e7-9263-902e8ba49da3": {
			"output": "32ac1abd-d6d3-4d91-91a4-db7f00cb9d35",
			"script": "(state.get_var(\"patience\") > 6)"
		},
		"5696e09c-3161-4325-a8ec-f5ceb64a1ae7": {
			"output": "05e60b46-7992-47cb-a69b-b56f736daf14",
			"script": null
		}
	},
	"name": "Untitled project",
	"cover": null
}

func _init(utils: Utils):
	self.name = data.name
	self.starting_element = data.startingElement
	self.utils = utils

	for element_id in self.data.elements:
		if self.data.elements[element_id].content and self.data.elements[element_id].contentRef:
			self.data.elements[element_id].content = funcref(self, self.data.elements[element_id].contentRef)
	for connection_id in self.data.connections:
		if self.data.connections[connection_id].label and self.data.connections[connection_id].labelRef:
			self.data.connections[connection_id].labelRef = funcref(self, self.data.connections[connection_id].labelRef)

func element_0_content(state):
	var content_result: String = ""
	state.set_var("patience", state.get_var("patience") - 5)
	content_result += str(state.get_var("patience"))
	return content_result.trim_suffix(" ")

func element_1_content(state):
	var content_result: String = ""
	content_result += "Go to the doctor "
	return content_result.trim_suffix(" ")

func element_2_content(state):
	var content_result: String = ""
	content_result += " "
	return content_result.trim_suffix(" ")

func element_3_content(state):
	var content_result: String = ""
	content_result += "You are now in the doctor's office.\nYour patience is "
	content_result += str(state.get_var("patience")) + str(".")
	content_result += "\"I am in the middle of examination\" "
	return content_result.trim_suffix(" ")

func connection_0_label(state):
	var content_result: String = ""
	content_result += "Back "
	return content_result.trim_suffix(" ")

func connection_1_label(state):
	var content_result: String = ""
	content_result += "Bash in "
	return content_result.trim_suffix(" ")

func connection_3_label(state):
	var content_result: String = ""
	if self.utils.aw_visits(state, "c57b56ac-28fe-4a98-b490-e4918be9059d"):
		content_result += "Reenter with "
		content_result += str(state.get_var("patience")) + str(".")
	else:
		content_result += "Enter "
		content_result += str(state.get_var("patience")) + str(".")
	return content_result.trim_suffix(" ")

func connection_4_label(state):
	var content_result: String = ""
	state.set_var("patience", state.get_var("patience") - 5)
	return content_result.trim_suffix(" ")

func connection_5_label(state):
	var content_result: String = ""
	content_result += "Keep your calm with "
	content_result += str(state.get_var("patience")) + str(".")
	return content_result.trim_suffix(" ")

func connection_6_label(state):
	var content_result: String = ""
	content_result += "test "
	return content_result.trim_suffix(" ")

func connection_7_label(state):
	var content_result: String = ""
	content_result += "back "
	return content_result.trim_suffix(" ")

func get_data():
	return self.data

func _to_string():
	return JSON.print({
		"name": self.name,
		"components": self.components,
		"variables": self.variables
	}, "\t")
