private
includesAllAndOnly: particlesCollection

	^particles size = particlesCollection size and: [
		particles allSatisfy: [:selfParticle |
			particlesCollection anySatisfy: [:collectionParticle |
				collectionParticle = selfParticle ] ]
		]