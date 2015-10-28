/* This file is generated, do not edit! */
package pandas;
@:pythonImport("pandas", "DatetimeIndex") extern class DatetimeIndex {
	public function all(?other:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function any(?other:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function append(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function argmax(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function argmin(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function argsort(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function asof(label:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function asof_locs(where:Dynamic, mask:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function astype(dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function copy(?names:Dynamic = null, ?name:Dynamic = null, ?dtype:Dynamic = null, ?deep:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function delete(loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function diff(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function difference(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function drop(labels:Dynamic, ?errors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function drop_duplicates(?keep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function duplicated(?keep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function equals(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function factorize(?sort:Dynamic = false, ?na_sentinel:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function format(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_duplicates(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_indexer(target:Dynamic, ?method:Dynamic = null, ?limit:Dynamic = null, ?tolerance:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_indexer_for(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_indexer_non_unique(target:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_level_values(level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_loc(key:Dynamic, ?method:Dynamic = null, ?tolerance:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_slice_bound(label:Dynamic, side:Dynamic, kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_value(series:Dynamic, key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_value_maybe_box(series:Dynamic, key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_values(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function groupby(f:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function holds_integer(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function identical(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function indexer_at_time(time:Dynamic, ?asof:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function indexer_between_time(start_time:Dynamic, end_time:Dynamic, ?include_start:Dynamic = true, ?include_end:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function insert(loc:Dynamic, item:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function intersection(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_boolean(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_categorical(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_floating(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_integer(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_lexsorted_for_tuple(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_mixed(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_numeric(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_object(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_type_compatible(typ:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function isin(values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function item(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function join(other:Dynamic, ?how:Dynamic, ?level:Dynamic = null, ?return_indexers:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function map(f:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function max(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function min(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function normalize(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nunique(?dropna:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function order(?return_indexer:Dynamic = false, ?ascending:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function putmask(mask:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ravel(?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function reindex(target:Dynamic, ?method:Dynamic = null, ?level:Dynamic = null, ?limit:Dynamic = null, ?tolerance:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function rename(name:Dynamic, ?inplace:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function repeat(repeats:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function searchsorted(key:Dynamic, ?side:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_names(names:Dynamic, ?level:Dynamic = null, ?inplace:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_value(arr:Dynamic, key:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function shift(n:Dynamic, ?freq:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function slice_indexer(?start:Dynamic = null, ?end:Dynamic = null, ?step:Dynamic = null, ?kind:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function slice_locs(?start:Dynamic = null, ?end:Dynamic = null, ?step:Dynamic = null, ?kind:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function snap(?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sort(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sort_values(?return_indexer:Dynamic = false, ?ascending:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sortlevel(?level:Dynamic = null, ?ascending:Dynamic = true, ?sort_remaining:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function str(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function strftime(date_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function summary(?name:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sym_diff(other:Dynamic, ?result_name:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function take(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_datetime(?dayfirst:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_julian_date(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_native_types(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_period(?freq:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_perioddelta(freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_pydatetime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_series(?keep_tz:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tolist(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function transpose(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tz_convert(tz:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tz_localize(tz:Dynamic, ?ambiguous:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function union(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function union_many(others:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function unique(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function value_counts(?normalize:Dynamic = false, ?sort:Dynamic = true, ?ascending:Dynamic = false, ?bins:Dynamic = null, ?dropna:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function view(?cls:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}