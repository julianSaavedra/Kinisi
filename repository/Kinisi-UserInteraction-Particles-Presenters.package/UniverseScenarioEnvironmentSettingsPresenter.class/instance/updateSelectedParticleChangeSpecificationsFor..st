private
updateSelectedParticleChangeSpecificationsFor: particle

	selectedParticleChangeSpecifications := self newList.
	selectedParticleChangeSpecifications
		headerTitle: 'Specifications' asText allBold;
		display: [:specification | specification name ];
		sortingBlock: [:specificationA :specificationB | specificationA name < specificationB name ];
		items: particle changeSpecifications;
		whenSelectionChangedDo: [:selectedSpecification | self updateSelectedChangeSpecification ];
		contextMenu: self selectedChangeSpecificationMenu