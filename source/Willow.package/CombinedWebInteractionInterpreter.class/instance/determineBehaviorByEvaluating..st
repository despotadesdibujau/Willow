Configuring
determineBehaviorByEvaluating: aCallbackBlock

	self interpretersDo: [:interpreter | interpreter determineBehaviorByEvaluating: aCallbackBlock]