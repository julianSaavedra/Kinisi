tests
setUp
	
	super setUp.
	displayManager ifNil: [ displayManager := RecorderDisplayManager new ].
	period ifNil: [ period := Duration milliSeconds: 50 ].