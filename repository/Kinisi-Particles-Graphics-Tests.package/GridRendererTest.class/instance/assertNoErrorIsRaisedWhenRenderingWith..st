asserting
assertNoErrorIsRaisedWhenRenderingWith: renderer

	self shouldnt: [ renderer drawIn: canvas ] raise: Error