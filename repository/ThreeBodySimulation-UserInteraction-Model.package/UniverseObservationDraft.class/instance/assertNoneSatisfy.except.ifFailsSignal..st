validation
assertNoneSatisfy: oneArgumentBlock except: aParticleDraft ifFailsSignal: signalMessage

	| particleDraftsToBeChecked |
	particleDraftsToBeChecked := particleDrafts copyWithout: aParticleDraft.
	(particleDraftsToBeChecked anySatisfy: oneArgumentBlock) ifTrue: [ SimulationError signal: signalMessage ]