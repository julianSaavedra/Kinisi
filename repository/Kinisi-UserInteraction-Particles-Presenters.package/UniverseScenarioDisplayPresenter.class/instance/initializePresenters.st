accessing model
initializePresenters

	| canvas |
	display := self newMorph.
	canvas := TRCanvas new.
	self drawOn: canvas.
	display morph: canvas buildMorph