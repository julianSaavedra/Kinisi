private
assertBufferIsOpen

	bufferIsOpen ifFalse: [ self error: 'Buffer is closed' ]