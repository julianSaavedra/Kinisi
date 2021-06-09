as yet unclassified
displayFor: interfaceProcessor
 
	| physicalDisplay |
	^interfaceProcessor class = CollatzConjectureSequenceChartInterfaceProcessor
		ifTrue: [
			physicalDisplay := canvasDisplay physicalDisplayForCanvas.
			SpRoassalDisplay on: physicalDisplay ] 
		ifFalse: [
			physicalDisplay := canvasDisplay physicalDisplayForTranscript.
			TranscriptDisplay on: physicalDisplay ]
	