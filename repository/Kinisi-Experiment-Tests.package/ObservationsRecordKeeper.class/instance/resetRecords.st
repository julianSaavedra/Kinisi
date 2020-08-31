private
resetRecords

	observations := OrderedCollection new.
	times := OrderedCollection new.
	terminationSemaphore := Semaphore new