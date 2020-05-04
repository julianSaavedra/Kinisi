initialization
initializePresenters

	play := self newButton.
	play iconNamed: #smallDoIt.
	play label: 'Play'.
	play action: [ process play ].
	pause :=self newButton.
	pause iconNamed: #breakpoint.
	pause label: 'Pause'.
	pause action: [ process pause ].
	stop :=self newButton.
	stop iconNamed: #stop.
	stop label: 'Stop'.
	stop action: [ process terminate ]