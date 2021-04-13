extends Control

var time = 0


func _ready():
	$Timer.connect("timeout", self, "_on_Timer_timeout")
	$Timer.set_wait_time(1.0)
	

func _on_Timer_timeout():
	add_1_second()
	update_display()


func add_1_second():
	time += 1


func get_hms_time(time_in_seconds):
	var hours = int(time_in_seconds / 60 / 60)
	var minutes = int(time_in_seconds / 60) - (hours * 60)
	var seconds = time_in_seconds % 60
	return "{h}:{m}:{s}".format({ "h": "%02d" % hours, "m": "%02d" % minutes, "s": "%02d" % seconds })


func update_display():
	$Panel/Display.text = get_hms_time(time)


func _on_Start_pressed():
	$Timer.start()


func _on_Stop_pressed():
	$Timer.stop()


func _on_Reset_pressed():
	time = 0
	update_display()
	$Timer.stop()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	print(delta)
	pass









