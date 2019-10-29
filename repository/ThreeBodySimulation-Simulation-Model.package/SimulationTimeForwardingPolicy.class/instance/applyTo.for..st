applying policy
applyTo: stepResult for: forwardingConsumer

	(stepResult time \\ period) isZero ifTrue: [ forwardingConsumer forward: stepResult ]