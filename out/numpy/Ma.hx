/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy.ma") extern class Ma {
	static public function all(self:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function allclose(a:Dynamic, b:Dynamic, ?masked_equal:Dynamic = true, ?rtol:Dynamic, ?atol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function allequal(a:Dynamic, b:Dynamic, ?fill_value:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function anom(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function anomalies(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function any(self:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function append(a:Dynamic, b:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function apply_along_axis(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arange(start:Dynamic, stop:Dynamic, step:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function argmax(a:Dynamic, ?axis:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function argmin(a:Dynamic, ?axis:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function argsort(a:Dynamic, ?axis:Dynamic = null, ?kind:Dynamic, ?order:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function around(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function array(data:Dynamic, ?dtype:Dynamic = null, ?copy:Dynamic = false, ?order:Dynamic = false, ?mask:Dynamic = false, ?fill_value:Dynamic = null, ?keep_mask:Dynamic = true, ?hard_mask:Dynamic = false, ?shrink:Dynamic = true, ?subok:Dynamic = true, ?ndmin:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function asarray(a:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function atleast_1d(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function atleast_2d(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function atleast_3d(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function average(a:Dynamic, ?axis:Dynamic = null, ?weights:Dynamic = null, ?returned:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function choose(indices:Dynamic, choices:Dynamic, ?out:Dynamic = null, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clip(a:Dynamic, a_min:Dynamic, a_max:Dynamic, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clump_masked(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clump_unmasked(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function column_stack(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function common_fill_value(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compress_cols(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compress_rowcols(x:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compress_rows(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compressed(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function concatenate(arrays:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function conjugate(x:Dynamic, out:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function copy(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function corrcoef(x:Dynamic, ?y:Dynamic = null, ?rowvar:Dynamic = true, ?bias:Dynamic, ?allow_masked:Dynamic = true, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function count(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function count_masked(arr:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cov(x:Dynamic, ?y:Dynamic = null, ?rowvar:Dynamic = true, ?bias:Dynamic = false, ?allow_masked:Dynamic = true, ?ddof:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cumprod(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cumsum(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fill_value(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function diag(v:Dynamic, ?k:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dot(a:Dynamic, b:Dynamic, ?strict:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dstack(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dump(a:Dynamic, F:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dumps(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ediff1d(arr:Dynamic, ?to_end:Dynamic = null, ?to_begin:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function empty(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function empty_like(a:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic, ?subok:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expand_dims(x:Dynamic, axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function filled(a:Dynamic, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fix_invalid(a:Dynamic, ?mask:Dynamic = false, ?copy:Dynamic = true, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function flatnotmasked_contiguous(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function flatnotmasked_edges(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function frombuffer(buffer:Dynamic, ?dtype:Dynamic, ?count:Dynamic, ?offset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromfunction(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function getdata(a:Dynamic, ?subok:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function getmask(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function getmaskarray(arr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function harden_mask(self:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hstack(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function identity(n:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function indices(dimensions:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inner(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function innerproduct(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_mask(m:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_masked(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function load(F:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function loads(strg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_mask(m:Dynamic, ?copy:Dynamic = false, ?shrink:Dynamic = true, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_mask_descr(ndtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_mask_none(newshape:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mask_cols(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mask_or(m1:Dynamic, m2:Dynamic, ?copy:Dynamic = false, ?shrink:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mask_rowcols(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mask_rows(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_all(shape:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_all_like(arr:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var masked_array : Dynamic;
	static public function masked_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_greater(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_greater_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_inside(x:Dynamic, v1:Dynamic, v2:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_invalid(a:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_less(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_less_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_not_equal(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_object(x:Dynamic, value:Dynamic, ?copy:Dynamic = true, ?shrink:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_outside(x:Dynamic, v1:Dynamic, v2:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_values(x:Dynamic, value:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?copy:Dynamic = true, ?shrink:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function masked_where(condition:Dynamic, a:Dynamic, ?copy:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var MaskType : Dynamic;
	static public function max(obj:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maximum_fill_value(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mean(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function median(a:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?overwrite_input:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function min(obj:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mr_(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function nonzero(self:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function notmasked_contiguous(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function notmasked_edges(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ones(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function outer(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function outerproduct(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?cov:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function power(a:Dynamic, b:Dynamic, ?third:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function prod(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ptp(obj:Dynamic, ?axis:Dynamic = null, ?out:Dynamic = null, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ravel(self:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function reshape(a:Dynamic, new_shape:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function resize(x:Dynamic, new_shape:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function round(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function row_stack(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function set_fill_value(a:Dynamic, fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function shape(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function size(obj:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function soften_mask(self:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic = null, ?endwith:Dynamic = true, ?fill_value:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function squeeze(a:Dynamic, ?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function std(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sum(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function swapaxes(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function trace(self:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function transpose(a:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function vander(x:Dynamic, ?n:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("var")
	static public function _var(self:Dynamic, ?axis:Dynamic = null, ?dtype:Dynamic = null, ?out:Dynamic = null, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function vstack(tup:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}