tests
testConstantAccelerationCannotBeAddedIfTargetParticleIsNotInSubjectUniverse

	| subjectUniverse builder particleA acceleration resource |
	subjectUniverse := ObservableUniverseState empty.	
	builder := ChangeEnvironmentBuilder for: subjectUniverse.
	resource := PhysicsTestResource new.
	particleA := resource physicalStateForParticleNamed: 'ParticleA'.
	self deny: (subjectUniverse includes: particleA).
	
	acceleration := resource nullAcceleration.
	self
		should: [ builder addConstantAcceleration: acceleration for: particleA ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'ParticleA is not included in subject environment'
		description: 'Test did not fail as expected'