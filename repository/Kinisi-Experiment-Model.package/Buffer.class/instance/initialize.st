initialization
initialize

	super initialize.
	state := NotStartedBufferState new.
	packages := OrderedCollection new