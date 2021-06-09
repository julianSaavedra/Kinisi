initialization
initializeOn: screenHolder

	| screen |
	transcript := ThreadSafeTranscript new.
	screen := RubPluggableTextMorph new
		getTextSelector: #contents;
		setTextSelector: #clear;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		on: transcript;
		beForSmalltalkScripting;
		beReadOnly;
		yourself.
	screenHolder morph: screen; update