running test
run: selectedTest

	selectedTest ifNotNil: [
		selectedTest
			runCaseWith: self
			using: (Duration milliSeconds: 500) ]