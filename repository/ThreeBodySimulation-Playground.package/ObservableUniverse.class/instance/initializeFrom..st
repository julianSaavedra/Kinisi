initialization
initializeFrom: draft

	particles := draft particleDrafts collect: [:aParticleDraft | Particle from: aParticleDraft ]