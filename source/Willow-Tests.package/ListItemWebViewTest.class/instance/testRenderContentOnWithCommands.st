tests-rendering
testRenderContentOnWithCommands

	| html |

	html := self
		renderUsing: [ :canvas | 
			| list |

			list := canvas unorderedList.
			list with: [ canvas render: (ListItemWebView itemizing: 'Item' containedIn: list applying: [ :listItem | listItem addClass willow ]) ] ].

	self assert: html equals: '<ul><li class="willow">Item</li></ul>'