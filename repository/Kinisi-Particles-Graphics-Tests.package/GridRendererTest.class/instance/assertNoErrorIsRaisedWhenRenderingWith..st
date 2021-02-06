asserting
assertNoErrorIsRaisedWhenRenderingWith: renderer

	self shouldnt: [ renderer drawIn: RSCanvas new ] raise: Error