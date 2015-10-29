/* This file is generated, do not edit! */
package numpy.lib._datasource;
@:pythonImport("numpy.lib._datasource", "Repository") extern class Repository {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Create a Repository with a shared url or directory of baseurl.
	**/
	@:native("__init__")
	public function ___init__(baseurl:Dynamic, ?destpath:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Cache the file specified by path.
		
		Creates a copy of the file in the datasource cache.
	**/
	public function _cache(path:Dynamic):Dynamic;
	/**
		Extend DataSource method to prepend baseurl to ``path``.
	**/
	public function _findfile(path:Dynamic):Dynamic;
	/**
		Return complete path for path.  Prepends baseurl if necessary.
	**/
	public function _fullpath(path:Dynamic):Dynamic;
	/**
		Test if path is a net location.  Tests the scheme and netloc.
	**/
	public function _isurl(path:Dynamic):Dynamic;
	/**
		Test if the given mode will open a file for writing.
	**/
	public function _iswritemode(mode:Dynamic):Dynamic;
	/**
		Test if the filename is a zip file by looking at the file extension.
		
		        
	**/
	public function _iszip(filename:Dynamic):Dynamic;
	/**
		Return a tuple containing compressed filename variations.
	**/
	public function _possible_names(filename:Dynamic):Dynamic;
	/**
		Return a sanitised relative path for which
		os.path.abspath(os.path.join(base, path)).startswith(base)
	**/
	public function _sanitize_relative_path(path:Dynamic):Dynamic;
	/**
		Split zip extension from filename and return filename.
		
		*Returns*:
		    base, zip_ext : {tuple}
	**/
	public function _splitzipext(filename:Dynamic):Dynamic;
	/**
		Return absolute path of file in the Repository directory.
		
		If `path` is an URL, then `abspath` will return either the location
		the file exists locally or the location it would exist when opened
		using the `open` method.
		
		Parameters
		----------
		path : str
		    Can be a local file or a remote URL. This may, but does not
		    have to, include the `baseurl` with which the `Repository` was
		    initialized.
		
		Returns
		-------
		out : str
		    Complete path, including the `DataSource` destination directory.
	**/
	public function abspath(path:Dynamic):Dynamic;
	/**
		Test if path exists prepending Repository base URL to path.
		
		Test if `path` exists as (and in this order):
		
		- a local file.
		- a remote URL that has been downloaded and stored locally in the
		  `DataSource` directory.
		- a remote URL that has not been downloaded, but is valid and
		  accessible.
		
		Parameters
		----------
		path : str
		    Can be a local file or a remote URL. This may, but does not
		    have to, include the `baseurl` with which the `Repository` was
		    initialized.
		
		Returns
		-------
		out : bool
		    True if `path` exists.
		
		Notes
		-----
		When `path` is an URL, `exists` will return True if it's either
		stored locally in the `DataSource` directory, or is a valid remote
		URL.  `DataSource` does not discriminate between the two, the file
		is accessible if it exists in either location.
	**/
	public function exists(path:Dynamic):Dynamic;
	/**
		List files in the source Repository.
		
		Returns
		-------
		files : list of str
		    List of file names (not containing a directory part).
		
		Notes
		-----
		Does not currently work for remote repositories.
	**/
	public function listdir():Dynamic;
	/**
		Open and return file-like object prepending Repository base URL.
		
		If `path` is an URL, it will be downloaded, stored in the
		DataSource directory and opened from there.
		
		Parameters
		----------
		path : str
		    Local file path or URL to open. This may, but does not have to,
		    include the `baseurl` with which the `Repository` was
		    initialized.
		mode : {'r', 'w', 'a'}, optional
		    Mode to open `path`.  Mode 'r' for reading, 'w' for writing,
		    'a' to append. Available modes depend on the type of object
		    specified by `path`. Default is 'r'.
		
		Returns
		-------
		out : file object
		    File object.
	**/
	public function open(path:Dynamic, ?mode:Dynamic):Dynamic;
}