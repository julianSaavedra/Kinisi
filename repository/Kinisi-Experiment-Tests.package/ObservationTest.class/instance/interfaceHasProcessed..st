support
interfaceHasProcessed: sample

	interfaceProcessedSamples add: sample.
	pendingSamples := pendingSamples copyWithout: sample