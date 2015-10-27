/* This file is generated, do not edit! */
package matplotlib.patches;
@:native("matplotlib.patches.Patch") extern class Patch {
	public function contains(mouseevent:Dynamic, ?radius:Dynamic = null):Void;
	public function contains_point(point:Dynamic, ?radius:Dynamic = null):Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public var fill : Dynamic;
	public function get_aa():Void;
	public function get_antialiased():Void;
	public function get_capstyle():Void;
	public function get_data_transform():Void;
	public function get_ec():Void;
	public function get_edgecolor():Void;
	public function get_extents():Void;
	public function get_facecolor():Void;
	public function get_fc():Void;
	public function get_fill():Void;
	public function get_hatch():Void;
	public function get_joinstyle():Void;
	public function get_linestyle():Void;
	public function get_linewidth():Void;
	public function get_ls():Void;
	public function get_lw():Void;
	public function get_patch_transform():Void;
	public function get_path():Void;
	public function get_transform():Void;
	public function get_verts():Void;
	public function get_window_extent(?renderer:Dynamic = null):Void;
	public function set_aa(aa:Dynamic):Void;
	public function set_alpha(alpha:Dynamic):Void;
	public function set_antialiased(aa:Dynamic):Void;
	public function set_capstyle(s:Dynamic):Void;
	public function set_color(c:Dynamic):Void;
	public function set_ec(color:Dynamic):Void;
	public function set_edgecolor(color:Dynamic):Void;
	public function set_facecolor(color:Dynamic):Void;
	public function set_fc(color:Dynamic):Void;
	public function set_fill(b:Dynamic):Void;
	public function set_hatch(hatch:Dynamic):Void;
	public function set_joinstyle(s:Dynamic):Void;
	public function set_linestyle(ls:Dynamic):Void;
	public function set_linewidth(w:Dynamic):Void;
	public function set_ls(ls:Dynamic):Void;
	public function set_lw(lw:Dynamic):Void;
	public function update_from(other:Dynamic):Void;
	public var validCap : Dynamic;
	public var validJoin : Dynamic;
	public var zorder : Dynamic;
}