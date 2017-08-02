/* This file is generated, do not edit! */
package keras.utils.np_utils;
@:pythonImport("keras.utils.np_utils") extern class Np_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Normalizes a Numpy array.
		
		# Arguments
		    x: Numpy array to normalize.
		    axis: axis along which to normalize.
		    order: Normalization order (e.g. 2 for L2 norm).
		
		# Returns
		    A normalized copy of the array.
	**/
	static public function normalize(x:Dynamic, ?axis:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		# Arguments
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes.
		
		# Returns
		    A binary matrix representation of the input.
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic):Dynamic;
}