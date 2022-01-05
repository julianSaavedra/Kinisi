private
assertResultIsAvailable

	result ifNil: [ Error signal: 'Result is not available yet' ]