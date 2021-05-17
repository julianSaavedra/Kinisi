tests
testGravitationalFieldCannotBeAddedIfCausingParticleIsNotInSubjectUniverse

	| subjectUniverse builder particleA resource |
	subjectUniverse := ObservableUniverseState empty.	
	builder := ChangeEnvironmentBuilder for: subjectUniverse.
	resource := PhysicsTestResource new.
	particleA := resource physicalStateForParticleNamed: 'ParticleA'.
	self deny: (subjectUniverse includes: particleA).
	
	self
		should: [ builder addGravitationalFieldCausedBy: particleA ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'ParticleA is not included in subject environment'
		description: 'Test did not fail as expected'