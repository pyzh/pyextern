/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.initializers;
@:pythonImport("tensorflow.contrib.keras.api.keras.initializers") extern class Initializers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Glorot normal initializer, also called Xavier normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    Glorot & Bengio, AISTATS 2010
		    http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
	**/
	static public function glorot_normal(?seed:Dynamic):Dynamic;
	/**
		Glorot uniform initializer, also called Xavier uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    Glorot & Bengio, AISTATS 2010
		    http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
	**/
	static public function glorot_uniform(?seed:Dynamic):Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    LeCun 98, Efficient Backprop,
		    http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	static public function serialize(initializer:Dynamic):Dynamic;
}