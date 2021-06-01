test - change components
testUniversalChangeSpecificationsAreEmptyWhenGravitationalInterationIsDisabled

	self assertEmpty: workbench scenario universalChangeSpecifications.
	
	workbench addGravitationalInteractionBetweenParticles.
			
	self denyEmpty: workbench scenario universalChangeSpecifications.
	
	workbench disableGravitationalInteraction.
	
	self assertEmpty: workbench scenario universalChangeSpecifications