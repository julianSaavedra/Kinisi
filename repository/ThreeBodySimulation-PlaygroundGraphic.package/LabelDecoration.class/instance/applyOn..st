applying
applyOn: element

	| label |
	label := RTLabeled new.
	label text: stringObtainer.
	element addInteraction: label 