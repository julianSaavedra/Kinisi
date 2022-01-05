initialization
printOn: aStream

	aStream
		nextPutAll: 'Scaling: ';
		nextPutAll: (scaling * 100) asString;
		nextPutAll: '%'