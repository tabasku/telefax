namespace telefax {

	/**
 	* Application entry point
 	*/
	public static int main ( string[] args ) {
	    Gtk.init (ref args);

		
 		var telefax = new Telefax();
 	
		return telefax.run(args);
	}
}
