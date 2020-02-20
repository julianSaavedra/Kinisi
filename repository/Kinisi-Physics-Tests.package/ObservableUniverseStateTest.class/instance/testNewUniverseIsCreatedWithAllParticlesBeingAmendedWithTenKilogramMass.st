tests
testNewUniverseIsCreatedWithAllParticlesBeingAmendedWithTenKilogramMass

	| universe tenKilograms |
	universe := ObservableUniverseState withAll: self twoParticles.
	tenKilograms := UnitProvider soleInstance kilogram with: 10.
	universe particles do: [:particle |
		self deny: particle mass equals: tenKilograms ].
	
	universe := universe collect: [:particle | particle mass: tenKilograms ].

	universe particles do: [:particle |
		self assert: particle mass equals: tenKilograms ]