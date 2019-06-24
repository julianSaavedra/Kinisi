asserting
assertIn: collection uniqueElementsGivenBy: oneArgBlock ifNotRaiseSignal: signalString

	(collection collect: oneArgBlock) asSet size = collection size
		ifFalse: [ PhysicsModelError signal: signalString ]