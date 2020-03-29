rendering
drawIn: view basedOn: particle for: particleElement

	| label |
	label := RTLabeled new.
	label text: text.
	particleElement addInteraction: label