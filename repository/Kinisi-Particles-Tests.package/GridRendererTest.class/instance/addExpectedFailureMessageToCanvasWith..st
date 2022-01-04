support
addExpectedFailureMessageToCanvasWith: expectedErrorDespcription

	| errorText errorTextInCanvas |
	errorTextInCanvas := 'Test failed as expected: ' , expectedErrorDespcription.
	errorText := RSLabel new
		text: errorTextInCanvas;
		model: errorTextInCanvas;
		color: Color green blacker blacker blacker;
		fontSize: 10.
	canvas add: errorText