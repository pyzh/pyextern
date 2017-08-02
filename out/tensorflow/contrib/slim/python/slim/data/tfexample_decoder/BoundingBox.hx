/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.tfexample_decoder;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.tfexample_decoder", "BoundingBox") extern class BoundingBox {
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
		Initialize the bounding box handler.
		
		Args:
		  keys: A list of four key names representing the ymin, xmin, ymax, mmax
		  prefix: An optional prefix for each of the bounding box keys.
		    If provided, `prefix` is appended to each key in `keys`.
		
		Raises:
		  ValueError: if keys is not `None` and also not a list of exactly 4 keys
	**/
	@:native("__init__")
	public function ___init__(?keys:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Initialize the bounding box handler.
		
		Args:
		  keys: A list of four key names representing the ymin, xmin, ymax, mmax
		  prefix: An optional prefix for each of the bounding box keys.
		    If provided, `prefix` is appended to each key in `keys`.
		
		Raises:
		  ValueError: if keys is not `None` and also not a list of exactly 4 keys
	**/
	public function new(?keys:Dynamic, ?prefix:Dynamic):Void;
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
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var keys : Dynamic;
	/**
		Maps the given dictionary of tensors to a contatenated list of bboxes.
		
		Args:
		  keys_to_tensors: a mapping of TF-Example keys to parsed tensors.
		
		Returns:
		  [num_boxes, 4] tensor of bounding box coordinates,
		    i.e. 1 bounding box per row, in order [y_min, x_min, y_max, x_max].
	**/
	public function tensors_to_item(keys_to_tensors:Dynamic):Dynamic;
}