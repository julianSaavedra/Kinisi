menu - action
removeAllSpecificationsInSelectedParticle

	self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
		selectedParticle removeAllChangeComponents ]