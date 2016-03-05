using Granite;

namespace Telefax {

	public class Telefax : Granite.Application {

		public static MainWindow main_window { get; private set; }

 		construct {
			build_data_dir = Constants.DATADIR;
	        build_pkg_data_dir = Constants.PKGDATADIR;
	        build_release_name = Constants.RELEASE_NAME;
	        build_version = Constants.VERSION;
	        program_name = "Telegram";
	        exec_name = "telegram";

	        application_id = "org.pantheon.telegram";
	        app_icon = "TODO";
        	app_launcher = "telegram.desktop";

	        main_url = "https://launchpad.net/noise";
        	bug_url = "https://bugs.launchpad.net/noise/+filebug";
    
        	main_url = "https://github.com/tabasku/telefax";
        	bug_url = "https://github.com/tabasku/telefax/issues";

        	about_authors = {"Joni Kurunsaari <joni.kurunsaari@gmail.com>",
                         	 "Jussi Virtanen <virtanenjt@gmail.com>"};
		}

		public Telefax(){
			if (DEBUG)
                Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.DEBUG;
           	else
                Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.INFO;
		}

		protected override void activate () {

        	if (main_window == null) {
				main_window = new MainWindow();        	    
				main_window.set_application (this);
			}

			main_window.present ();
		}
	}
}
