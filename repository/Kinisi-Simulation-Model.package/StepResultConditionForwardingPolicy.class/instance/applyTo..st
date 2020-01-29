applying policy
applyTo: stepResult

	(forwardingCondition cull: stepResult) ifTrue: [ forwarder forward: stepResult ]