using Gtk;

namespace telefax {

    public class MainWindow : Window{

        public MainWindow(){
           setup_window();
           create_layout();
        }

        private void setup_window () {
            this.title =_("Telegram");
            this.height_request = 350;
            this.width_request = 400;
            this.window_position = Gtk.WindowPosition.CENTER;

            //TODO: Icon name
            this.icon_name = "TODO";

            //TODO: Load state
            // set the size based on saved settings
            //var saved_state = Settings.SavedState.get_default ();
            //this.set_default_size (saved_state.window_width, saved_state.window_height);

            // Maximize window if necessary
            //switch (saved_state.window_state) {
            //    case Settings.WindowState.MAXIMIZED:
            //        window_maximized = true;
            //        this.maximize ();
            //        break;
            //    default:
            //        break;
            //}


            this.destroy.connect (on_quit);
            this.show ();
            
        }

        private void create_layout(){

            //TODO: Application structure here...

        }

        private void on_quit () {
        
            //TODO: Save state
        }
    }
}
