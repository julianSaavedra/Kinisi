initialization
initializePresenter

	properties whenPositionChangesDo: [ view refresh ].
	properties whenVelocityChangesDo: [ view refresh ].
	properties whenColorChangesDo: [ view refresh ]