initialization
initializeParticleObservationList

	particleList := self newList.
	particleList headerTitle: 'Scenario Particles' asText allBold.
	particleList display: [:particle |
		| nameText |
		nameText := particle particleName asText.
		particle changeSpecifications ifEmpty: [ nameText addAttribute: TextEmphasis italic ].
		nameText].
	particleList contextMenu: self selectedParticleMenu.
	self resetParticleObservationList
	
	