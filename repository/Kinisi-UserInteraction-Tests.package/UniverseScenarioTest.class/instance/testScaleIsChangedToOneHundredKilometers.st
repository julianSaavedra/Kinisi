test - scenario depiction
testScaleIsChangedToOneHundredKilometers

	| oneHundredKilometers |
	oneHundredKilometers := resource kilometerWith: 100.
	self deny: workbench scenario scale equals: oneHundredKilometers.
	
	workbench scale: oneHundredKilometers.
	
	self assert: workbench scenario scale equals: oneHundredKilometers