extends Node

# Enums
enum GAME_STATES {waiting, running, finished}

# Constants
const BLOCKING_GROUP = "blocking"
const TIMER_STEP = 0.1
const WAITING_TIME_MAX = 5
const RUNNING_TIME_MAX = 20

# Exported variables
export(NodePath) var signal_label
export(NodePath) var progress_bar
export(NodePath) var final_score_label

# Variables
var signal_strength = 0
var current_signals = []
var game_state = GAME_STATES.waiting
var waiting_time = WAITING_TIME_MAX
var running_time = 0

func _ready():
	randomize()
	pass

func _process(delta):
	pass

func _on_TransmissionLine_strength_changed(new_strength):
	if signal_strength != new_strength:
		signal_strength = new_strength
		get_node(signal_label).set_text("SIGNAL QUALITY " + str(signal_strength) + "%")

func _on_Timer_timeout():
	if game_state == GAME_STATES.waiting:
		tick_waiting()
	if game_state == GAME_STATES.running:
		tick_running()
	
	
func tick_waiting():
	waiting_time -= TIMER_STEP
	get_node(progress_bar).value = waiting_time / WAITING_TIME_MAX * 100
	if waiting_time <= 0:
		# TODO change progress bar color
		game_state = GAME_STATES.running
		
func tick_running():
	running_time += TIMER_STEP
	get_node(progress_bar).value = running_time / RUNNING_TIME_MAX * 100
	current_signals.append(signal_strength)
	if running_time >= RUNNING_TIME_MAX:
		game_state = GAME_STATES.finished
		get_node(final_score_label).set_text("YOUR SIGNAL WAS " + str(get_current_signal_mean()) + "%")
		get_node(final_score_label).show()

func get_current_signal_mean():
	var sum = 0
	for current_signal in current_signals:
		sum += current_signal
	return sum / current_signals.size()
	
	
	