private
componentsFor: particle

	| components |
	components := descriptionPerParticle
		at: particle particleName
		ifAbsent: [ OrderedCollection new ].
	components add: gravitationComponent.
	^components