/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.conditional_transformed_distribution;
@:pythonImport("tensorflow.contrib.distributions.python.ops.conditional_transformed_distribution", "ConditionalTransformedDistribution") extern class ConditionalTransformedDistribution {
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
	static public function __class__(classname:Dynamic, baseclasses:Dynamic, attrs:Dynamic):Dynamic;
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
		Construct a Transformed Distribution.
		
		Args:
		  distribution: The base distribution instance to transform. Typically an
		    instance of `Distribution`.
		  bijector: The object responsible for calculating the transformation.
		    Typically an instance of `Bijector`. `None` means `Identity()`.
		  batch_shape: `integer` vector `Tensor` which overrides `distribution`
		    `batch_shape`; valid only if `distribution.is_scalar_batch()`.
		  event_shape: `integer` vector `Tensor` which overrides `distribution`
		    `event_shape`; valid only if `distribution.is_scalar_event()`.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class. Default:
		    `bijector.name + distribution.name`.
	**/
	@:native("__init__")
	public function ___init__(distribution:Dynamic, ?bijector:Dynamic, ?batch_shape:Dynamic, ?event_shape:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a Transformed Distribution.
		
		Args:
		  distribution: The base distribution instance to transform. Typically an
		    instance of `Distribution`.
		  bijector: The object responsible for calculating the transformation.
		    Typically an instance of `Bijector`. `None` means `Identity()`.
		  batch_shape: `integer` vector `Tensor` which overrides `distribution`
		    `batch_shape`; valid only if `distribution.is_scalar_batch()`.
		  event_shape: `integer` vector `Tensor` which overrides `distribution`
		    `event_shape`; valid only if `distribution.is_scalar_event()`.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class. Default:
		    `bijector.name + distribution.name`.
	**/
	public function new(distribution:Dynamic, ?bijector:Dynamic, ?batch_shape:Dynamic, ?event_shape:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Void;
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
	public function _batch_shape():Dynamic;
	public function _batch_shape_tensor():Dynamic;
	public function _call_cdf(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_cdf(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_prob(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_survival_function(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_prob(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_quantile(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_sample_n(sample_shape:Dynamic, seed:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_survival_function(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _cdf(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	public function _covariance():Dynamic;
	public function _entropy():Dynamic;
	public function _event_shape():Dynamic;
	public function _event_shape_tensor():Dynamic;
	/**
		Helper to `sample` which ensures input is 1D.
	**/
	public function _expand_sample_shape_to_vector(x:Dynamic, name:Dynamic):Dynamic;
	/**
		Implementation for `is_scalar_batch` and `is_scalar_event`.
	**/
	public function _is_scalar_helper(static_shape:Dynamic, dynamic_shape_fn:Dynamic):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _log_cdf(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _log_prob(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _log_survival_function(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	/**
		Helper which rolls left event_dims left or right event_dims right.
	**/
	public function _maybe_rotate_dims(x:Dynamic, ?rotate_right:Dynamic):Dynamic;
	/**
		Helper to __init__ which ensures override batch/event_shape are valid.
	**/
	public function _maybe_validate_shape_override(override_shape:Dynamic, base_is_scalar:Dynamic, validate_args:Dynamic, name:Dynamic):Dynamic;
	public function _mean():Dynamic;
	public function _mode():Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	static public function _param_shapes(sample_shape:Dynamic):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _prob(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	public function _quantile(value:Dynamic):Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _sample_n(n:Dynamic, ?seed:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	/**
		Helper to `sample`; sets static shape info.
	**/
	public function _set_sample_static_shape(x:Dynamic, sample_shape:Dynamic):Dynamic;
	public function _stddev():Dynamic;
	/**
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function _survival_function(y:Dynamic, ?bijector_kwargs:Dynamic, ?distribution_kwargs:Dynamic):Dynamic;
	public function _variance():Dynamic;
	/**
		Python `bool` describing behavior when a stat is undefined.
		
		Stats return +/- infinity when it makes sense. E.g., the variance of a
		Cauchy distribution is infinity. However, sometimes the statistic is
		undefined, e.g., if a distribution's pdf does not achieve a maximum within
		the support of the distribution, the mode is undefined. If the mean is
		undefined, then by definition the variance is undefined. E.g. the mean for
		Student's T for df = 1 is undefined (no clear way to say it is either + or -
		infinity), so the variance = E[(X - mean)**2] is also undefined.
		
		Returns:
		  allow_nan_stats: Python `bool`.
	**/
	public var allow_nan_stats : Dynamic;
	/**
		Shape of a single sample from a single event index as a `TensorShape`.
		
		May be partially defined or unknown.
		
		The batch dimensions are indexes into independent, non-identical
		parameterizations of this distribution.
		
		Returns:
		  batch_shape: `TensorShape`, possibly unknown.
	**/
	public var batch_shape : Dynamic;
	/**
		Shape of a single sample from a single event index as a 1-D `Tensor`.
		
		The batch dimensions are indexes into independent, non-identical
		parameterizations of this distribution.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  batch_shape: `Tensor`.
	**/
	public function batch_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Function transforming x => y.
	**/
	public var bijector : Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function cdf(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a deep copy of the distribution.
		
		Note: the copy distribution may continue to depend on the original
		initialization arguments.
		
		Args:
		  **override_parameters_kwargs: String/value dictionary of initialization
		    arguments to override with new values.
		
		Returns:
		  distribution: A new instance of `type(self)` initialized from the union
		    of self.parameters and override_parameters_kwargs, i.e.,
		    `dict(self.parameters, **override_parameters_kwargs)`.
	**/
	public function copy(?override_parameters_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Covariance.
		
		Covariance is (possibly) defined only for non-scalar-event distributions.
		
		For example, for a length-`k`, vector-valued distribution, it is calculated
		as,
		
		```none
		Cov[i, j] = Covariance(X_i, X_j) = E[(X_i - E[X_i]) (X_j - E[X_j])]
		```
		
		where `Cov` is a (batch of) `k x k` matrix, `0 <= (i, j) < k`, and `E`
		denotes expectation.
		
		Alternatively, for non-vector, multivariate distributions (e.g.,
		matrix-valued, Wishart), `Covariance` shall return a (batch of) matrices
		under some vectorization of the events, i.e.,
		
		```none
		Cov[i, j] = Covariance(Vec(X)_i, Vec(X)_j) = [as above]
		```
		
		where `Cov` is a (batch of) `k' x k'` matrices,
		`0 <= (i, j) < k' = reduce_prod(event_shape)`, and `Vec` is some function
		mapping indices of this distribution's event dimensions to indices of a
		length-`k'` vector.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  covariance: Floating-point `Tensor` with shape `[B1, ..., Bn, k', k']`
		    where the first `n` dimensions are batch coordinates and
		    `k' = reduce_prod(self.event_shape)`.
	**/
	public function covariance(?name:Dynamic):Dynamic;
	/**
		Base distribution, p(x).
	**/
	public var distribution : Dynamic;
	/**
		The `DType` of `Tensor`s handled by this `Distribution`.
	**/
	public var dtype : Dynamic;
	/**
		Shannon entropy in nats.
	**/
	public function entropy(?name:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as a `TensorShape`.
		
		May be partially defined or unknown.
		
		Returns:
		  event_shape: `TensorShape`, possibly unknown.
	**/
	public var event_shape : Dynamic;
	/**
		Shape of a single sample from a single batch as a 1-D int32 `Tensor`.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  event_shape: `Tensor`.
	**/
	public function event_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Indicates that `batch_shape == []`.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  is_scalar_batch: `bool` scalar `Tensor`.
	**/
	public function is_scalar_batch(?name:Dynamic):Dynamic;
	/**
		Indicates that `event_shape == []`.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  is_scalar_event: `bool` scalar `Tensor`.
	**/
	public function is_scalar_event(?name:Dynamic):Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function log_cdf(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function log_prob(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function log_survival_function(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Mean.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode.
	**/
	public function mode(?name:Dynamic):Dynamic;
	/**
		Name prepended to all ops created by this `Distribution`.
	**/
	public var name : Dynamic;
	/**
		Shapes of parameters given the desired shape of a call to `sample()`.
		
		This is a class method that describes what key/value arguments are required
		to instantiate the given `Distribution` so that a particular shape is
		returned for that instance's call to `sample()`.
		
		Subclasses should override class method `_param_shapes`.
		
		Args:
		  sample_shape: `Tensor` or python list/tuple. Desired shape of a call to
		    `sample()`.
		  name: name to prepend ops with.
		
		Returns:
		  `dict` of parameter name to `Tensor` shapes.
	**/
	static public function param_shapes(sample_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		param_shapes with static (i.e. `TensorShape`) shapes.
		
		This is a class method that describes what key/value arguments are required
		to instantiate the given `Distribution` so that a particular shape is
		returned for that instance's call to `sample()`. Assumes that the sample's
		shape is known statically.
		
		Subclasses should override class method `_param_shapes` to return
		constant-valued tensors when constant values are fed.
		
		Args:
		  sample_shape: `TensorShape` or python list/tuple. Desired shape of a call
		    to `sample()`.
		
		Returns:
		  `dict` of parameter name to `TensorShape`.
		
		Raises:
		  ValueError: if `sample_shape` is a `TensorShape` and is not fully defined.
	**/
	static public function param_static_shapes(sample_shape:Dynamic):Dynamic;
	/**
		Dictionary of parameters used to instantiate this `Distribution`.
	**/
	public var parameters : Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function prob(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Quantile function. Aka "inverse cdf" or "percent point function".
		
		Given random variable `X` and `p in [0, 1]`, the `quantile` is:
		
		```none
		quantile(p) := x such that P[X <= x] == p
		```
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: The name to give this op.
		
		Returns:
		  quantile: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function quantile(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Describes how samples from the distribution are reparameterized.
		
		Currently this is one of the static instances
		`distributions.FULLY_REPARAMETERIZED`
		or `distributions.NOT_REPARAMETERIZED`.
		
		Returns:
		  An instance of `ReparameterizationType`.
	**/
	public var reparameterization_type : Dynamic;
	/**
		##### `kwargs`:
		
		*  `**condition_kwargs`: Named arguments forwarded to subclass implementation.
	**/
	public function sample(?sample_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?condition_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Standard deviation.
		
		Standard deviation is defined as,
		
		```none
		stddev = E[(X - E[X])**2]**0.5
		```
		
		where `X` is the random variable associated with this distribution, `E`
		denotes expectation, and `stddev.shape = batch_shape + event_shape`.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  stddev: Floating-point `Tensor` with shape identical to
		    `batch_shape + event_shape`, i.e., the same shape as `self.mean()`.
	**/
	public function stddev(?name:Dynamic):Dynamic;
	/**
		Additional documentation from `ConditionalTransformedDistribution`:
		
		##### `kwargs`:
		
		*  `bijector_kwargs`: Python dictionary of arg names/values forwarded to the bijector.
		*  `distribution_kwargs`: Python dictionary of arg names/values forwarded to the distribution.
	**/
	public function survival_function(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Python `bool` indicating possibly expensive checks are enabled.
	**/
	public var validate_args : Dynamic;
	/**
		Variance.
		
		Variance is defined as,
		
		```none
		Var = E[(X - E[X])**2]
		```
		
		where `X` is the random variable associated with this distribution, `E`
		denotes expectation, and `Var.shape = batch_shape + event_shape`.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  variance: Floating-point `Tensor` with shape identical to
		    `batch_shape + event_shape`, i.e., the same shape as `self.mean()`.
	**/
	public function variance(?name:Dynamic):Dynamic;
}