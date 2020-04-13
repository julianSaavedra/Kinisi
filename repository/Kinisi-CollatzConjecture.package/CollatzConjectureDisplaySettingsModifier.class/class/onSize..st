instance creation
onSize: targetSize
 
	^self new initializeWith: [:settings | settings numberSize: targetSize ]