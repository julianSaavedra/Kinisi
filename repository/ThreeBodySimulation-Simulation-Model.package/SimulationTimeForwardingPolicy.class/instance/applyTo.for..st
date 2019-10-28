applying policy
applyTo: stepResultPackage for: forwardingConsumer

	(stepResultPackage resultTime \\ period) isZero ifTrue: [ forwardingConsumer forward: stepResultPackage ]