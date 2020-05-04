specs
defaultSpec

	^SpGridLayout new
		beColumnNotHomogeneous;
		beRowNotHomogeneous;
		add: #play at: 1@1;
		add: #pause at: 2@1;
		add: #stop at: 3@1;
		yourself