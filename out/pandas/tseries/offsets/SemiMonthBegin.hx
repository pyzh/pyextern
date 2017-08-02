/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets", "SemiMonthBegin") extern class SemiMonthBegin {
	public function __add__(other:Dynamic):Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(other:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	public function ___init__(?n:Dynamic, ?day_of_month:Dynamic, ?normalize:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?n:Dynamic, ?day_of_month:Dynamic, ?normalize:Dynamic, ?kwds:python.KwArgs<Dynamic>):Void;
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
	static public var __module__ : Dynamic;
	public function __mul__(someInt:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
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
	public function __rmul__(someInt:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
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
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _adjust_dst : Dynamic;
	/**
		Handle specific apply logic for child classes
	**/
	public function _apply(n:Dynamic, other:Dynamic):Dynamic;
	/**
		Apply the correct day for each date in i
	**/
	public function _apply_index_days(i:Dynamic, roll:Dynamic):Dynamic;
	/**
		Offsets index to beginning of Period frequency
	**/
	public function _beg_apply_index(i:Dynamic, freq:Dynamic):Dynamic;
	static public var _cacheable : Dynamic;
	static public var _default_day_of_month : Dynamic;
	public function _determine_offset():Dynamic;
	/**
		Offsets index to end of Period frequency
	**/
	public function _end_apply_index(i:Dynamic, freq:Dynamic):Dynamic;
	static public function _from_name(?suffix:Dynamic):Dynamic;
	/**
		Return an array with the correct n for each date in i.
		
		The roll array is based on the fact that i gets rolled back to
		the first day of the month.
	**/
	public function _get_roll(i:Dynamic, before_day_of_month:Dynamic, after_day_of_month:Dynamic):Dynamic;
	static public var _kwds_use_relativedelta : Dynamic;
	static public var _min_day_of_month : Dynamic;
	static public var _normalize_cache : Dynamic;
	public function _params():Dynamic;
	static public var _prefix : Dynamic;
	public function _should_cache():Dynamic;
	static public var _use_relativedelta : Dynamic;
	public function apply(other:Dynamic):Dynamic;
	/**
		Vectorized apply of DateOffset to DatetimeIndex,
		raises NotImplentedError for offsets without a
		vectorized implementation
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		i : DatetimeIndex
		
		Returns
		-------
		y : DatetimeIndex
	**/
	public function apply_index(i:Dynamic):pandas.DatetimeIndex;
	public function copy():Dynamic;
	public var freqstr : Dynamic;
	public function isAnchored():Dynamic;
	public var name : Dynamic;
	public var nanos : Dynamic;
	static public var normalize : Dynamic;
	public function onOffset(dt:Dynamic):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset
	**/
	public function rollback(dt:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset
	**/
	public function rollforward(dt:Dynamic):Dynamic;
	public var rule_code : Dynamic;
}