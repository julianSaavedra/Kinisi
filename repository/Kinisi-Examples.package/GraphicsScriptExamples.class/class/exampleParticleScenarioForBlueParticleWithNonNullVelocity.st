example - UI
exampleParticleScenarioForBlueParticleWithNonNullVelocity

	| particle |
	particle := self blueTwoKgOneMeterInEachDirectionParticle.
	(ParticleScenarioPresenter on: particle) openWithSpec.
	particle inspect