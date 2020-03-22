test - visual settings
testUniverseObservationScaleIsChangedToOneHundredKilometers

	| universeObservation oneHundredKilometers |
	universeObservation := UniverseObservation new.
	oneHundredKilometers := UnitProvider soleInstance kilometer with: 100.
	self deny: universeObservation scale equals: oneHundredKilometers.
	
	universeObservation scale: oneHundredKilometers.
	
	self assert: universeObservation scale equals: oneHundredKilometers