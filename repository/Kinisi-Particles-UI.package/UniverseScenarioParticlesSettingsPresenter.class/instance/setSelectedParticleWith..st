private
setSelectedParticleWith: particle

	selectedParticle := self
		instantiate: ParticleScenarioPresenter
		on: particle.
	selectedParticle whenModelChangesDo: [
		universeUpdateAction value.
		self refillParticleObservationList ]