private
terminateAsPaused

	interfaces do: [:interface | interface terminate].
	process terminate.
	self changeToTerminated