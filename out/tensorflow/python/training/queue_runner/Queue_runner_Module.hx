/* This file is generated, do not edit! */
package tensorflow.python.training.queue_runner;
@:pythonImport("tensorflow.python.training.queue_runner") extern class Queue_runner_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Adds a `QueueRunner` to a collection in the graph.
		
		When building a complex model that uses many queues it is often difficult to
		gather all the queue runners that need to be run.  This convenience function
		allows you to add a queue runner to a well known collection in the graph.
		
		The companion method `start_queue_runners()` can be used to start threads for
		all the collected queue runners.
		
		Args:
		  qr: A `QueueRunner`.
		  collection: A `GraphKey` specifying the graph collection to add
		    the queue runner to.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
	**/
	static public function add_queue_runner(qr:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Starts all queue runners collected in the graph.
		
		This is a companion method to `add_queue_runner()`.  It just starts
		threads for all queue runners collected in the graph.  It returns
		the list of all threads.
		
		Args:
		  sess: `Session` used to run the queue ops.  Defaults to the
		    default session.
		  coord: Optional `Coordinator` for coordinating the started threads.
		  daemon: Whether the threads should be marked as `daemons`, meaning
		    they don't block program exit.
		  start: Set to `False` to only create the threads, not start them.
		  collection: A `GraphKey` specifying the graph collection to
		    get the queue runners from.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
		
		Raises:
		  ValueError: if `sess` is None and there isn't any default session.
		  TypeError: if `sess` is not a `tf.Session` object.
		
		Returns:
		  A list of threads.
	**/
	static public function start_queue_runners(?sess:Dynamic, ?coord:Dynamic, ?daemon:Dynamic, ?start:Dynamic, ?collection:Dynamic):Dynamic;
}