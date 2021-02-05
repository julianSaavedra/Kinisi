asserting
assertIn: particles uniqueElementsGivenBy: oneArgBlock ifNotRaiseSignal: signalString

	(particles collect: oneArgBlock) asSet size = particles size
		ifFalse: [ PhysicsModelError signal: signalString ]