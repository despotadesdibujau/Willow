tests
testRenderContentOnWithFixedLabelAndCommands

	| labeledView html |

	labeledView := LabeledWebView
		displaying: 'Field'
		boundTo: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :textField |  ])
		applying: [ :label | label setTitleTo: 'Some field' ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<label for="text-id1" title="Some field">Field</label><input value="" name="2" id="text-id1" type="text"/>'