/* This file is generated, do not edit! */
package matplotlib.artist;
@:pythonImport("matplotlib.artist", "Artist") extern class Artist {
	public function add_callback(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var aname : Dynamic;
	public function contains(mouseevent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function convert_xunits(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function convert_yunits(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function findobj(?match:Dynamic = null, ?include_self:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_agg_filter(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_alpha(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_animated(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_axes(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_children(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_box(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_on(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_path(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_contains(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_figure(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_gid(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_label(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_path_effects(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_picker(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_rasterized(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_sketch_params(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_snap(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_transform(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_transformed_clip_path_and_affine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_url(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_visible(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_extent(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_zorder(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function have_units(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function hitlist(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_figure_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_transform_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pchanged(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pick(mouseevent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pickable(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function properties(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function remove(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function remove_callback(oid:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_agg_filter(filter_func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_alpha(alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_animated(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_axes(axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_box(clipbox:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_on(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_path(path:Dynamic, ?transform:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_contains(picker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_figure(fig:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_gid(gid:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_label(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_lod(on:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_path_effects(path_effects:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_picker(picker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_rasterized(rasterized:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_sketch_params(?scale:Dynamic = null, ?length:Dynamic = null, ?randomness:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_snap(snap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_transform(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_url(url:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_visible(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_zorder(level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update(props:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_from(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var zorder : Dynamic;
}