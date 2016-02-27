using Gtk;

namespace telefax.ui {

        public class MainWindow : Window {

        public MainWindow(){
    			this.title = "Telefax main window in telefax.ui namespace";
    			this.border_width = 10;
    			this.window_position = WindowPosition.CENTER;
    			this.set_default_size (350, 70);
    			this.destroy.connect (Gtk.main_quit);

    			this.show_all();
    		}
        }
}
