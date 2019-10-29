applying policy
applyTo: stepResult

	(stepResult time \\ period) isZero ifTrue: [ forwarder forward: stepResult ]