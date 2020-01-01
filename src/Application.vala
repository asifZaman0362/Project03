/*
* Copyright (c) 2011-2020 Asif Zaman (https://github.com/asifZaman0362)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Asif Zaman <zero362001@gmail.com>
*/

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
