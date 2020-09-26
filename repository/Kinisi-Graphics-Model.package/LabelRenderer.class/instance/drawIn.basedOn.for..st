rendering
drawIn: canvas basedOn: particle for: shape

	| label |
	label := RSLabeled new.
	label text: text.
	shape addInteraction: label