accessing
initializeWidgets

	view := self instantiate: RoassalModel.
	view script: [:rtView :canvas |
		canvas color: particleObservation background.
		(ParticleRenderer basedOn: particleObservation with: 50)
			renderVelocityWhenRendering;
			renderPositionMarksWhenRendering;
			drawIn: rtView basedOn: particleObservation.
		canvas camera scale: 1; translateTo: 0@0 ].
	
	self focusOrder add: view