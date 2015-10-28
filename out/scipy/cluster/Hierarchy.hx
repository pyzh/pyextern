/* This file is generated, do not edit! */
package scipy.cluster;
@:pythonImport("scipy.cluster.hierarchy") extern class Hierarchy {
	static public function average(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function centroid(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function complete(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cophenet(Z:Dynamic, ?Y:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function correspond(Z:Dynamic, Y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dendrogram(Z:Dynamic, ?p:Dynamic, ?truncate_mode:Dynamic = null, ?color_threshold:Dynamic = null, ?get_leaves:Dynamic = true, ?orientation:Dynamic, ?labels:Dynamic = null, ?count_sort:Dynamic = false, ?distance_sort:Dynamic = false, ?show_leaf_counts:Dynamic = true, ?no_plot:Dynamic = false, ?no_labels:Dynamic = false, ?color_list:Dynamic = null, ?leaf_font_size:Dynamic = null, ?leaf_rotation:Dynamic = null, ?leaf_label_func:Dynamic = null, ?no_leaves:Dynamic = false, ?show_contracted:Dynamic = false, ?link_color_func:Dynamic = null, ?ax:Dynamic = null, ?above_threshold_color:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fcluster(Z:Dynamic, t:Dynamic, ?criterion:Dynamic, ?depth:Dynamic, ?R:Dynamic = null, ?monocrit:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fclusterdata(X:Dynamic, t:Dynamic, ?criterion:Dynamic, ?metric:Dynamic, ?depth:Dynamic, ?method:Dynamic, ?R:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function from_mlab_linkage(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inconsistent(Z:Dynamic, ?d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_isomorphic(T1:Dynamic, T2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_monotonic(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_valid_im(R:Dynamic, ?warning:Dynamic = false, ?_throw:Dynamic = false, ?name:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_valid_linkage(Z:Dynamic, ?warning:Dynamic = false, ?_throw:Dynamic = false, ?name:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function leaders(Z:Dynamic, T:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function leaves_list(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function linkage(y:Dynamic, ?method:Dynamic, ?metric:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maxdists(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maxinconsts(Z:Dynamic, R:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maxRstat(Z:Dynamic, R:Dynamic, i:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function median(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function num_obs_linkage(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function set_link_color_palette(palette:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function single(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_mlab_linkage(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_tree(Z:Dynamic, ?rd:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ward(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function weighted(y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}