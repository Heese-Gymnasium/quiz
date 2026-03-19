extends CanvasLayer

@onready var fade_rect = $ColorRect

func fade_out(dauer := 0.5):
	var tween = create_tween()
	tween.tween_property(fade_rect, "modulate:a", 1.0, dauer)
	await tween.finished

func fade_in(dauer := 0.5):
	var tween = create_tween()
	tween.tween_property(fade_rect, "modulate:a", 0.0, dauer)
	await tween.finished
