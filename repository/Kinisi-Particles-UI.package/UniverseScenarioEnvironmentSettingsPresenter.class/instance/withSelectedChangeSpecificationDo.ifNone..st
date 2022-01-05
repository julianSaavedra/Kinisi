private
withSelectedChangeSpecificationDo: selectedSpecificationBlock ifNone: noSelectedSpecificationBlock

	self withSelectedParticleDo: [:selectedParticle | 
		selectedParticleChangeSpecifications selectedItems
			ifEmpty: noSelectedSpecificationBlock
			ifNotEmpty: [:selectedSpecifications | selectedSpecificationBlock value: selectedSpecifications first ] ]