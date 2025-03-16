extends Panel

func _on_en_pressed() -> void:
	TranslationServer.set_locale("en")  # Встановлюємо англійську мову

func _on_uk_pressed() -> void:
	TranslationServer.set_locale("uk")  # Встановлюємо українську мову
