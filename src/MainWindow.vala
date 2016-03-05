using Telefax.Common;

namespace Telefax {

    public class MainWindow : Gtk.Window{

        private bool window_maximized = false;
        private int window_width = 0;
        private int window_height = 0;

        public MainWindow(){
           setup_window();
           create_layout();
        }

        private void setup_window () {
            this.title =_("Telefax");

            //TODO: Icon name
            this.icon_name = "TODO";

            // set the size based on saved settings
            var saved_state = SavedState.get_default ();
            
            this.set_default_size (saved_state.window_width, saved_state.window_height);

            // Maximize window if necessary
            switch (saved_state.window_state) {
                case WindowState.MAXIMIZED:
                    window_maximized = true;
                    this.maximize ();
                    break;
                default:
                    break;
            }


            this.destroy.connect (on_quit);
            this.show ();
            
        }

        private void create_layout(){

            //TODO: Application structure here...

        }

        private void on_quit () {
        
            // Now set the selected view
            var saved_state = SavedState.get_default ();
            
            // Save window state
            if (window_maximized)
                saved_state.window_state = WindowState.MAXIMIZED;
            else
                saved_state.window_state = WindowState.NORMAL;

            saved_state.window_width = window_width;
            saved_state.window_height = window_height;
        }
        
        public override bool configure_event (Gdk.EventConfigure event) {
            // Get window dimensions.
            window_maximized = (get_window ().get_state () == Gdk.WindowState.MAXIMIZED);

            if (window_maximized == false)
                get_size (out window_width, out window_height);

            return base.configure_event (event);
        }
    }
}
