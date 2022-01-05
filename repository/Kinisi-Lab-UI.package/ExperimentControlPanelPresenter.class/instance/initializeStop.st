initialization
initializeStop

	stop := self
		newButtonLabeled: 'Stop'
		with: #stop
		doing: [ experiment terminate ]