extends Control

@onready var message_label = $MessageContent
@onready var sender_contact = $Contact
@onready var scam_button = $ScamButton
@onready var legit_button = $LegitButton

var current_scam: ScamData

func _ready():
	load_message()
	
	scam_button.visible = true
	legit_button.visible = true

func load_message():
	current_scam = ScamManager.get_random_scam("messages")
	sender_contact.text = current_scam.sender_name
	message_label.text = current_scam.content

func _on_scam_button_pressed():
	check_answer(true)

func _on_legit_button_pressed():
	check_answer(false)

func check_answer(player_said_scam: bool):
	if current_scam.is_scam == player_said_scam: # If the scan is a scam will result in true, if player answered true then it should match their answer
		print("Correct")
	else:
		print("Bubbah")
	
	scam_button.visible = false
	legit_button.visible = false
