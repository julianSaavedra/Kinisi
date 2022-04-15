running
setUp

	super setUp.
	canvas ifNil: [ canvas := RSCanvas new ].
	canvas color: Color black