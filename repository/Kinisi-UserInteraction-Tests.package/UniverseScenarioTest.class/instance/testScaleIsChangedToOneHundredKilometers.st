test - scenario depiction
testScaleIsChangedToOneHundredKilometers

	| oneHundredKilometers |
	oneHundredKilometers := UnitProvider soleInstance kilometer with: 100.
	self deny: workbench scenario scale equals: oneHundredKilometers.
	
	workbench scale: oneHundredKilometers.
	
	self assert: workbench scenario scale equals: oneHundredKilometers