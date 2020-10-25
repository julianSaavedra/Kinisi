private - definition building
buildStateConditionDefinitionWith: condition and: delta

	^SteppingDefinition by: delta untilStateSatifies: condition