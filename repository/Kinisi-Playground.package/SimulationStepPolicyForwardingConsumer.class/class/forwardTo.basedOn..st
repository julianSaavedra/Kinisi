instance creation
forwardTo: consumer basedOn: policyDefinition

	| forwarder policy |
	forwarder := self new.
	policy := policyDefinition policyFor: forwarder.
	forwarder
		initializeForwardTo: consumer
		using: policy.

	^forwarder