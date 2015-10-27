/* This file is generated, do not edit! */
package matplotlib.collections;
@:native("matplotlib.collections.LineCollection") extern class LineCollection {
	public function add_callback(func:Dynamic):Void;
	public function add_checker(checker:Dynamic):Void;
	public var aname : Dynamic;
	public function autoscale():Void;
	public function autoscale_None():Void;
	public function changed():Void;
	public function check_update(checker:Dynamic):Void;
	public function color(c:Dynamic):Void;
	public function contains(mouseevent:Dynamic):Void;
	public function convert_xunits(x:Dynamic):Void;
	public function convert_yunits(y:Dynamic):Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public function findobj(?match:Dynamic = null, ?include_self:Dynamic = true):Void;
	public function get_agg_filter():Void;
	public function get_alpha():Void;
	public function get_animated():Void;
	public function get_array():Void;
	public function get_axes():Void;
	public function get_children():Void;
	public function get_clim():Void;
	public function get_clip_box():Void;
	public function get_clip_on():Void;
	public function get_clip_path():Void;
	public function get_cmap():Void;
	public function get_color():Void;
	public function get_colors():Void;
	public function get_contains():Void;
	public function get_dashes():Void;
	public function get_datalim(transData:Dynamic):Void;
	public function get_edgecolor():Void;
	public function get_edgecolors():Void;
	public function get_facecolor():Void;
	public function get_facecolors():Void;
	public function get_figure():Void;
	public function get_gid():Void;
	public function get_hatch():Void;
	public function get_label():Void;
	public function get_linestyle():Void;
	public function get_linestyles():Void;
	public function get_linewidth():Void;
	public function get_linewidths():Void;
	public function get_offset_position():Void;
	public function get_offset_transform():Void;
	public function get_offsets():Void;
	public function get_path_effects():Void;
	public function get_paths():Void;
	public function get_picker():Void;
	public function get_pickradius():Void;
	public function get_rasterized():Void;
	public function get_segments():Void;
	public function get_sketch_params():Dynamic;
	public function get_snap():Void;
	public function get_transform():Void;
	public function get_transformed_clip_path_and_affine():Void;
	public function get_transforms():Void;
	public function get_url():Void;
	public function get_urls():Void;
	public function get_visible():Void;
	public function get_window_extent(renderer:Dynamic):Void;
	public function get_zorder():Void;
	public function have_units():Void;
	public function hitlist(event:Dynamic):Void;
	public function is_figure_set():Void;
	public function is_transform_set():Void;
	public function pchanged():Void;
	public function pick(mouseevent:Dynamic):Void;
	public function pickable():Void;
	public function properties():Void;
	public function remove():Void;
	public function remove_callback(oid:Dynamic):Void;
	public function set(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_agg_filter(filter_func:Dynamic):Void;
	public function set_alpha(alpha:Dynamic):Void;
	public function set_animated(b:Dynamic):Void;
	public function set_antialiased(aa:Dynamic):Void;
	public function set_antialiaseds(aa:Dynamic):Void;
	public function set_array(A:Dynamic):Void;
	public function set_axes(axes:Dynamic):Void;
	public function set_clim(?vmin:Dynamic = null, ?vmax:Dynamic = null):Void;
	public function set_clip_box(clipbox:Dynamic):Void;
	public function set_clip_on(b:Dynamic):Void;
	public function set_clip_path(path:Dynamic, ?transform:Dynamic = null):Void;
	public function set_cmap(cmap:Dynamic):Void;
	public function set_color(c:Dynamic):Void;
	public function set_colorbar(im:Dynamic, ax:Dynamic):Void;
	public function set_contains(picker:Dynamic):Void;
	public function set_dashes(ls:Dynamic):Void;
	public function set_edgecolor(c:Dynamic):Void;
	public function set_edgecolors(c:Dynamic):Void;
	public function set_facecolor(c:Dynamic):Void;
	public function set_facecolors(c:Dynamic):Void;
	public function set_figure(fig:Dynamic):Void;
	public function set_gid(gid:Dynamic):Void;
	public function set_hatch(hatch:Dynamic):Void;
	public function set_label(s:Dynamic):Void;
	public function set_linestyle(ls:Dynamic):Void;
	public function set_linestyles(ls:Dynamic):Void;
	public function set_linewidth(lw:Dynamic):Void;
	public function set_linewidths(lw:Dynamic):Void;
	public function set_lod(on:Dynamic):Void;
	public function set_lw(lw:Dynamic):Void;
	public function set_norm(norm:Dynamic):Void;
	public function set_offset_position(offset_position:Dynamic):Void;
	public function set_offsets(offsets:Dynamic):Void;
	public function set_path_effects(path_effects:Dynamic):Void;
	public function set_paths(segments:Dynamic):Void;
	public function set_picker(picker:Dynamic):Void;
	public function set_pickradius(pr:Dynamic):Void;
	public function set_rasterized(rasterized:Dynamic):Void;
	public function set_segments(segments:Dynamic):Void;
	public function set_sketch_params(?scale:Dynamic = null, ?length:Dynamic = null, ?randomness:Dynamic = null):Void;
	public function set_snap(snap:Dynamic):Void;
	public function set_transform(t:Dynamic):Void;
	public function set_url(url:Dynamic):Void;
	public function set_urls(urls:Dynamic):Void;
	public function set_verts(segments:Dynamic):Void;
	public function set_visible(b:Dynamic):Void;
	public function set_zorder(level:Dynamic):Void;
	public function to_rgba(x:Dynamic, ?alpha:Dynamic = null, ?bytes:Dynamic = false):Void;
	public function update(props:Dynamic):Void;
	public function update_from(other:Dynamic):Void;
	public function update_scalarmappable():Void;
	public var zorder : Dynamic;
}