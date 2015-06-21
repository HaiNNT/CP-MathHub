// Our dialog definition.
CKEDITOR.dialog.add( 'fieldsetDialog', function( editor ) {
	return {

		// Basic properties of the dialog window: title, minimum size.
		title: 'Gắn gợi ý.',
		minWidth: 400,
		minHeight: 200,

		// Dialog window content definition.
		contents: [
			{
				// Definition of the Basic Settings dialog tab (page).
				id: 'tab-basic',
				label: 'Settings',

				// The tab content.
				elements: [
					{
						type: 'text',
						id: 'title',
						label: 'Title',
						validate: CKEDITOR.dialog.validate.notEmpty( "Title field cannot be empty." )
					},
					{
						type: 'textarea',
						id: 'content',
						label: 'Content',
						'default': '',
       				 	validate: function() {
				            if ( this.getValue().length < 5 ) {
				                api.openMsgDialog( 'The content is too short.' );
				                return false;
			            	}
			       		}
					}
				]
			},
		],

		// This method is invoked once a user clicks the OK button, confirming the dialog.
		onOk: function() {

			// The context of this function is the dialog object itself.
			// http://docs.ckeditor.com/#!/api/CKEDITOR.dialog
			var dialog = this;

			// Create a new <fieldset> element.
			var fieldsetTitle = editor.document.createElement( 'fieldset' );
			fieldsetTitle.setAttribute( 'class', 'collapsible');
			fieldsetTitle.setText( dialog.getValueOf( 'tab-basic', 'title' ) );
			editor.insertElement( fieldsetTitle );

			var fieldsetContainer = editor.document.createElement( 'fieldset' );
			fieldsetContainer.setAttribute( 'class', 'container');
			fieldsetContainer.setText( dialog.getValueOf( 'tab-basic', 'content' ) );
			// Finally, insert the element into the editor at the caret position.
			editor.insertElement( fieldsetContainer );
		}
	};
});