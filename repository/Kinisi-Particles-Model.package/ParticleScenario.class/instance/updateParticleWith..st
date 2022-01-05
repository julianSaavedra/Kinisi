private
updateParticleWith: targetParticle

	| currentParticle |
	currentParticle := particle.
	[
		self assertObservationIsValid.
		particle := targetParticle.
		universeObservation refresh: self
	] on: Error do: [ :error | 
		particle := currentParticle.
		error pass ]