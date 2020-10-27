example - UI
exampleParticleScenarioForBlueParticleWithNonNullVelocityViewOnly

	| particle |
	particle := self blueTwoKgOneMeterInEachDirectionParticle.
	(ParticleStateVisualPresenter on: particle) openWithSpec.
	particle inspect