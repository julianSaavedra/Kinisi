validation
assertNoneSatisfy: oneArgumentBlock ifFailsSignal: signalMessage

	(particleDrafts anySatisfy: oneArgumentBlock) ifTrue: [ SimulationError signal: signalMessage ]