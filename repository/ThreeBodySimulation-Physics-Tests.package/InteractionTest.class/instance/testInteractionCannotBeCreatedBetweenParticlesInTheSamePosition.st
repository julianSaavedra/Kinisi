tests
testInteractionCannotBeCreatedBetweenParticlesInTheSamePosition

	| aParticle anotherParticle |

	aParticle := testResource
		particleNamed: #ParticleA
		in: testResource oneMeterInAllComponentsVector.
	
	anotherParticle := testResource
		particleNamed: #ParticleB
		in: testResource oneMeterInAllComponentsVector.

	self
		should: [ Interaction over: aParticle causedBy: anotherParticle ]
		raise: PhysicsModelError