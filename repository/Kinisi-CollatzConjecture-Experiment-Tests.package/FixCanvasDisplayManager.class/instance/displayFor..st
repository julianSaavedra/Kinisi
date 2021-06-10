as yet unclassified
displayFor: interfaceProcessor
 
	| physicalDisplay |
	^({CollatzConjectureSequenceChartInterfaceProcessor. StateRenderingProcessor} includes: interfaceProcessor class)
		ifTrue: [
			physicalDisplay := canvasDisplay physicalDisplayForCanvas.
			SpRoassalDisplay on: physicalDisplay ] 
		ifFalse: [
			physicalDisplay := canvasDisplay physicalDisplayForTranscript.
			TranscriptDisplay on: physicalDisplay ]