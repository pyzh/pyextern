/* This file is generated, do not edit! */
package theano.gpuarray.opt;
@:pythonImport("theano.gpuarray.opt") extern class Opt_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public function _scan_type_infer(node:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var abstract_batch_norm_db : Dynamic;
	static public var abstract_batch_norm_db2 : Dynamic;
	static public var abstract_batch_norm_groupopt : Dynamic;
	static public var abstractconv_groupopt : Dynamic;
	/**
		Decorator to merge multiplication by a scalar on the output.
		
		This will find a pattern of `scal * <yourop>(some, params, alpha,
		beta)` and update it so that the scalar multiplication happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
	**/
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public function assert_no_cpu_op(fgraph:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var cpu : Dynamic;
	static public var cusolver_available : Dynamic;
	static public var division : Dynamic;
	static public function fct(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Retrive the context associated with a name.
		
		Return the context object mapped to `ref` that was previously
		register through :func:`reg_context`. Trying to get the context
		for an unregistered `ref` will raise a exception.
		
		Parameters
		----------
		name : hashable object
		    Name associated with the context we want (usually a string)
	**/
	static public function get_context(name:Dynamic):Dynamic;
	static public function gpu_alloc(ctx:Dynamic, ?memset_0:Dynamic):Dynamic;
	static public function gpu_alloc_empty(ctx:Dynamic, dtype:Dynamic):Dynamic;
	static public function gpu_ca_reduce_cuda(scalar_op:Dynamic, ?axis:Dynamic, ?reduce_mask:Dynamic, ?dtype:Dynamic, ?acc_dtype:Dynamic, ?pre_scalar_op:Dynamic):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_crossentropy_softmax_1hot_with_bias_dx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_crossentropy_softmax_argmax_1hot_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var gpu_cut_copies : Dynamic;
	static public function gpu_dot22(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_erfcinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_erfinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_from_host(ctx:Dynamic):Dynamic;
	static public function gpu_join(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		As part of specialization, we fuse two consecutive elemwise Ops of the
		same shape.
		
		For mixed dtype, we let the Composite op do the cast. It lets the C
		compiler do the cast.
		The number of dimensions is validated at call time by theano itself.
	**/
	static public function gpu_local_elemwise_fusion(node:Dynamic):Dynamic;
	static public var gpu_optimizer : Dynamic;
	static public var gpu_optimizer2 : Dynamic;
	static public function gpu_print_wrapper(op:Dynamic, cnda:Dynamic):Dynamic;
	/**
		Different interface to clone, that allows you to pass inputs.
		Compared to clone, this method always replaces the inputs with
		new variables of the same type, and returns those (in the same
		order as the original inputs).
	**/
	static public function gpu_reconstruct_graph(inputs:Dynamic, outputs:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Internal function that constructs a new variable from x with the same
		type, but with a different name (old name + tag). This function is used
		by gradient, or the R-op to construct new variables for the inputs of
		the inner graph such that there is no interference between the original
		graph and the newly constructed graph.
	**/
	static public function gpu_safe_new(x:Dynamic, ?tag:Dynamic):Dynamic;
	static public var gpu_seqopt : Dynamic;
	static public function gpu_softmax(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_sparse_block_gemv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_sparse_block_gemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_sparse_block_outer(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_sparse_block_outer_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemm_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemm_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemmbatch_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpugemv_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function inplace_gpu_elemwise_opt(fgraph:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var lifter : Dynamic;
	static public function local_abstract_batch_norm_inference_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_abstract_batch_norm_train_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_abstract_batch_norm_train_grad_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_abstractconv3d_gemm : Dynamic;
	static public var local_abstractconv3d_gradinputs_gemm : Dynamic;
	static public var local_abstractconv3d_gradweights_gemm : Dynamic;
	static public var local_abstractconv_cudnn : Dynamic;
	static public var local_abstractconv_gemm : Dynamic;
	static public var local_abstractconv_gi_cudnn : Dynamic;
	static public var local_abstractconv_gradinputs_gemm : Dynamic;
	static public var local_abstractconv_gradweights_gemm : Dynamic;
	static public var local_abstractconv_gw_cudnn : Dynamic;
	static public var local_advincsub1_gpua_inplace : Dynamic;
	static public var local_assert_no_cpu_op : Dynamic;
	static public var local_conv_gpu_conv : Dynamic;
	static public var local_cut_gpu_transfers : Dynamic;
	static public function local_gpu_average_pool_grad(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpu_contiguous_gpu_contiguous : Dynamic;
	static public var local_gpu_downsample_factor_max_grad_grad : Dynamic;
	static public var local_gpu_elemwise_careduce : Dynamic;
	static public function local_gpu_max_pool_grad(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpu_max_pool_rop : Dynamic;
	static public var local_gpu_maxandargmax : Dynamic;
	static public var local_gpu_pdbbreakpoint_op : Dynamic;
	static public function local_gpu_pool(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpu_solve : Dynamic;
	static public var local_gpua_abstractconv : Dynamic;
	static public var local_gpua_advanced_incsubtensor : Dynamic;
	static public var local_gpua_advanced_subtensor : Dynamic;
	static public var local_gpua_advanced_subtensor1 : Dynamic;
	static public var local_gpua_alloc : Dynamic;
	static public var local_gpua_alloc2 : Dynamic;
	static public var local_gpua_alloc_empty : Dynamic;
	static public var local_gpua_alloc_empty_to_zeros : Dynamic;
	static public var local_gpua_assert : Dynamic;
	static public function local_gpua_assert_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_careduce : Dynamic;
	static public var local_gpua_contiguous : Dynamic;
	static public var local_gpua_crossentropysoftmax1hotwithbiasdx : Dynamic;
	static public var local_gpua_crossentropysoftmaxargmax1hotwithbias : Dynamic;
	static public var local_gpua_dimshuffle : Dynamic;
	static public var local_gpua_dot22 : Dynamic;
	static public var local_gpua_dot22scalar : Dynamic;
	static public var local_gpua_elemwise : Dynamic;
	static public var local_gpua_error_convop : Dynamic;
	static public var local_gpua_eye : Dynamic;
	static public var local_gpua_flatten : Dynamic;
	static public var local_gpua_gemm : Dynamic;
	static public var local_gpua_gemm_alpha_merge : Dynamic;
	static public var local_gpua_gemm_output_merge : Dynamic;
	static public var local_gpua_gemmbatch : Dynamic;
	static public var local_gpua_gemmbatch_alpha_merge : Dynamic;
	static public var local_gpua_gemmbatch_output_merge : Dynamic;
	static public var local_gpua_gemv : Dynamic;
	static public var local_gpua_ger : Dynamic;
	static public var local_gpua_inc_subtensor : Dynamic;
	static public var local_gpua_join : Dynamic;
	static public var local_gpua_join_1 : Dynamic;
	static public var local_gpua_lazy_ifelse : Dynamic;
	static public function local_gpua_lift_abstractconv_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_print_op : Dynamic;
	static public var local_gpua_rebroadcast : Dynamic;
	static public var local_gpua_reshape : Dynamic;
	static public var local_gpua_scan_to_gpua : Dynamic;
	static public var local_gpua_shape : Dynamic;
	static public function local_gpua_shape_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_softmax : Dynamic;
	static public var local_gpua_softmaxwithbias : Dynamic;
	static public var local_gpua_sparseblockgemv : Dynamic;
	static public var local_gpua_sparseblockouter : Dynamic;
	static public var local_gpua_specifyShape : Dynamic;
	static public function local_gpua_specifyShape_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_split : Dynamic;
	static public var local_gpua_subtensor : Dynamic;
	static public function local_gpua_subtensor_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpualloc_memset_0 : Dynamic;
	static public var local_inplace_sparseblockgemv : Dynamic;
	static public var local_inplace_sparseblockouter : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	/**
		Compute the maximum number of inputs that fit in a kernel call.
	**/
	static public function max_inputs_to_GpuElemwise(node_or_outputs:Dynamic):Dynamic;
	/**
		Do we want to move this computation to the GPU?
		
		Currently, we don't move complex and scalar int.
		
		Parameters
		----------
		data : numpy.ndarray or TensorVariable
		       (it must have dtype and ndim parameter)
	**/
	static public function move_to_gpu(data:Dynamic):Dynamic;
	/**
		OP(..., host_from_gpu(), ...) -> host_from_gpu(GpuOP(...))
		
		gpu_from_host(OP(inp0, ...)) -> GpuOP(inp0, ...)
	**/
	static public function op_lifter(OP:Dynamic, ?cuda_only:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	/**
		Decorator to merge addition by a value on the output.
		
		This will find a pattern of `val * <yourop>(some, params, alpha,
		beta, out_like)` and update it so that the addtition happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		out_in : int
		    The input index for the out_like input for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
		
		This also correctly handles the case where the added value is
		broadcasted (by not performing the replacement).
	**/
	static public function output_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic, out_in:Dynamic):Dynamic;
	/**
		Reshapes the input to a (leftdims + rightdims) tensor
		
		This helper function is used to convert pooling inputs with arbitrary
		non-pooling dimensions to the correct number of dimensions for the
		GPU pooling ops.
		
		This reduces or expands the number of dimensions of the input to
		exactly `leftdims`, by adding extra dimensions on the left or by
		combining some existing dimensions on the left of the input.
		
		Use `unpad_dims` to reshape back to the original dimensions.
		
		Examples
		--------
		Given input of shape (3, 5, 7), ``pad_dims(input, 2, 2)``
		adds a singleton dimension and reshapes to (1, 3, 5, 7).
		Given that output from pad_dims, ``unpad_dims(output, input, 2, 2)``
		reshapes back to (3, 5, 7).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 2)``
		does not reshape and returns output with shape (3, 5, 7, 9).
		
		Given input of shape (3, 5, 7, 9, 11), ``pad_dims(input, 2, 2)``
		combines the first two dimensions and reshapes to (15, 7, 9, 11).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 3)``
		adds a singleton dimension and reshapes to (1, 3, 5, 7, 9).
	**/
	static public function pad_dims(input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	static public var pool_db : Dynamic;
	static public var pool_db2 : Dynamic;
	static public var print_function : Dynamic;
	static public function register_inplace(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for the new GraphToGPU optimizer.
		Takes an extra parameter(Op) compared to register_opt decorator.
		
		Parameters
		----------
		tracks : List of Op class Or Op instance or None
		    The Node's Op to which optimization is being applied.
		
		tags : String
		    The optimization tag to which the optimizer will be registered.
	**/
	static public function register_opt2(tracks:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function safe_to_cpu(x:Dynamic):Dynamic;
	static public function safe_to_gpu(x:Dynamic, ctx_name:Dynamic):Dynamic;
	/**
		Equivalent of var.shape[i], but apply if possible the shape feature
		optimization.
		
		This is useful in optimization that need to get the shape. This
		remove the need of the following shape_feature optimization that
		convert it. So this speed up optimization and remove Equilibrium
		max iteration problems.
		
		Parameters
		----------
		var
		    The variable we want to take the shape of.
		i
		    The shape dimensions we want
		fgraph : optional
		    If var.fgraph do not exist, the fgraph that have the shape_feature to
		    introduce var in to get the optimized shape.
	**/
	static public function shape_i(_var:Dynamic, i:Dynamic, ?fgraph:Dynamic):Dynamic;
	/**
		For add and mul, it can happen that we have too much input
		That will make nvcc fail compilation of our current code.
		We don't want node in the graph that can't execute
		as this break DebugMode.
		
		This should not happen for other GpuElemwise as their is only the fusion
		that can generate op with too much input and it check for that.
	**/
	static public function split_huge_add_or_mul(node:Dynamic):Dynamic;
	static public function tensor_to_gpu(x:Dynamic, context_name:Dynamic):Dynamic;
	/**
		Reshapes the output after pad_dims.
		
		This reverts the padding by `pad_dims`.
	**/
	static public function unpad_dims(output:Dynamic, input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
}