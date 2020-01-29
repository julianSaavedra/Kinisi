tests
testForwarderDoesNotForwardDataIfNoResultsWereGivenToIt

	| wasAnyResultForwarded registeredConsumer forwarder |	
	wasAnyResultForwarded := false.
	registeredConsumer := SimulationStepPluggableConsumer do: [:simulationStepResult |
		wasAnyResultForwarded := true ].
	forwarder := AsynchronousForwardingConsumer informTo: registeredConsumer.

	self deny: wasAnyResultForwarded.
	forwarder forward.
	self deny: wasAnyResultForwarded