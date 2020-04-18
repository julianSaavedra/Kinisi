instance creation
for: monitor every: period basedOn: forwardingPolicyDefinition

	^self new
		initializeFor: monitor
		every: period
		basedOn: forwardingPolicyDefinition