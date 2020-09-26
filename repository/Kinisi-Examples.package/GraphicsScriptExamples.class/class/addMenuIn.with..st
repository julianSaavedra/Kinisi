deprecated
addMenuIn: view with: draft

	"Taken from #exampleMovingCamera [no longer valid reference - was from Roassal2]"
	"| menu |
	menu := RSMenuBuilder new view: view.
	menu
		menu: 'New particle draft'
		background: Color white
		callback: [ draft newParticleObservation];
		menu: 'Reset draft'
		background: Color white
		callback: [ draft reset]"