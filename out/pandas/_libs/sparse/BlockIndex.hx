/* This file is generated, do not edit! */
package pandas._libs.sparse;
@:pythonImport("pandas._libs.sparse", "BlockIndex") extern class BlockIndex {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var blengths : Dynamic;
	public var blocs : Dynamic;
	/**
		Check:
		- Locations are in ascending order
		- No overlapping blocks
		- Blocks to not start after end of index, nor extend beyond end
	**/
	public function check_integrity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Intersect two BlockIndex objects
		
		Parameters
		----------
		
		Returns
		-------
		intersection : BlockIndex
	**/
	public function intersect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var length : Dynamic;
	/**
		Return the internal location if value exists on given index.
		Return -1 otherwise.
	**/
	public function lookup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectorized lookup, returns ndarray[int32_t]
	**/
	public function lookup_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Combine together two BlockIndex objects, accepting indices if contained
		in one or the other
		
		Parameters
		----------
		other : SparseIndex
		
		Notes
		-----
		union is a protected keyword in Cython, hence make_union
		
		Returns
		-------
		union : BlockIndex
	**/
	public function make_union(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var nblocks : Dynamic;
	public var ngaps : Dynamic;
	public var npoints : Dynamic;
	public function put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reindex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function to_block_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function to_int_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
}