private
componentsFor: particle

	^descriptionPerParticle
		at: particle particleName
		ifAbsent: [ OrderedCollection new ]