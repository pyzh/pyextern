/* This file is generated, do not edit! */
package tensorflow.python.layers.core;
@:pythonImport("tensorflow.python.layers.core") extern class Core_Module {
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
		Functional interface for the densely-connected layer.
		
		This layer implements the operation:
		`outputs = activation(inputs.kernel + bias)`
		Where `activation` is the activation function passed as the `activation`
		argument (if not `None`), `kernel` is a weights matrix created by the layer,
		and `bias` is a bias vector created by the layer
		(only if `use_bias` is `True`).
		
		Note: if the `inputs` tensor has a rank greater than 2, then it is
		flattened prior to the initial matrix multiply by `kernel`.
		
		Arguments:
		  inputs: Tensor input.
		  units: Integer or Long, dimensionality of the output space.
		  activation: Activation function (callable). Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: Initializer function for the weight matrix.
		  bias_initializer: Initializer function for the bias.
		  kernel_regularizer: Regularizer function for the weight matrix.
		  bias_regularizer: Regularizer function for the bias.
		  activity_regularizer: Regularizer function for the output.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: String, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
	**/
	static public function dense(inputs:Dynamic, units:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Applies Dropout to the input.
		
		Dropout consists in randomly setting a fraction `rate` of input units to 0
		at each update during training time, which helps prevent overfitting.
		The units that are kept are scaled by `1 / (1 - rate)`, so that their
		sum is unchanged at training time and inference time.
		
		Arguments:
		  inputs: Tensor input.
		  rate: The dropout rate, between 0 and 1. E.g. "rate=0.1" would drop out
		    10% of input units.
		  noise_shape: 1D tensor of type `int32` representing the shape of the
		    binary dropout mask that will be multiplied with the input.
		    For instance, if your inputs have shape
		    `(batch_size, timesteps, features)`, and you want the dropout mask
		    to be the same for all timesteps, you can use
		    `noise_shape=[batch_size, 1, features]`.
		  seed: A Python integer. Used to create random seeds. See
		    @{tf.set_random_seed}
		    for behavior.
		  training: Either a Python boolean, or a TensorFlow boolean scalar tensor
		    (e.g. a placeholder). Whether to return the output in training mode
		    (apply dropout) or in inference mode (return the input untouched).
		  name: The name of the layer (string).
		
		Returns:
		  Output tensor.
	**/
	static public function dropout(inputs:Dynamic, ?rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Functional interface for the densely-connected layer.
		
		This layer implements the operation:
		`outputs = activation(inputs.kernel + bias)`
		Where `activation` is the activation function passed as the `activation`
		argument (if not `None`), `kernel` is a weights matrix created by the layer,
		and `bias` is a bias vector created by the layer
		(only if `use_bias` is `True`).
		
		Note: if the `inputs` tensor has a rank greater than 2, then it is
		flattened prior to the initial matrix multiply by `kernel`.
		
		Arguments:
		  inputs: Tensor input.
		  units: Integer or Long, dimensionality of the output space.
		  activation: Activation function (callable). Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: Initializer function for the weight matrix.
		  bias_initializer: Initializer function for the bias.
		  kernel_regularizer: Regularizer function for the weight matrix.
		  bias_regularizer: Regularizer function for the bias.
		  activity_regularizer: Regularizer function for the output.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: String, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
	**/
	static public function fully_connected(inputs:Dynamic, units:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}