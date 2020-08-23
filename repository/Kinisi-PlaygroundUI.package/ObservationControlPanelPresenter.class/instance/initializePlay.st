initialization
initializePlay

	play := self
		newButtonLabeled: 'Play'
		with: #smallDoIt
		doing: [ process play ]