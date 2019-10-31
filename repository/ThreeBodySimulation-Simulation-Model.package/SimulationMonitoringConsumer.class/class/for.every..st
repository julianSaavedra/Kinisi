instance creation
for: monitor every: period

	^self
		for: monitor
		every: period
		basedOn: ForwardAllPolicyDefinition new