/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_tensor_impl;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_tensor_impl", "StochasticTensor") extern class StochasticTensor {
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Construct a `StochasticTensor`.
		
		`StochasticTensor` is backed by the `dist` distribution and its `value`
		method will return the same value each time it is called. What `value` is
		returned is controlled by the `dist_value_type` (defaults to
		`SampleValue`).
		
		Some distributions' sample functions are not differentiable (e.g. a sample
		from a discrete distribution like a Bernoulli) and so to differentiate
		wrt parameters upstream of the sample requires a gradient estimator like
		the score function estimator. This is accomplished by passing a
		differentiable `loss_fn` to the `StochasticTensor`, which
		defaults to a function whose derivative is the score function estimator.
		Calling `stochastic_graph.surrogate_loss(final_losses)` will call
		`loss()` on every `StochasticTensor` upstream of final losses.
		
		`loss()` will return None for `StochasticTensor`s backed by
		reparameterized distributions; it will also return None if the value type is
		`MeanValueType` or if `loss_fn=None`.
		
		Args:
		  dist: an instance of `Distribution`.
		  name: a name for this `StochasticTensor` and its ops.
		  dist_value_type: a `_StochasticValueType`, which will determine what the
		      `value` of this `StochasticTensor` will be. If not provided, the
		      value type set with the `value_type` context manager will be used.
		  loss_fn: callable that takes
		      `(st, st.value(), influenced_loss)`, where
		      `st` is this `StochasticTensor`, and returns a `Tensor` loss. By
		      default, `loss_fn` is the `score_function`, or more precisely, the
		      integral of the score function, such that when the gradient is taken,
		      the score function results. See the `stochastic_gradient_estimators`
		      module for additional loss functions and baselines.
		
		Raises:
		  TypeError: if `dist` is not an instance of `Distribution`.
		  TypeError: if `loss_fn` is not `callable`.
	**/
	@:native("__init__")
	public function ___init__(dist:Dynamic, ?name:Dynamic, ?dist_value_type:Dynamic, ?loss_fn:Dynamic):Dynamic;
	/**
		Construct a `StochasticTensor`.
		
		`StochasticTensor` is backed by the `dist` distribution and its `value`
		method will return the same value each time it is called. What `value` is
		returned is controlled by the `dist_value_type` (defaults to
		`SampleValue`).
		
		Some distributions' sample functions are not differentiable (e.g. a sample
		from a discrete distribution like a Bernoulli) and so to differentiate
		wrt parameters upstream of the sample requires a gradient estimator like
		the score function estimator. This is accomplished by passing a
		differentiable `loss_fn` to the `StochasticTensor`, which
		defaults to a function whose derivative is the score function estimator.
		Calling `stochastic_graph.surrogate_loss(final_losses)` will call
		`loss()` on every `StochasticTensor` upstream of final losses.
		
		`loss()` will return None for `StochasticTensor`s backed by
		reparameterized distributions; it will also return None if the value type is
		`MeanValueType` or if `loss_fn=None`.
		
		Args:
		  dist: an instance of `Distribution`.
		  name: a name for this `StochasticTensor` and its ops.
		  dist_value_type: a `_StochasticValueType`, which will determine what the
		      `value` of this `StochasticTensor` will be. If not provided, the
		      value type set with the `value_type` context manager will be used.
		  loss_fn: callable that takes
		      `(st, st.value(), influenced_loss)`, where
		      `st` is this `StochasticTensor`, and returns a `Tensor` loss. By
		      default, `loss_fn` is the `score_function`, or more precisely, the
		      integral of the score function, such that when the gradient is taken,
		      the score function results. See the `stochastic_gradient_estimators`
		      module for additional loss functions and baselines.
		
		Raises:
		  TypeError: if `dist` is not an instance of `Distribution`.
		  TypeError: if `loss_fn` is not `callable`.
	**/
	public function new(dist:Dynamic, ?name:Dynamic, ?dist_value_type:Dynamic, ?loss_fn:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Create the value Tensor based on the value type, store as self._value.
	**/
	public function _create_value():Dynamic;
	static public function _tensor_conversion_function(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	public var distribution : Dynamic;
	public var dtype : Dynamic;
	public function entropy(?name:Dynamic):Dynamic;
	public var graph : Dynamic;
	/**
		Returns the term to add to the surrogate loss.
		
		This method is called by `surrogate_loss`.  The input `sample_loss` should
		have already had `stop_gradient` applied to it.  This is because the
		surrogate_loss usually provides a Monte Carlo sample term of the form
		`differentiable_surrogate * sample_loss` where `sample_loss` is considered
		constant with respect to the input for purposes of the gradient.
		
		Args:
		  sample_loss: `Tensor`, sample loss downstream of this `StochasticTensor`.
		
		Returns:
		  Either `None` or a `Tensor`.
	**/
	public function loss(final_loss:Dynamic, ?name:Dynamic):Dynamic;
	public function mean(?name:Dynamic):Dynamic;
	public var name : Dynamic;
	public function value(?name:Dynamic):Dynamic;
	public var value_type : Dynamic;
}