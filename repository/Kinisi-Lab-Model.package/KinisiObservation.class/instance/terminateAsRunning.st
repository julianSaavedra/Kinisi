private
terminateAsRunning

	interfaces do: [:interface | interface terminate].
	self changeToTerminated