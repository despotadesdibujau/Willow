rendering
renderHeadingOn: aCanvas

	| heading |

	heading := aCanvas tableHeading.
	commandToCell applyTo: heading on: aCanvas.
	commandToHeading applyTo: heading on: aCanvas.
	heading with: title