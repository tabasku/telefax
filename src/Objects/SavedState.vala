namespace Telefax.Common {

    public class SavedState : Granite.Services.Settings {
        public int window_width { get; set; }
        public int window_height { get; set; }
        public WindowState window_state { get; set; }

        private static SavedState? saved_state = null;

        public static SavedState get_default () {
            if (saved_state == null)
                saved_state = new SavedState ();
            return saved_state;
        }

        private SavedState () {
            base ("org.pantheon.telefax.saved-state");
        }
    }

    public enum WindowState {
        NORMAL,
        MAXIMIZED,
        FULLSCREEN
    }
}
