support
interfaceHasProcessed: sample

	processedSamples add: sample.
	pendingSamples := pendingSamples copyWithout: sample