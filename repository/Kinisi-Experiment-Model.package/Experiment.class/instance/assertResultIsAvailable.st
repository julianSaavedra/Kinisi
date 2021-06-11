private
assertResultIsAvailable

	result ifNil: [ Error signal: 'Experiment was not run yet' ]