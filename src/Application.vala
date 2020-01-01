public class Application : Gtk.Application {
    
    public Application() {
        Object(
            application_id: "com.github.asifZaman0362.project03",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate() {
        var window_main = new Gtk.ApplicationWindow(this);
        window_main.default_width   = 800;
        window_main.default_height  = 600;
        window_main.title           = "Tasks";
        var label = new Gtk.Label("Nothing here yet :(");
        label.margin = 10;
        window_main.add(label);
        window_main.show_all();
    }
    
    public static int main(string[] args) {
        var app = new Application();
        return app.run(args);
    }
}
