combining
+ aComponentCommand

	^ self class
		applyingAll:
			(OrderedCollection new
				addAll: commands;
				add: aComponentCommand asWebComponentCommand;
				yourself)