tests
testMeasureIsModifiedToTenReciprocalMeters

	| configuration tenReciprocalMeters |
	configuration := GridConfiguration new.
	tenReciprocalMeters := 10 / meter.
	self deny: configuration scale equals: tenReciprocalMeters.
	
	configuration scale: tenReciprocalMeters.
	
	self assert: configuration scale equals: tenReciprocalMeters