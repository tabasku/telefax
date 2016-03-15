namespace Telefax.Common {

    public class Settings : Granite.Services.Settings {
        
        private static Settings? settings = null;

        private Settings(){
          base ("org.pantheon.telefax.settings");
        }

        public static Settings get_default () {
            if (settings == null)
                settings = new Settings ();
            return settings;
        }
    }
}
