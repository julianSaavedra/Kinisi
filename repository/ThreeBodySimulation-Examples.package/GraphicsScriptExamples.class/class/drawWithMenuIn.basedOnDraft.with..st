utilities
drawWithMenuIn: view basedOnDraft: universeDraft with: gridScale

	self drawIn: view basedOnDraft: universeDraft with: gridScale.
	self addMenuIn: view with: universeDraft.