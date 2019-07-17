utilities
drawWithMenuIn: view basedOnDraft: universeDraft withGridScale: gridScale

	self drawIn: view basedOnDraft: universeDraft withGridScale: gridScale.
	self addMenuIn: view with: universeDraft.