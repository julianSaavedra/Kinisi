initialization
initializePause

	pause := self
		newButtonLabeled: 'Pause'
		with: #breakpoint
		doing: [ experiment pause ]