utilities
addMenuIn: view with: draft

	| menu |

	"Taken from #exampleMovingCamera"
	menu := RTMenuBuilder new view: view.
	menu
		menu: 'New particle draft'
		background: Color white
		callback: [ draft newParticleObservation.
			self drawWithMenuIn: view basedOnDraft: draft with: (UnitProvider soleInstance meter with: 0.5)];
		menu: 'Reset draft'
		background: Color white
		callback: [ draft reset.
			self drawWithMenuIn: view basedOnDraft: draft with: (UnitProvider soleInstance meter with: 0.5)]