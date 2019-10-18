action
forward

	packages ifNotEmpty: [
		| packageToBeForwarded |
		packageToBeForwarded := packages removeFirst.
		forwardedConsumer process: packageToBeForwarded ]