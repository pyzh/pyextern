/* This file is generated, do not edit! */
package torch._tensor_str;
@:pythonImport("torch._tensor_str") extern class _Tensor_str_Module {
	static public var PRINT_OPTS : Dynamic;
	static public var SCALE_FORMAT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __repr_row(row:Dynamic, indent:Dynamic, fmt:Dynamic, scale:Dynamic, sz:Dynamic, ?truncate:Dynamic):Dynamic;
	static public var __spec__ : Dynamic;
	static public function _matrix_str(self:Dynamic, ?indent:Dynamic, ?formatter:Dynamic, ?force_truncate:Dynamic):Dynamic;
	static public function _number_format(tensor:Dynamic, ?min_sz:Dynamic):Dynamic;
	static public function _range(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _str(self:Dynamic):Dynamic;
	static public function _tensor_str(self:Dynamic):Dynamic;
	static public function _vector_str(self:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set options for printing. Items shamelessly taken from Numpy
		
		Args:
		    precision: Number of digits of precision for floating point output
		        (default 8).
		    threshold: Total number of array elements which trigger summarization
		        rather than full repr (default 1000).
		    edgeitems: Number of array items in summary at beginning and end of
		        each dimension (default 3).
		    linewidth: The number of characters per line for the purpose of
		        inserting line breaks (default 80). Thresholded matricies will
		        ignore this parameter.
		    profile: Sane defaults for pretty printing. Can override with any of
		        the above options. (default, short, full)
	**/
	static public function set_printoptions(?precision:Dynamic, ?threshold:Dynamic, ?edgeitems:Dynamic, ?linewidth:Dynamic, ?profile:Dynamic):Dynamic;
}