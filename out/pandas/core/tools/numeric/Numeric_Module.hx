/* This file is generated, do not edit! */
package pandas.core.tools.numeric;
@:pythonImport("pandas.core.tools.numeric") extern class Numeric_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of
		a timedelta64 or datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a
		          timedelta64, or datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime_or_timedelta_dtype(str)
		False
		>>> is_datetime_or_timedelta_dtype(int)
		False
		>>> is_datetime_or_timedelta_dtype(np.datetime64)
		True
		>>> is_datetime_or_timedelta_dtype(np.timedelta64)
		True
		>>> is_datetime_or_timedelta_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime_or_timedelta_dtype(pd.Series([1, 2]))
		False
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.timedelta64))
		True
		>>> is_datetime_or_timedelta_dtype(np.array([], dtype=np.datetime64))
		True
	**/
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is a number.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		Examples
		--------
		>>> is_number(1)
		True
		>>> is_number("foo")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function maybe_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Convert argument to a numeric type.
		
		Parameters
		----------
		arg : list, tuple, 1-d array, or Series
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaN
		    - If 'ignore', then invalid parsing will return the input
		downcast : {'integer', 'signed', 'unsigned', 'float'} , default None
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		ret : numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> import pandas as pd
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
}