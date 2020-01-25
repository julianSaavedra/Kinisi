validation
assertValidColor: aColor

	aColor ifNil: [ UserInterfaceError signal: 'Color cannot be nil.' ]