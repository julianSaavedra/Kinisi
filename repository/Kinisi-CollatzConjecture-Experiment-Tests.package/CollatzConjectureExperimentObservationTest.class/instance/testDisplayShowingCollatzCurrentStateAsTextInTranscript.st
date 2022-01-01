tests
testDisplayShowingCollatzCurrentStateAsTextInTranscript

	| interfaceSpec |
	interfaceSpec := CollatzConjectureTranscriptInterfaceSpec new.
	self runExperimentUsing: interfaceSpec named: 'Transcript'