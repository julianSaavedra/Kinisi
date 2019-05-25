tests
testCreationFromPhysicalState

	| body physicalState |
	physicalState := testResource oneKilogramInTheOriginPhysicalState. 

	body := Body from: physicalState.

	self assert: body mass equals: physicalState mass.
	self assert: body position equals: physicalState position