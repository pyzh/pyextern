/* This file is generated, do not edit! */
package matplotlib.lines;
@:native("matplotlib.lines.Line2D") extern class Line2D {
	public function contains(mouseevent:Dynamic):Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public var drawStyleKeys : Dynamic;
	public var drawStyles : Dynamic;
	public var fillStyles : Dynamic;
	public var filled_markers : Dynamic;
	public function get_aa():Void;
	public function get_antialiased():Void;
	public function get_c():Void;
	public function get_color():Void;
	public function get_dash_capstyle():Void;
	public function get_dash_joinstyle():Void;
	public function get_data(?orig:Dynamic = true):Void;
	public function get_drawstyle():Void;
	public function get_fillstyle():Void;
	public function get_linestyle():Void;
	public function get_linewidth():Void;
	public function get_ls():Void;
	public function get_lw():Void;
	public function get_marker():Void;
	public function get_markeredgecolor():Void;
	public function get_markeredgewidth():Void;
	public function get_markerfacecolor():Void;
	public function get_markerfacecoloralt():Void;
	public function get_markersize():Void;
	public function get_markevery():Void;
	public function get_mec():Void;
	public function get_mew():Void;
	public function get_mfc():Void;
	public function get_mfcalt(?alt:Dynamic = false):Void;
	public function get_ms():Void;
	public function get_path():Void;
	public function get_pickradius():Void;
	public function get_solid_capstyle():Void;
	public function get_solid_joinstyle():Void;
	public function get_window_extent(renderer:Dynamic):Void;
	public function get_xdata(?orig:Dynamic = true):Void;
	public function get_xydata():Void;
	public function get_ydata(?orig:Dynamic = true):Void;
	public function is_dashed():Void;
	public var lineStyles : Dynamic;
	public var markers : Dynamic;
	public function recache(?always:Dynamic = false):Void;
	public function recache_always():Void;
	public function set_aa(val:Dynamic):Void;
	public function set_antialiased(b:Dynamic):Void;
	public function set_axes(ax:Dynamic):Void;
	public function set_c(val:Dynamic):Void;
	public function set_color(color:Dynamic):Void;
	public function set_dash_capstyle(s:Dynamic):Void;
	public function set_dash_joinstyle(s:Dynamic):Void;
	public function set_dashes(seq:Dynamic):Void;
	public function set_data(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_drawstyle(drawstyle:Dynamic):Void;
	public function set_fillstyle(fs:Dynamic):Void;
	public function set_linestyle(linestyle:Dynamic):Void;
	public function set_linewidth(w:Dynamic):Void;
	public function set_ls(val:Dynamic):Void;
	public function set_lw(val:Dynamic):Void;
	public function set_marker(marker:Dynamic):Void;
	public function set_markeredgecolor(ec:Dynamic):Void;
	public function set_markeredgewidth(ew:Dynamic):Void;
	public function set_markerfacecolor(fc:Dynamic):Void;
	public function set_markerfacecoloralt(fc:Dynamic):Void;
	public function set_markersize(sz:Dynamic):Void;
	public function set_markevery(every:Dynamic):Void;
	public function set_mec(val:Dynamic):Void;
	public function set_mew(val:Dynamic):Void;
	public function set_mfc(val:Dynamic):Void;
	public function set_mfcalt(val:Dynamic):Void;
	public function set_ms(val:Dynamic):Void;
	public function set_picker(p:Dynamic):Void;
	public function set_pickradius(d:Dynamic):Void;
	public function set_solid_capstyle(s:Dynamic):Void;
	public function set_solid_joinstyle(s:Dynamic):Void;
	public function set_transform(t:Dynamic):Void;
	public function set_xdata(x:Dynamic):Void;
	public function set_ydata(y:Dynamic):Void;
	public function update_from(other:Dynamic):Void;
	public var validCap : Dynamic;
	public var validJoin : Dynamic;
	public var zorder : Dynamic;
}