extends Node

const ScamData = preload("res://Resources/scam_data.gd")

var all_scams: Array[ScamData] = []

func _ready():
	load_scams()
	print("Loaded ", all_scams.size(), " scams")  # Check it worked

func load_scams():
	all_scams.append(preload("res://Resources/Scams/test_scam.tres"))
	all_scams.append(preload("res://Resources/Scams/test_scam2.tres"))
	all_scams.append(preload("res://Resources/Scams/test_scam3.tres"))
	
	# Add more scams
	# all_scams.append(preload("res://Resources/Scams/phishing_1.tres"))

func get_random_scam(app_type: String) -> ScamData:
	# Filter scams that match the app type
	var matching_scams = []
	
	# Check each scam manually
	for scam in all_scams: # Loop to check the scam type and if it is the desired type add it to matching_scams
		if scam.app_type == app_type:
			matching_scams.append(scam)
	
	# If no matches, return the first scam (or null)
	if matching_scams.is_empty():
		return all_scams[0]  # Fallback to any scam
	
	# Return a random matching scam
	return matching_scams.pick_random()
