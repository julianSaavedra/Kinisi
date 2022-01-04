private
withSelectedParticleDo: block

	self
		withSelectedParticleDo: [ :selectedParticle | block value: selectedParticle ]
		ifNone: [  ]