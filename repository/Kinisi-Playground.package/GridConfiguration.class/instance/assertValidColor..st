validation
assertValidColor: aColor

	aColor ifNil: [ ExperimentError signal: 'Color cannot be nil.' ]