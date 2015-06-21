CKEDITOR.plugins.add( 'fieldset', {

	// Register the icons.
	icons: 'fieldset',

	// The plugin initialization logic goes inside this method.
	init: function( editor ) {

		// Define an editor command that opens our dialog window.
		editor.addCommand( 'fieldset', new CKEDITOR.dialogCommand( 'fieldsetDialog' ) );

		// Create a toolbar button that executes the above command.
		editor.ui.addButton( 'Fieldset', {

			// The text part of the button (if available) and the tooltip.
			label: 'Insert a Collapsible Fieldset',

			// The command to execute on click.
			command: 'fieldset',

			icon: this.path + 'icons/fieldset.png'

		});

		// Register our dialog file -- this.path is the plugin folder path.
		CKEDITOR.dialog.add( 'fieldsetDialog', this.path + 'dialogs/fieldset.js' );
	}
});