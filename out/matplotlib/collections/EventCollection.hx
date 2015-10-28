/* This file is generated, do not edit! */
package matplotlib.collections;
@:pythonImport("matplotlib.collections", "EventCollection") extern class EventCollection {
	public function add_callback(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function add_checker(checker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function add_positions(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var aname : Dynamic;
	public function append_positions(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function autoscale(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function autoscale_None(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function changed(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function check_update(checker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function color(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function contains(mouseevent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function convert_xunits(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function convert_yunits(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function extend_positions(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function findobj(?match:Dynamic = null, ?include_self:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_agg_filter(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_alpha(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_animated(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_array(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_axes(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_children(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clim(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_box(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_on(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clip_path(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_cmap(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_color(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_colors(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_contains(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_dashes(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_datalim(transData:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_edgecolor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_edgecolors(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_facecolor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_facecolors(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_figure(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_gid(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_hatch(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_label(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linelength(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_lineoffset(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linestyle(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linestyles(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linewidth(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linewidths(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_offset_position(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_offset_transform(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_offsets(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_orientation(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_path_effects(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_paths(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_picker(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_pickradius(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_positions(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_rasterized(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_segments(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_sketch_params(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_snap(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_transform(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_transformed_clip_path_and_affine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_transforms(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_url(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_urls(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_visible(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_extent(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_zorder(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function have_units(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function hitlist(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_figure_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_horizontal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function set_antialiased(aa:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_antialiaseds(aa:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_array(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_axes(axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clim(?vmin:Dynamic = null, ?vmax:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_box(clipbox:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_on(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clip_path(path:Dynamic, ?transform:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_cmap(cmap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_color(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_colorbar(im:Dynamic, ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_contains(picker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_dashes(ls:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_edgecolor(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_edgecolors(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_facecolor(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_facecolors(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_figure(fig:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_gid(gid:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_hatch(hatch:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_label(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_linelength(linelength:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_lineoffset(lineoffset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_linestyle(ls:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_linestyles(ls:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_linewidth(lw:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_linewidths(lw:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_lod(on:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_lw(lw:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_norm(norm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_offset_position(offset_position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_offsets(offsets:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_orientation(?orientation:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_path_effects(path_effects:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_paths(segments:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_picker(picker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_pickradius(pr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_positions(positions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_rasterized(rasterized:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_segments(segments:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_sketch_params(?scale:Dynamic = null, ?length:Dynamic = null, ?randomness:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_snap(snap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_transform(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_url(url:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_urls(urls:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_verts(segments:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_visible(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_zorder(level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function switch_orientation(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_rgba(x:Dynamic, ?alpha:Dynamic = null, ?bytes:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update(props:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_from(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_scalarmappable(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var zorder : Dynamic;
}