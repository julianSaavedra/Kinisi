asserting
assert: result wasProcessedBasedOn: interfaceDefinition

	| observations |
	observations := self recordedObservationsFor: interfaceDefinition.
	self assert: result wasObservedAs: observations