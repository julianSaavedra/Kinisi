asserting
should: block raise: errorClass because: message

	| wasErrorRaised |
	wasErrorRaised := false.
	
	block on: errorClass do: [:error |
		wasErrorRaised := true.
		self assert: error messageText equals: message ].
 
	self assert: wasErrorRaised description: 'Expected error was not raised during the test.' 