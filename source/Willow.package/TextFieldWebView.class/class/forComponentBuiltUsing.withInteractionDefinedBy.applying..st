private
forComponentBuiltUsing: aComponentBuilder withInteractionDefinedBy: anInteractionInterpreter applying: aComponentCommand

	^ self new
		initializeForComponentBuiltUsing: aComponentBuilder
		withInteractionDefinedBy: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand