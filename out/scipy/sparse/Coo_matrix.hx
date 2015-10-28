/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse", "coo_matrix") extern class Coo_matrix {
	public function arcsin(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function arcsinh(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function arctan(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function arctanh(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function asformat(format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function asfptype(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function astype(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ceil(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function conj(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function conjugate(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function copy(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function deg2rad(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function diagonal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function dot(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var dtype : Dynamic;
	public function expm1(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function floor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_shape(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getcol(j:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getformat(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getH(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getmaxprint(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getnnz(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getrow(i:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function log1p(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function max(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function maximum(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function mean(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function min(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function minimum(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function multiply(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	public var nnz : Dynamic;
	public function nonzero(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function power(n:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function rad2deg(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function reshape(shape:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function rint(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_shape(shape:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function setdiag(values:Dynamic, ?k:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var shape : Dynamic;
	public function sign(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sin(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sinh(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sqrt(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sum(?axis:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sum_duplicates(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tan(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tanh(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function toarray(?order:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tobsr(?blocksize:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tocoo(?copy:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tocsc(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tocsr(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function todense(?order:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function todia(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function todok(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tolil(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function transpose(?copy:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function trunc(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}