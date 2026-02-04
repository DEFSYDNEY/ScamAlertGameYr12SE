extends Resource
class_name ScamData

@export var scam_id: String
@export var scam_type: String  # "phishing", "fake_prize", etc.
@export_enum("messages", "email", "social") var app_type: String
@export_multiline var content: String
@export var sender_name: String
@export var is_scam: bool = true
@export var red_flags: Array[String]
@export_multiline var explanation: String
