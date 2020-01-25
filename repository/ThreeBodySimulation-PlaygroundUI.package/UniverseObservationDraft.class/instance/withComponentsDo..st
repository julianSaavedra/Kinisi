accessing
withComponentsDo: aBlock

	self particles do: [:aParticleDraft | aBlock value: aParticleDraft ]