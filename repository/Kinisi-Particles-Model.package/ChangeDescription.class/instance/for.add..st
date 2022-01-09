private
for: targetParticle add: newComponent

	| particleComponents |
	particleComponents := componentsPerParticle
		                      at: targetParticle particleName
		                      ifAbsentPut: [ OrderedCollection new ].

	particleComponents add: newComponent