tests
testConstantForceCannotBeAddedIfTargetParticleIsNotInSubjectUniverse

	| subjectUniverse builder particleA force resource |
	subjectUniverse := ObservableUniverseState empty.	
	builder := ChangeEnvironmentBuilder for: subjectUniverse.
	resource := PhysicsTestResource new.
	particleA := resource physicalStateForParticleNamed: 'ParticleA'.
	self deny: (subjectUniverse includes: particleA).
	
	force := resource nullForce.
	self
		should: [ builder addConstantForce: force for: particleA ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'ParticleA is not included in subject environment'
		description: 'Test did not fail as expected'