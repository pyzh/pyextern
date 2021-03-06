/* This file is generated, do not edit! */
package tensorflow.python.ops.tensor_array_ops;
@:pythonImport("tensorflow.python.ops.tensor_array_ops", "TensorArray") extern class TensorArray {
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
		Construct a new TensorArray or wrap an existing TensorArray handle.
		
		A note about the parameter `name`:
		
		The name of the `TensorArray` (even if passed in) is uniquified: each time
		a new `TensorArray` is created at runtime it is assigned its own name for
		the duration of the run.  This avoids name collisions if a `TensorArray`
		is created within a `while_loop`.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if handle is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: Boolean (optional, default: True).  If True, clear
		    TensorArray values after reading them.  This disables read-many
		    semantics, but allows early release of memory.
		  tensor_array_name: (optional) Python string: the name of the TensorArray.
		    This is used when creating the TensorArray handle.  If this value is
		    set, handle should be None.
		  handle: (optional) A `Tensor` handle to an existing TensorArray.  If this
		    is set, tensor_array_name should be None.
		  flow: (optional) A float `Tensor` scalar coming from an existing
		    `TensorArray.flow`.
		  infer_shape: (optional, default: True) If True, shape inference
		    is enabled.  In this case, all elements must have the same shape.
		  element_shape: (optional, default: None) A `TensorShape` object specifying
		    the shape constraints of each of the elements of the TensorArray.
		    Need not be fully defined.
		  colocate_with_first_write_call: If `True`, the TensorArray will be
		    colocated on the same device as the the Tensor used on its first write
		    (write operations include `write`, `unstack`, and `split`).  If `False`,
		    the TensorArray will be placed on the device determined by the
		    device context available during its initialization.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: if both handle and tensor_array_name are provided.
		  TypeError: if handle is provided but is not a Tensor.
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, ?size:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?handle:Dynamic, ?flow:Dynamic, ?infer_shape:Dynamic, ?element_shape:Dynamic, ?colocate_with_first_write_call:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new TensorArray or wrap an existing TensorArray handle.
		
		A note about the parameter `name`:
		
		The name of the `TensorArray` (even if passed in) is uniquified: each time
		a new `TensorArray` is created at runtime it is assigned its own name for
		the duration of the run.  This avoids name collisions if a `TensorArray`
		is created within a `while_loop`.
		
		Args:
		  dtype: (required) data type of the TensorArray.
		  size: (optional) int32 scalar `Tensor`: the size of the TensorArray.
		    Required if handle is not provided.
		  dynamic_size: (optional) Python bool: If true, writes to the TensorArray
		    can grow the TensorArray past its initial size.  Default: False.
		  clear_after_read: Boolean (optional, default: True).  If True, clear
		    TensorArray values after reading them.  This disables read-many
		    semantics, but allows early release of memory.
		  tensor_array_name: (optional) Python string: the name of the TensorArray.
		    This is used when creating the TensorArray handle.  If this value is
		    set, handle should be None.
		  handle: (optional) A `Tensor` handle to an existing TensorArray.  If this
		    is set, tensor_array_name should be None.
		  flow: (optional) A float `Tensor` scalar coming from an existing
		    `TensorArray.flow`.
		  infer_shape: (optional, default: True) If True, shape inference
		    is enabled.  In this case, all elements must have the same shape.
		  element_shape: (optional, default: None) A `TensorShape` object specifying
		    the shape constraints of each of the elements of the TensorArray.
		    Need not be fully defined.
		  colocate_with_first_write_call: If `True`, the TensorArray will be
		    colocated on the same device as the the Tensor used on its first write
		    (write operations include `write`, `unstack`, and `split`).  If `False`,
		    the TensorArray will be placed on the device determined by the
		    device context available during its initialization.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: if both handle and tensor_array_name are provided.
		  TypeError: if handle is provided but is not a Tensor.
	**/
	public function new(dtype:Dynamic, ?size:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?handle:Dynamic, ?flow:Dynamic, ?infer_shape:Dynamic, ?element_shape:Dynamic, ?colocate_with_first_write_call:Dynamic, ?name:Dynamic):Void;
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
	/**
		Colocate operations with an internal colocation group or `value`.
		
		Args:
		  value: `Tensor`, the tensor to try to colocate with.
		
		Yields:
		  Does not yield anything, but the new context is a colocation context.
		
		If no internal colocation group is set, colocate with `value` and set
		the internal colocation group to be value.
	**/
	public function _maybe_colocate_with(value:Dynamic):Dynamic;
	/**
		Changes the element shape of the array given a shape to merge with.
		
		Args:
		  shape: A `TensorShape` object to merge with.
		
		Raises:
		  ValueError: if the provided shape is incompatible with the current
		      element shape of the `TensorArray`.
	**/
	public function _merge_element_shape(shape:Dynamic):Dynamic;
	/**
		Close the current TensorArray.
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function close(?name:Dynamic):Dynamic;
	/**
		Return the values in the TensorArray as a concatenated `Tensor`.
		
		All of the values must have been written, their ranks must match, and
		and their shapes must all match for all dimensions except the first.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  All the tensors in the TensorArray concatenated into one tensor.
	**/
	public function concat(?name:Dynamic):Dynamic;
	/**
		The data type of this TensorArray.
	**/
	public var dtype : Dynamic;
	/**
		The flow `Tensor` forcing ops leading to this TensorArray state.
	**/
	public var flow : Dynamic;
	/**
		Return selected values in the TensorArray as a packed `Tensor`.
		
		All of selected values must have been written and their shapes
		must all match.
		
		Args:
		  indices: A `1-D` `Tensor` taking values in `[0, max_value)`.  If
		    the `TensorArray` is not dynamic, `max_value=size()`.
		  name: A name for the operation (optional).
		
		Returns:
		  The in the `TensorArray` selected by `indices`, packed into one tensor.
	**/
	public function gather(indices:Dynamic, ?name:Dynamic):Dynamic;
	public function grad(source:Dynamic, ?flow:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The reference to the TensorArray.
	**/
	public var handle : Dynamic;
	/**
		Returns a TensorArray with the same content and properties.
		
		Returns:
		  A new TensorArray object with flow that ensures the control dependencies
		  from the contexts will become control dependencies for writes, reads, etc.
		  Use this object all for subsequent operations.
	**/
	public function identity():Dynamic;
	/**
		Read the value at location `index` in the TensorArray.
		
		Args:
		  index: 0-D.  int32 tensor with the index to read from.
		  name: A name for the operation (optional).
		
		Returns:
		  The tensor at index `index`.
	**/
	public function read(index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatter the values of a `Tensor` in specific indices of a `TensorArray`.
		
		  Args:
		    indices: A `1-D` `Tensor` taking values in `[0, max_value)`.  If
		      the `TensorArray` is not dynamic, `max_value=size()`.
		    value: (N+1)-D.  Tensor of type `dtype`.  The Tensor to unpack.
		    name: A name for the operation (optional).
		
		  Returns:
		    A new TensorArray object with flow that ensures the scatter occurs.
		    Use this object all for subsequent operations.
		
		  Raises:
		    ValueError: if the shape inference fails.
		  
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function scatter(indices:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the size of the TensorArray.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		Split the values of a `Tensor` into the TensorArray.
		
		  Args:
		    value: (N+1)-D.  Tensor of type `dtype`.  The Tensor to split.
		    lengths: 1-D.  int32 vector with the lengths to use when splitting
		      `value` along its first dimension.
		    name: A name for the operation (optional).
		
		  Returns:
		    A new TensorArray object with flow that ensures the split occurs.
		    Use this object all for subsequent operations.
		
		  Raises:
		    ValueError: if the shape inference fails.
		  
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function split(value:Dynamic, lengths:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the values in the TensorArray as a stacked `Tensor`.
		
		All of the values must have been written and their shapes must all match.
		If input shapes have rank-`R`, then output shape will have rank-`(R+1)`.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  All the tensors in the TensorArray stacked into one tensor.
	**/
	public function stack(?name:Dynamic):Dynamic;
	/**
		Unstack the values of a `Tensor` in the TensorArray.
		
		  If input value shapes have rank-`R`, then the output TensorArray will
		  contain elements whose shapes are rank-`(R-1)`.
		
		  Args:
		    value: (N+1)-D.  Tensor of type `dtype`.  The Tensor to unstack.
		    name: A name for the operation (optional).
		
		  Returns:
		    A new TensorArray object with flow that ensures the unstack occurs.
		    Use this object all for subsequent operations.
		
		  Raises:
		    ValueError: if the shape inference fails.
		  
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function unstack(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Write `value` into index `index` of the TensorArray.
		
		  Args:
		    index: 0-D.  int32 scalar with the index to write to.
		    value: N-D.  Tensor of type `dtype`.  The Tensor to write to this index.
		    name: A name for the operation (optional).
		
		  Returns:
		    A new TensorArray object with flow that ensures the write occurs.
		    Use this object all for subsequent operations.
		
		  Raises:
		    ValueError: if there are more writers than specified.
		  
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	public function write(index:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
}