test - visual settings
testUniverseObservationScaleFailsIfTargetScaleIsNotPositive

	| universeObservation oneMeter |
	universeObservation := UniverseObservation new.
	oneMeter := UnitProvider soleInstance meter with: 1.
	
	self
		should: [universeObservation scale: oneMeter negated]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Scale must be positive'.

	self
		should: [universeObservation scale: oneMeter * 0]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Scale must be positive'	