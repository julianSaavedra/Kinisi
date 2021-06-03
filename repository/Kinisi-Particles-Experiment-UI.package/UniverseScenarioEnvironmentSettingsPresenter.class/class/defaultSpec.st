specs
defaultSpec

	| particleAndChangeSpecifications |
	particleAndChangeSpecifications := SpBoxLayout newHorizontal.
	particleAndChangeSpecifications
		add: #particleList;
		add: #selectedParticleChangeSpecifications.
		
	^SpBoxLayout newVertical
		spacing: 3;
		add: 'Individual Change Specifications' asText allBold height: 25;
		add: particleAndChangeSpecifications height: 100;
		add: #selectedChangeSpecification height: 120;
		add: #gravityComponentSpecification expand: true fill: true padding: 5;
		yourself