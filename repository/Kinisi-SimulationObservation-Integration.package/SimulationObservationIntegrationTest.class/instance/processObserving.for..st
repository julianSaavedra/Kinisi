tests
processObserving: buffer for: interface
	^ KinisiObservation
		on: (ObservationSource from: buffer)
		with: interface
		waiting: (Duration milliSeconds: 200)