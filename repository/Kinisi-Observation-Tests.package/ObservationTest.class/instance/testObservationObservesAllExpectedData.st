tests
testObservationObservesAllExpectedData

	| monitoring |
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self denyEmpty: allDataToBeObserved.
	self assertEmpty: observedData.

	monitoring play.
	self tickDelayAndWaitObservationOfAllExpectedData.
	monitoring terminate.

	self
		assertCollection: allDataToBeObserved
		hasSameElements: observedData