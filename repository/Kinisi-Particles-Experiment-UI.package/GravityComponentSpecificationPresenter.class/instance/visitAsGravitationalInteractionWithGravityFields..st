private
visitAsGravitationalInteractionWithGravityFields: gravitationalInteractionWithGravityFields

	currentHelper := helpersMap at: GravityFieldCausedByGivenParticlesModeHelper modeName.
	mode := self instantiate: GravityFieldCausedByGivenParticlesPresenter on: workbench