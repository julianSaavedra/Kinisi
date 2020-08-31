validation
assertValid: period

	(period negative or: [ period isZero ]) ifTrue: [ Error signal: 'Period cannot be negative nor zero' ]