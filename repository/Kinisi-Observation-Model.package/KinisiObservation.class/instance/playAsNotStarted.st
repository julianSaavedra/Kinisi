private
playAsNotStarted

	interfaces do: [:interface | interface start].
	process resume.
	self changeToRunning