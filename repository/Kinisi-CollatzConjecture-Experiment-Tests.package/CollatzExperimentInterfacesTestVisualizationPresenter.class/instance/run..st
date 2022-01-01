running test
run: selectedTest

	selectedTest ifNotNil: [ self runInNewProcess: selectedTest ]