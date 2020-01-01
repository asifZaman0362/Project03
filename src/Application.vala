public class MyApp : Gtk.Application {
    
    public MyApp() {
        Object (
            application_id: "com.github.asifZaman0362.project03",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height  = 300;
        main_window.default_width   = 300;
        main_window.title           = "Daily Tracker";
        
        var button = new Gtk.Button.with_label("Show tasks");
        button.margin = 12;
        button.margin_top = 130;
        button.margin_bottom = 130;
        button.clicked.connect(() => OnClick(main_window, button));
        
        main_window.add(button);
        
        main_window.show_all();
    }
    
    public void OnClick(Gtk.ApplicationWindow window, Gtk.Button button) {
        window.remove(button);
        var label = new Gtk.Label("You have no tasks.");
        label.margin = 12;
        window.add(label);
        window.show_all();
    }
    
    public static int main(string[] args) {
        var app = new MyApp();
        return app.run(args);
    }
    
}
