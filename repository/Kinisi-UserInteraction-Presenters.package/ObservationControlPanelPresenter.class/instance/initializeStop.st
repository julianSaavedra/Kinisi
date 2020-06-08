initialization
initializeStop

	stop := self
		newButtonLabeled: 'Stop'
		with: #stop
		doing: [ process terminate ]