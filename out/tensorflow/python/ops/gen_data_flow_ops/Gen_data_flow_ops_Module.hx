/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_data_flow_ops;
@:pythonImport("tensorflow.python.ops.gen_data_flow_ops") extern class Gen_data_flow_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __barrier_take_many_outputs : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __tensor_array_concat_outputs : Dynamic;
	static public var __tensor_array_concat_v2_outputs : Dynamic;
	static public var __tensor_array_concat_v3_outputs : Dynamic;
	static public var __tensor_array_grad_v3_outputs : Dynamic;
	static public var __tensor_array_v3_outputs : Dynamic;
	/**
		Defines a barrier that persists across different graph executions.
		
		A barrier represents a key-value map, where each key is a string, and
		each value is a tuple of tensors.
		
		At runtime, the barrier contains 'complete' and 'incomplete'
		elements. A complete element has defined tensors for all components of
		its value tuple, and may be accessed using BarrierTakeMany. An
		incomplete element has some undefined components in its value tuple,
		and may be updated using BarrierInsertMany.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. Each shape must be 1 in the
		    first dimension. The length of this attr must be the same as the length of
		    component_types.
		  capacity: An optional `int`. Defaults to `-1`.
		    The capacity of the barrier.  The default capacity is MAX_INT32,
		    which is the largest capacity of the underlying queue.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this barrier is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this barrier will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the barrier.
	**/
	static public function _barrier(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Closes the given barrier.
		
		This operation signals that no more new elements will be inserted in the
		given barrier. Subsequent InsertMany that try to introduce a new key will fail.
		Subsequent InsertMany operations that just add missing components to already
		existing elements will continue to succeed. Subsequent TakeMany operations will
		continue to succeed if sufficient completed elements remain in the barrier.
		Subsequent TakeMany operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the barrier's queue will be cancelled. InsertMany will fail, even
		    if no new key is introduced.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _barrier_close(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of incomplete elements in the given barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  The number of incomplete elements (i.e. those with some of their value
		  components not set) in the barrier.
	**/
	static public function _barrier_incomplete_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		For each key, assigns the respective value to the specified component.
		
		If a key is not found in the barrier, this operation will create a new
		incomplete element. If a key is found in the barrier, and the element
		already has a value at component_index, this operation will fail with
		INVALID_ARGUMENT, and leave the barrier in an undefined state.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  keys: A `Tensor` of type `string`.
		    A one-dimensional tensor of keys, with length n.
		  values: A `Tensor`.
		    An any-dimensional tensor of values, which are associated with the
		    respective keys. The 0th dimension must have length n.
		  component_index: An `int`.
		    The component of the barrier elements that is being assigned.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _barrier_insert_many(handle:Dynamic, keys:Dynamic, values:Dynamic, component_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of complete elements in the given barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  The number of complete elements (i.e. those with all of their value
		  components set) in the barrier.
	**/
	static public function _barrier_ready_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Takes the given number of completed elements from a barrier.
		
		This operation concatenates completed-element component tensors along
		the 0th dimension to make a single component tensor.
		
		Elements come out of the barrier when they are complete, and in the order
		in which they were placed into the barrier.  The indices output provides
		information about the batch in which each element was originally inserted
		into the barrier.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a barrier.
		  num_elements: A `Tensor` of type `int32`.
		    A single-element tensor containing the number of elements to
		    take.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  allow_small_batch: An optional `bool`. Defaults to `False`.
		    Allow to return less than num_elements items if barrier is
		    already closed.
		  wait_for_incomplete: An optional `bool`. Defaults to `False`.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, keys, values).
		
		  indices: A `Tensor` of type `int64`. A one-dimensional tensor of indices, with length num_elems.
		    These indices refer to the batch in which the values were placed into the
		    barrier (starting with MIN_LONG and increasing with each BarrierInsertMany).
		  keys: A `Tensor` of type `string`. A one-dimensional tensor of keys, with length num_elements.
		  values: A list of `Tensor` objects of type `component_types`. One any-dimensional tensor per component in a barrier element. All
		    values have length num_elements in the 0th dimension.
	**/
	static public function _barrier_take_many(handle:Dynamic, num_elements:Dynamic, component_types:Dynamic, ?allow_small_batch:Dynamic, ?wait_for_incomplete:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Delete the tensor specified by its handle in the session.
		
		Args:
		  handle: A `Tensor` of type `string`.
		    The handle for a tensor stored in the session state.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _delete_session_tensor(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Do not use.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function _fake_queue(resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the queue.
	**/
	static public function _fifo_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`. The handle to the queue.
	**/
	static public function _fifo_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Store the input tensor in the state of the current session.
		
		Args:
		  value: A `Tensor`. The tensor to be stored.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  The handle for the tensor stored in the session state, represented
		  as a string.
	**/
	static public function _get_session_handle(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Store the input tensor in the state of the current session.
		
		Args:
		  value: A `Tensor`. The tensor to be stored.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
		  The handle for the tensor stored in the session state, represented
		  as a ResourceHandle object.
	**/
	static public function _get_session_handle_v2(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get the value of the tensor specified by its handle.
		
		Args:
		  handle: A `Tensor` of type `string`.
		    The handle for a tensor stored in the session state.
		  dtype: A `tf.DType`. The type of the output value.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The tensor for the given handle.
	**/
	static public function _get_session_tensor(handle:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Variable-size shapes are allowed by setting the corresponding shape dimensions
		to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
		size of any given element in the minibatch.  See below for details.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types.
		    Shapes of fixed rank but variable size are allowed by setting
		    any shape dimension to -1.  In this case, the inputs' shape may vary along
		    the given dimension, and DequeueMany will pad the given dimension with
		    zeros up to the maximum shape of all elements in the given batch.
		    If the length of this attr is 0, different queue elements may have
		    different ranks and shapes, but only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the queue.
	**/
	static public function _padding_fifo_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements in first-in first-out order.
		
		Variable-size shapes are allowed by setting the corresponding shape dimensions
		to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
		size of any given element in the minibatch.  See below for details.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types.
		    Shapes of fixed rank but variable size are allowed by setting
		    any shape dimension to -1.  In this case, the inputs' shape may vary along
		    the given dimension, and DequeueMany will pad the given dimension with
		    zeros up to the maximum shape of all elements in the given batch.
		    If the length of this attr is 0, different queue elements may have
		    different ranks and shapes, but only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`. The handle to the queue.
	**/
	static public function _padding_fifo_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements sorted by the first component value.
		
		Note that the PriorityQueue requires the first component of any element
		to be a scalar int64, in addition to the other elements declared by
		component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
		and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
		entry in their input (resp. output) lists.
		
		Args:
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  component_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    The type of each component in a value.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the queue.
	**/
	static public function _priority_queue(shapes:Dynamic, ?component_types:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that produces elements sorted by the first component value.
		
		Note that the PriorityQueue requires the first component of any element
		to be a scalar int64, in addition to the other elements declared by
		component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
		and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
		entry in their input (resp. output) lists.
		
		Args:
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  component_types: An optional list of `tf.DTypes`. Defaults to `[]`.
		    The type of each component in a value.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`. The handle to the queue.
	**/
	static public function _priority_queue_v2(shapes:Dynamic, ?component_types:Dynamic, ?capacity:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Closes the given queue.
		
		This operation signals that no more elements will be enqueued in the
		given queue. Subsequent Enqueue(Many) operations will fail.
		Subsequent Dequeue(Many) operations will continue to succeed if
		sufficient elements remain in the queue. Subsequent Dequeue(Many)
		operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the given queue will be cancelled.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_close(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Closes the given queue.
		
		This operation signals that no more elements will be enqueued in the
		given queue. Subsequent Enqueue(Many) operations will fail.
		Subsequent Dequeue(Many) operations will continue to succeed if
		sufficient elements remain in the queue. Subsequent Dequeue(Many)
		operations that would block will fail immediately.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  cancel_pending_enqueues: An optional `bool`. Defaults to `False`.
		    If true, all pending enqueue requests that are
		    blocked on the given queue will be cancelled.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_close_v2(handle:Dynamic, ?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues a tuple of one or more tensors from the given queue.
		
		This operation has k outputs, where k is the number of components
		in the tuples stored in the given queue, and output i is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until an element
		has been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue(handle:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		If the queue is closed and there are fewer than `n` elements, then an
		OutOfRange error is returned.
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until `n` elements
		have been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue_many(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		If the queue is closed and there are fewer than `n` elements, then an
		OutOfRange error is returned.
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until `n` elements
		have been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue_many_v2(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		This operation is not supported by all queues.  If a queue does not support
		DequeueUpTo, then an Unimplemented error is returned.
		
		If the queue is closed and there are more than 0 but less than `n`
		elements remaining, then instead of returning an OutOfRange error like
		QueueDequeueMany, less than `n` elements are returned immediately.  If
		the queue is closed and there are 0 elements left in the queue, then
		an OutOfRange error is returned just like in QueueDequeueMany.
		Otherwise the behavior is identical to QueueDequeueMany:
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size `n` in the 0th dimension.
		
		This operation has k outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue_up_to(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues `n` tuples of one or more tensors from the given queue.
		
		This operation is not supported by all queues.  If a queue does not support
		DequeueUpTo, then an Unimplemented error is returned.
		
		If the queue is closed and there are more than 0 but less than `n`
		elements remaining, then instead of returning an OutOfRange error like
		QueueDequeueMany, less than `n` elements are returned immediately.  If
		the queue is closed and there are 0 elements left in the queue, then
		an OutOfRange error is returned just like in QueueDequeueMany.
		Otherwise the behavior is identical to QueueDequeueMany:
		
		This operation concatenates queue-element component tensors along the
		0th dimension to make a single component tensor.  All of the components
		in the dequeued tuple will have size n in the 0th dimension.
		
		This operation has `k` outputs, where `k` is the number of components in
		the tuples stored in the given queue, and output `i` is the ith
		component of the dequeued tuple.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  n: A `Tensor` of type `int32`. The number of tuples to dequeue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue has fewer than n elements, this operation
		    will block for up to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue_up_to_v2(handle:Dynamic, n:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues a tuple of one or more tensors from the given queue.
		
		This operation has k outputs, where k is the number of components
		in the tuples stored in the given queue, and output i is the ith
		component of the dequeued tuple.
		
		N.B. If the queue is empty, this operation will block until an element
		has been dequeued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a tuple.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is empty, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `component_types`.
		  One or more tensors that were dequeued as a tuple.
	**/
	static public function _queue_dequeue_v2(handle:Dynamic, component_types:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues a tuple of one or more tensors in the given queue.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		element has been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is full, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_enqueue(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues zero or more tuples of one or more tensors in the given queue.
		
		This operation slices each component tensor along the 0th dimension to
		make multiple queue elements. All of the tuple components must have the
		same size in the 0th dimension.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		elements have been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should
		    be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is too full, this operation will block for up
		    to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_enqueue_many(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues zero or more tuples of one or more tensors in the given queue.
		
		This operation slices each component tensor along the 0th dimension to
		make multiple queue elements. All of the tuple components must have the
		same size in the 0th dimension.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		elements have been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should
		    be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is too full, this operation will block for up
		    to timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_enqueue_many_v2(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues a tuple of one or more tensors in the given queue.
		
		The components input has k elements, which correspond to the components of
		tuples stored in the given queue.
		
		N.B. If the queue is full, this operation will block until the given
		element has been enqueued (or 'timeout_ms' elapses, if specified).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  components: A list of `Tensor` objects.
		    One or more tensors from which the enqueued tensors should be taken.
		  timeout_ms: An optional `int`. Defaults to `-1`.
		    If the queue is full, this operation will block for up to
		    timeout_ms milliseconds.
		    Note: This option is not supported yet.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _queue_enqueue_v2(handle:Dynamic, components:Dynamic, ?timeout_ms:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given queue.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. The number of elements in the given queue.
	**/
	static public function _queue_size(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the number of elements in the given queue.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a queue.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. The number of elements in the given queue.
	**/
	static public function _queue_size_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that randomizes the order of elements.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  min_after_dequeue: An optional `int`. Defaults to `0`.
		    Dequeue will block unless there would be this
		    many elements after the dequeue or the queue is closed. This
		    ensures a minimum level of mixing of elements.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the queue.
	**/
	static public function _random_shuffle_queue(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A queue that randomizes the order of elements.
		
		Args:
		  component_types: A list of `tf.DTypes` that has length `>= 1`.
		    The type of each component in a value.
		  shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    The shape of each component in a value. The length of this attr must
		    be either 0 or the same as the length of component_types. If the length of
		    this attr is 0, the shapes of queue elements are not constrained, and
		    only one element may be dequeued at a time.
		  capacity: An optional `int`. Defaults to `-1`.
		    The upper bound on the number of elements in this queue.
		    Negative numbers mean no limit.
		  min_after_dequeue: An optional `int`. Defaults to `0`.
		    Dequeue will block unless there would be this
		    many elements after the dequeue or the queue is closed. This
		    ensures a minimum level of mixing of elements.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this queue will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`. The handle to the queue.
	**/
	static public function _random_shuffle_queue_v2(component_types:Dynamic, ?shapes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var _sparse_accumulator_take_gradient_outputs : Dynamic;
	/**
		A stack that produces elements in first-in last-out order.
		
		Args:
		  elem_type: A `tf.DType`. The type of the elements on the stack.
		  stack_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary stack resource. Default
		    value is the name of the 'Stack' op (which is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the stack.
	**/
	static public function _stack(elem_type:Dynamic, ?stack_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Delete the stack from its resource container.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a stack.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _stack_close(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Pop the element at the top of the stack.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a stack.
		  elem_type: A `tf.DType`. The type of the elem that is popped.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `elem_type`.
		  The tensor that is popped from the top of the stack.
	**/
	static public function _stack_pop(handle:Dynamic, elem_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Push an element onto the stack.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a stack.
		  elem: A `Tensor`. The tensor to be pushed onto the stack.
		  swap_memory: An optional `bool`. Defaults to `False`.
		    Swap `elem` to CPU. Default to false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `elem`.
		  The same tensor as the input 'elem'.
	**/
	static public function _stack_push(handle:Dynamic, elem:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  size: A `Tensor` of type `int32`.
		  dtype: A `tf.DType`.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function _tensor_array(size:Dynamic, dtype:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _tensor_array_close(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayCloseV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _tensor_array_close_v2(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Delete the TensorArray from its resource container.
		
		This enables the user to close and release the resource in the middle
		of a step/run.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to a TensorArray (output of TensorArray or TensorArrayGrad).
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function _tensor_array_close_v3(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function _tensor_array_concat(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayConcatV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function _tensor_array_concat_v2(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concat the elements from the TensorArray into value `value`.
		
		Takes `T` elements of shapes
		
		  ```
		  (n0 x d0 x d1 x ...), (n1 x d0 x d1 x ...), ..., (n(T-1) x d0 x d1 x ...)
		  ```
		
		and concatenates them into a Tensor of shape:
		
		  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```
		
		All elements must have the same shape (excepting the first dimension).
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  element_shape_except0: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The expected shape of an element, if known,
		    excluding the first dimension. Used to validate the shapes of
		    TensorArray elements. If this shape is not fully specified, concatenating
		    zero-size TensorArrays is an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (value, lengths).
		
		  value: A `Tensor` of type `dtype`. All of the elements in the TensorArray, concatenated along the first
		    axis.
		  lengths: A `Tensor` of type `int64`. A vector of the row sizes of the original T elements in the
		    value output.  In the example above, this would be the values:
		    `(n1, n2, ..., n(T-1))`.
	**/
	static public function _tensor_array_concat_v3(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape_except0:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  indices: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _tensor_array_gather(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGatherV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  indices: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _tensor_array_gather_v2(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather specific elements from the TensorArray into output `value`.
		
		All elements selected by `indices` must have the same shape.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  indices: A `Tensor` of type `int32`.
		    The locations in the TensorArray from which to read tensor elements.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The expected shape of an element, if known. Used to
		    validate the shapes of TensorArray elements. If this shape is not
		    fully specified, gathering zero-size TensorArrays is an error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  All of the elements in the TensorArray, concatenated along a new
		  axis (the new dimension 0).
	**/
	static public function _tensor_array_gather_v3(handle:Dynamic, indices:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  source: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function _tensor_array_grad(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGradV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  source: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function _tensor_array_grad_v2(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a TensorArray for storing the gradients of values in the given handle.
		
		If the given TensorArray gradient already exists, returns a reference to it.
		
		Locks the size of the original TensorArray by disabling its dynamic size flag.
		
		**A note about the input flow_in:**
		
		The handle flow_in forces the execution of the gradient lookup to occur
		only after certain other operations have occurred.  For example, when
		the forward TensorArray is dynamically sized, writes to this TensorArray
		may resize the object.  The gradient TensorArray is statically sized based
		on the size of the forward TensorArray when this operation executes.
		Furthermore, the size of the forward TensorArray is frozen by this call.
		As a result, the flow is used to ensure that the call to generate the gradient
		TensorArray only happens after all writes are executed.
		
		In the case of dynamically sized TensorArrays, gradient computation should
		only be performed on read operations that have themselves been chained via
		flow to occur only after all writes have executed. That way the final size
		of the forward TensorArray is known when this operation is called.
		
		**A note about the source attribute:**
		
		TensorArray gradient calls use an accumulator TensorArray object.  If
		multiple gradients are calculated and run in the same session, the multiple
		gradient nodes may accidentally flow throuth the same accumulator TensorArray.
		This double counts and generally breaks the TensorArray gradient flow.
		
		The solution is to identify which gradient call this particular
		TensorArray gradient is being called in.  This is performed by identifying
		a unique string (e.g. "gradients", "gradients_1", ...) from the input
		gradient Tensor's name.  This string is used as a suffix when creating
		the TensorArray gradient object here (the attribute `source`).
		
		The attribute `source` is added as a suffix to the forward TensorArray's
		name when performing the creation / lookup, so that each separate gradient
		calculation gets its own TensorArray accumulator.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to the forward TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  source: A `string`.
		    The gradient source string, used to decide which gradient TensorArray
		    to return.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (grad_handle, flow_out).
		
		  grad_handle: A `Tensor` of type `resource`.
		  flow_out: A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_grad_v3(handle:Dynamic, flow_in:Dynamic, source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _tensor_array_pack(handle:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _tensor_array_read(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayReadV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function _tensor_array_read_v2(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Read an element from the TensorArray into output `value`.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  index: A `Tensor` of type `int32`.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  dtype: A `tf.DType`. The type of the elem that is returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The tensor that is read from the TensorArray.
	**/
	static public function _tensor_array_read_v3(handle:Dynamic, index:Dynamic, flow_in:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  indices: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_scatter(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayScatterV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  indices: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_scatter_v2(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatter the data from the input value into specific TensorArray elements.
		
		`indices` must be a vector, its length must match the first dim of `value`.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  indices: A `Tensor` of type `int32`.
		    The locations at which to write the tensor elements.
		  value: A `Tensor`. The concatenated tensor to write to the TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float scalar that enforces proper chaining of operations.
	**/
	static public function _tensor_array_scatter_v3(handle:Dynamic, indices:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function _tensor_array_size(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArraySizeV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function _tensor_array_size_v2(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get the current size of the TensorArray.
		
		Args:
		  handle: A `Tensor` of type `resource`.
		    The handle to a TensorArray (output of TensorArray or TensorArrayGrad).
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. The current size of the TensorArray.
	**/
	static public function _tensor_array_size_v3(handle:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  value: A `Tensor`.
		  lengths: A `Tensor` of type `int64`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_split(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArraySplitV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  value: A `Tensor`.
		  lengths: A `Tensor` of type `int64`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_split_v2(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split the data from the input value into TensorArray elements.
		
		Assuming that `lengths` takes on values
		
		  ```(n0, n1, ..., n(T-1))```
		
		and that `value` has shape
		
		  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```,
		
		this splits values into a TensorArray with T tensors.
		
		TensorArray index t will be the subtensor of values with starting position
		
		  ```(n0 + n1 + ... + n(t-1), 0, 0, ...)```
		
		and having size
		
		  ```nt x d0 x d1 x ...```
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  value: A `Tensor`. The concatenated tensor to write to the TensorArray.
		  lengths: A `Tensor` of type `int64`.
		    The vector of lengths, how to split the rows of value into the
		    TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float scalar that enforces proper chaining of operations.
	**/
	static public function _tensor_array_split_v3(handle:Dynamic, value:Dynamic, lengths:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_unpack(handle:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayV3
		
		Args:
		  size: A `Tensor` of type `int32`.
		  dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function _tensor_array_v2(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An array of Tensors of given size.
		
		Write data via Write and read via Read or Pack.
		
		Args:
		  size: A `Tensor` of type `int32`. The size of the array.
		  dtype: A `tf.DType`. The type of the elements on the tensor_array.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The expected shape of an element, if known. Used to
		    validate the shapes of TensorArray elements. If this shape is not
		    fully specified, gathering zero-size TensorArrays is an error.
		  dynamic_size: An optional `bool`. Defaults to `False`.
		    A boolean that determines whether writes to the TensorArray
		    are allowed to grow the size.  By default, this is not allowed.
		  clear_after_read: An optional `bool`. Defaults to `True`.
		    If true (default), Tensors in the TensorArray are cleared
		    after being read.  This disables multiple read semantics but allows early
		    release of memory.
		  tensor_array_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary tensor_array
		    resource. Default value is the name of the 'TensorArray' op (which
		    is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (handle, flow).
		
		  handle: A `Tensor` of type `resource`. The handle to the TensorArray.
		  flow: A `Tensor` of type `float32`. A scalar used to control gradient flow.
	**/
	static public function _tensor_array_v3(size:Dynamic, dtype:Dynamic, ?element_shape:Dynamic, ?dynamic_size:Dynamic, ?clear_after_read:Dynamic, ?tensor_array_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		  index: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_write(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Use TensorArrayGradV3
		
		Args:
		  handle: A `Tensor` of type `string`.
		  index: A `Tensor` of type `int32`.
		  value: A `Tensor`.
		  flow_in: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function _tensor_array_write_v2(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Push an element onto the tensor_array.
		
		Args:
		  handle: A `Tensor` of type `resource`. The handle to a TensorArray.
		  index: A `Tensor` of type `int32`.
		    The position to write to inside the TensorArray.
		  value: A `Tensor`. The tensor to write to the TensorArray.
		  flow_in: A `Tensor` of type `float32`.
		    A float scalar that enforces proper chaining of operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float scalar that enforces proper chaining of operations.
	**/
	static public function _tensor_array_write_v3(handle:Dynamic, index:Dynamic, value:Dynamic, flow_in:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a gradient to a given accumulator.
		
		Does not add if local_step is lesser than the accumulator's global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the gradient was computed.
		  gradient: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A tensor of the gradient to be accumulated.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of gradients aggregated in the given accumulators.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  The number of gradients aggregated in the given accumulator.
	**/
	static public function accumulator_num_accumulated(handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the accumulator with a new value for global_step.
		
		Logs warning if the accumulator's value is already higher than
		new_global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  new_global_step: A `Tensor` of type `int64`.
		    The new global_step value to set.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function accumulator_set_global_step(handle:Dynamic, new_global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average gradient in the given ConditionalAccumulator.
		
		The op blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated.  If the accumulator has already
		aggregated more than num_required gradients, it returns the average of
		the accumulated gradients.  Also automatically increments the recorded
		global_step in the accumulator by 1, and resets the aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to an accumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The average of the accumulated gradients.
	**/
	static public function accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A conditional accumulator for aggregating gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the values, can be [], in which case shape is unknown.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the
		    given name across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the accumulator.
	**/
	static public function conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		```python
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		```
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		```python
		    # Scalar partitions.
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions.
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		```
		
		See `dynamic_stitch` for an example on how to merge partitions back.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects with the same type as `data`.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		```python
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		```
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		```python
		    # Scalar indices:
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices:
		    merged[indices[m][i], ...] = data[m][i, ...]
		```
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result.
		
		For example:
		
		```python
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		```
		
		This method can be used to merge partitions created by `dynamic_partition`
		as illustrated on the following example:
		
		```python
		    # Apply function (increments x_i) on elements for which a certain condition
		    # apply (x_i != -1 in this example).
		    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
		    condition_mask=tf.not_equal(x,tf.constant(-1.))
		    partitioned_data = tf.dynamic_partition(
		        x, tf.cast(condition_mask, tf.int32) , 2)
		    partitioned_data[1] = partitioned_data[1] + 1.0
		    condition_indices = tf.dynamic_partition(
		        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
		    x = tf.dynamic_stitch(condition_indices, partitioned_data)
		    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
		    # unchanged.
		```
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 1 `Tensor` objects with type `int32`.
		  data: A list with the same length as `indices` of `Tensor` objects with the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Emits randomized records.
		
		Args:
		  file_pattern: A `string`. Glob pattern for the data files.
		  file_random_seed: An optional `int`. Defaults to `301`.
		    Random seeds used to produce randomized records.
		  file_shuffle_shift_ratio: An optional `float`. Defaults to `0`.
		    Shifts the list of files after the list is randomly
		    shuffled.
		  file_buffer_size: An optional `int`. Defaults to `10000`.
		    The randomization shuffling buffer.
		  file_parallelism: An optional `int`. Defaults to `16`.
		    How many sstables are opened and concurrently iterated over.
		  batch_size: An optional `int`. Defaults to `32`. The batch size.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A tensor of shape [batch_size].
	**/
	static public function record_input(file_pattern:Dynamic, ?file_random_seed:Dynamic, ?file_shuffle_shift_ratio:Dynamic, ?file_buffer_size:Dynamic, ?file_parallelism:Dynamic, ?batch_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a sparse gradient to a given accumulator.
		
		Does not add if local_step is smaller than the accumulator's
		global_step.
		
		Args:
		  handle: A `Tensor` of type mutable `string`. The handle to a accumulator.
		  local_step: A `Tensor` of type `int64`.
		    The local_step value at which the sparse gradient was computed.
		  gradient_indices: A `Tensor` of type `int64`.
		    Indices of the sparse gradient to be accumulated. Must be a
		    vector.
		  gradient_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Values are the non-zero slices of the gradient, and must have
		    the same first dimension as indices, i.e., the nnz represented by indices and
		    values must be consistent.
		  gradient_shape: A `Tensor` of type `int64`.
		    Shape of the sparse gradient to be accumulated.
		  has_known_shape: A `bool`.
		    Boolean indicating whether gradient_shape is unknown, in which
		    case the input is ignored during validation.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function sparse_accumulator_apply_gradient(handle:Dynamic, local_step:Dynamic, gradient_indices:Dynamic, gradient_values:Dynamic, gradient_shape:Dynamic, has_known_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts the average sparse gradient in a SparseConditionalAccumulator.
		
		The op will blocks until sufficient (i.e., more than num_required)
		gradients have been accumulated. If the accumulator has already
		aggregated more than num_required gradients, it will return its
		average of the accumulated gradients.  Also automatically increments
		the recorded global_step in the accumulator by 1, and resets the
		aggregate to 0.
		
		Args:
		  handle: A `Tensor` of type mutable `string`.
		    The handle to a SparseConditionalAccumulator.
		  num_required: A `Tensor` of type `int32`.
		    Number of gradients required before we return an aggregate.
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The data type of accumulated gradients. Needs to correspond to the type
		    of the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, shape).
		
		  indices: A `Tensor` of type `int64`. Indices of the average of the accumulated sparse gradients.
		  values: A `Tensor` of type `dtype`. Values of the average of the accumulated sparse gradients.
		  shape: A `Tensor` of type `int64`. Shape of the average of the accumulated sparse gradients.
	**/
	static public function sparse_accumulator_take_gradient(handle:Dynamic, num_required:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A conditional accumulator for aggregating sparse gradients.
		
		The accumulator accepts gradients marked with local_step greater or
		equal to the most recent global_step known to the accumulator. The
		average can be extracted from the accumulator, provided sufficient
		gradients have been accumulated. Extracting the average automatically
		resets the aggregate to 0, and increments the global_step recorded by
		the accumulator.
		
		Args:
		  dtype: A `tf.DType` from: `tf.float32, tf.float64, tf.int64, tf.int32, tf.uint8, tf.uint16, tf.int16, tf.int8, tf.complex64, tf.complex128, tf.qint8, tf.quint8, tf.qint32, tf.half`.
		    The type of the value being accumulated.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the values.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this accumulator will be shared under the given name
		    across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the accumulator.
	**/
	static public function sparse_conditional_accumulator(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stage values similar to a lightweight Enqueue.
		
		The basic functionality of this Op is similar to a queue with many
		fewer capabilities and options.  This Op is optimized for performance.
		
		Args:
		  values: A list of `Tensor` objects. a list of tensors
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this queue is placed in the given container. Otherwise,
		    a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    It is necessary to match this name to the matching Unstage Op.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stage(values:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op is similar to a lightweight Dequeue.
		
		The basic funtionality is similar to dequeue with many fewer
		capabilities and options.  This Op is optimized for performance.
		
		Args:
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function unstage(dtypes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
}