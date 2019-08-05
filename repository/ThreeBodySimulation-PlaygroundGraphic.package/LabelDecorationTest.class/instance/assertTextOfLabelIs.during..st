asserting
assertTextOfLabelIs: expectedText during: block

	| labelText |
	self
		overrideMethodNamed: #addShape:
		in: TRCanvas
		with: [:receiver :arguments |
			| shape |
			shape := arguments first.
			labelText := shape text.
			shape addedIn: receiver. ]
		during: block.

	self assert: labelText equals: expectedText