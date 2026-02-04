extends Node2D

var score: int = 0 # Tracking score for reward or winning the game
var current_day: int = 1 # Roguelike system to make it engaging and fun
var scams_correct: int = 0 # Similar to score shows better statistics
var scams_missed: int = 0 # Consequence if too many missed scams

func check_answer(was_scam: bool, player_said_scam: bool):
	# Handle scoring logic
	pass

func next_day():
	# Progress to next round
	pass
