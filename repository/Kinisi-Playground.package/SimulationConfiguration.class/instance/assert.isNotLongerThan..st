private
assert: timeMeasure isNotLongerThan: anotherTimeMeasure
 
	timeMeasure > anotherTimeMeasure ifTrue:  [ SimulationError signal: 'Total duration cannot be shorter than the step duration.' ]