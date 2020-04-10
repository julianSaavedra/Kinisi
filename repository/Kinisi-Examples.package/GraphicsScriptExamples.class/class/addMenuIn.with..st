not working
addMenuIn: view with: draft

	| menu |

	"Taken from #exampleMovingCamera"
	menu := RTMenuBuilder new view: view.
	menu
		menu: 'New particle draft'
		background: Color white
		callback: [ draft newParticleObservation];
		menu: 'Reset draft'
		background: Color white
		callback: [ draft reset]