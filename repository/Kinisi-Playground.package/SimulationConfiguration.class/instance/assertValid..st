private
assertValid: duration
 
	duration negative ifTrue: [ SimulationError signal: 'Time cannot be negative.' ]