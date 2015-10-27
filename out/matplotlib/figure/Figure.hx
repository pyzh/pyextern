/* This file is generated, do not edit! */
package matplotlib.figure;
@:native("matplotlib.figure.Figure") extern class Figure {
	public function add_axes(args:haxe.extern.Rest<Dynamic>):Void;
	public function add_axobserver(func:Dynamic):Void;
	public function add_subplot(args:haxe.extern.Rest<Dynamic>):Void;
	public function autofmt_xdate(?bottom:Dynamic, ?rotation:Dynamic, ?ha:Dynamic):Void;
	public var axes : Dynamic;
	public function clear():Void;
	public function clf(?keep_observers:Dynamic = false):Void;
	public function colorbar(args:haxe.extern.Rest<Dynamic>):Void;
	public function contains(mouseevent:Dynamic):Void;
	public function delaxes(a:Dynamic):Void;
	public var dpi : Dynamic;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public function draw_artist(a:Dynamic):Void;
	public function figimage(args:haxe.extern.Rest<Dynamic>):Void;
	public function gca(args:haxe.extern.Rest<Dynamic>):Void;
	public function get_axes():Void;
	public function get_children():Void;
	public function get_default_bbox_extra_artists():Void;
	public function get_dpi():Void;
	public function get_edgecolor():Void;
	public function get_facecolor():Void;
	public function get_figheight():Void;
	public function get_figwidth():Void;
	public function get_frameon():Void;
	public function get_size_inches():Dynamic;
	public function get_tight_layout():Void;
	public function get_tightbbox(renderer:Dynamic):Void;
	public function get_window_extent(args:haxe.extern.Rest<Dynamic>):Void;
	public function ginput(?n:Dynamic, ?timeout:Dynamic, ?show_clicks:Dynamic = true, ?mouse_add:Dynamic, ?mouse_pop:Dynamic, ?mouse_stop:Dynamic):Void;
	public function hold(?b:Dynamic = null):Void;
	public function legend(args:haxe.extern.Rest<Dynamic>):Void;
	public function savefig(args:haxe.extern.Rest<Dynamic>):Void;
	public function sca(a:Dynamic):Void;
	public function set_canvas(canvas:Dynamic):Void;
	public function set_dpi(val:Dynamic):Void;
	public function set_edgecolor(color:Dynamic):Void;
	public function set_facecolor(color:Dynamic):Void;
	public function set_figheight(val:Dynamic):Void;
	public function set_figwidth(val:Dynamic):Void;
	public function set_frameon(b:Dynamic):Void;
	public function set_size_inches(w:Dynamic, h:Dynamic, ?forward:Dynamic = false):Void;
	public function set_tight_layout(tight:Dynamic):Void;
	public function show(?warn:Dynamic = true):Void;
	public function subplots_adjust(args:haxe.extern.Rest<Dynamic>):Void;
	public function suptitle(args:haxe.extern.Rest<Dynamic>):Void;
	public function text(args:haxe.extern.Rest<Dynamic>):Void;
	public function tight_layout(?renderer:Dynamic = null, ?pad:Dynamic, ?h_pad:Dynamic = null, ?w_pad:Dynamic = null, ?rect:Dynamic = null):Void;
	public function waitforbuttonpress(?timeout:Dynamic):Void;
}