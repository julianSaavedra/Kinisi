accessing
withTimeAndStateCollect: aBlockClosure

	| collectResults |
	collectResults := 	OrderedCollection new.
		
	self withTimeAndStateDo: [:time :state |
		collectResults add: (aBlockClosure value: time value: state) ].
		
	^collectResults