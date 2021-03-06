/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.event_accumulator;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.event_accumulator") extern class Event_accumulator_Module {
	static public var AUDIO : Dynamic;
	static public var COMPRESSED_HISTOGRAMS : Dynamic;
	static public var DEFAULT_SIZE_GUIDANCE : Dynamic;
	static public var GRAPH : Dynamic;
	static public var HEALTH_PILLS : Dynamic;
	static public var HEALTH_PILL_EVENT_TAG : Dynamic;
	static public var HISTOGRAMS : Dynamic;
	static public var IMAGES : Dynamic;
	/**
		Check the path name to see if it is probably a TF Events file.
		
		Args:
		  path: A file path to check if it is an event file.
		
		Raises:
		  ValueError: If the path is an empty string.
		
		Returns:
		  If path is formatted like a TensorFlowEventsFile.
	**/
	static public function IsTensorFlowEventsFile(path:Dynamic):Dynamic;
	static public var META_GRAPH : Dynamic;
	static public var NORMAL_HISTOGRAM_BPS : Dynamic;
	static public var RUN_METADATA : Dynamic;
	static public var SCALARS : Dynamic;
	static public var STORE_EVERYTHING_SIZE_GUIDANCE : Dynamic;
	static public var SUMMARY_TYPES : Dynamic;
	static public var TENSORS : Dynamic;
	/**
		Creates fixed size histogram by adding compression to accumulated state.
		
		This routine transforms a histogram at a particular step by linearly
		interpolating its variable number of buckets to represent their cumulative
		weight at a constant number of compression points. This significantly reduces
		the size of the histogram and makes it suitable for a two-dimensional area
		plot where the output of this routine constitutes the ranges for a single x
		coordinate.
		
		Args:
		  histo_ev: A HistogramEvent namedtuple.
		  bps: Compression points represented in basis points, 1/100ths of a percent.
		
		Returns:
		  CompressedHistogramEvent namedtuple.
	**/
	static public function _CompressHistogram(histo_ev:Dynamic, bps:Dynamic):Dynamic;
	/**
		Create an event generator for file or directory at given path string.
	**/
	static public function _GeneratorFromPath(path:Dynamic):Dynamic;
	/**
		Return the string message associated with TensorBoard purges.
	**/
	static public function _GetPurgeMessage(most_recent_step:Dynamic, most_recent_wall_time:Dynamic, event_step:Dynamic, event_wall_time:Dynamic, num_expired_scalars:Dynamic, num_expired_histos:Dynamic, num_expired_comp_histos:Dynamic, num_expired_images:Dynamic, num_expired_audio:Dynamic):Dynamic;
	/**
		Convert the string file_version in event.proto into a float.
		
		Args:
		  file_version: String file_version from event.proto
		
		Returns:
		  Version number as a float.
	**/
	static public function _ParseFileVersion(file_version:Dynamic):Dynamic;
	/**
		Linearly map from [x0, x1] unto [y0, y1].
	**/
	static public function _Remap(x:Dynamic, x0:Dynamic, x1:Dynamic, y0:Dynamic, y1:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}