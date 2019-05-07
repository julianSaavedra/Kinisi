tests
testInteractionCannotBeCreatedBetweenTheSameParticle

	| aParticle |

	aParticle := self
		particleNamed: #ParticleA
		in: testResource oneMeterInAllComponentsVector
		with: testResource oneKilogram.

	self
		should: [ Interaction over: aParticle causedBy: aParticle ]
		raise: PhysicsModelError