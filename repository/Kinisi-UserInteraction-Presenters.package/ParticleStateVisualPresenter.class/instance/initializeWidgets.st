accessing
initializeWidgets

	view := self instantiate: RoassalModel.
	view script: [:rtView :canvas |
		canvas color: Color black.
		(ParticleRenderer basedOn: particleDraft with: 50)
			renderVelocityWhenRendering;
			renderPositionMarksWhenRendering;
			drawIn: rtView basedOn: particleDraft.
		canvas camera scale: 1; translateTo: 0@0 ].
	
	self focusOrder add: view