/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.client.random_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.client.random_forest", "TensorForestLossHook") extern class TensorForestLossHook {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(early_stopping_rounds:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(early_stopping_rounds:Dynamic):Void;
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
		Called when new TensorFlow session is created.
		
		This is called to signal the hooks that a new session has been created. This
		has two essential differences with the situation in which `begin` is called:
		
		* When this is called, the graph is finalized and ops can no longer be added
		    to the graph.
		* This method will also be called as a result of recovering a wrapped
		    session, not only at the beginning of the overall session.
		
		Args:
		  session: A TensorFlow Session that has been created.
		  coord: A Coordinator object which keeps track of all threads.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Called after each call to run().
		
		The `run_values` argument contains results of requested ops/tensors by
		`before_run()`.
		
		The `run_context` argument is the same one send to `before_run` call.
		`run_context.request_stop()` can be called to stop the iteration.
		
		If `session.run()` raises any exceptions then `after_run()` is not called.
		
		Args:
		  run_context: A `SessionRunContext` object.
		  run_values: A SessionRunValues object.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Called before each call to run().
		
		You can return from this call a `SessionRunArgs` object indicating ops or
		tensors to add to the upcoming `run()` call.  These ops/tensors will be run
		together with the ops/tensors originally passed to the original run() call.
		The run args you return can also contain feeds to be added to the run()
		call.
		
		The `run_context` argument is a `SessionRunContext` that provides
		information about the upcoming `run()` call: the originally requested
		op/tensors, the TensorFlow Session.
		
		At this point graph is finalized and you can not add ops.
		
		Args:
		  run_context: A `SessionRunContext` object.
		
		Returns:
		  None or a `SessionRunArgs` object.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Called once before using the session.
		
		When called, the default graph is the one that will be launched in the
		session.  The hook can modify the graph by adding new operations to it.
		After the `begin()` call the graph will be finalized and the other callbacks
		can not modify the graph anymore. Second call of `begin()` on the same
		graph, should not change the graph.
	**/
	public function begin():Dynamic;
	/**
		Called at the end of session.
		
		The `session` argument can be used in case the hook wants to run final ops,
		such as saving a last checkpoint.
		
		If `session.run()` raises exception other than OutOfRangeError or
		StopIteration then `end()` is not called.
		Note the difference between `end()` and `after_run()` behavior when
		`session.run()` raises OutOfRangeError or StopIteration. In that case
		`end()` is called but `after_run()` is not called.
		
		Args:
		  session: A TensorFlow Session that will be soon closed.
	**/
	public function end(session:Dynamic):Dynamic;
}