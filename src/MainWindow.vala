using Telefax.Common;

namespace Telefax {

    public class MainWindow : BaseMainWindow {

        public MainWindow(){
            debug("testing");
            this.title =_("Telefax");
            //TODO: Icon name
            this.icon_name = "TODO";
           
            create_layout();
        }

        private void create_layout(){

            //TODO: Application structure here...

        }

        private void login_completed()
        {
            debug("Dummy login completed");
        }

      
    }
}
