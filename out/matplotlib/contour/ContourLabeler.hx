/* This file is generated, do not edit! */
package matplotlib.contour;
@:pythonImport("matplotlib.contour", "ContourLabeler") extern class ContourLabeler {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _add_label(t:Dynamic, x:Dynamic, y:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	public function _get_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	public function _get_label_text(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	/**
		Add contour label using :class:`~matplotlib.text.Text` class.
	**/
	public function add_label(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add contour label using :class:`ClabelText` class.
	**/
	public function add_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add a label near the point (x, y). If transform is None
		(default), (x, y) is in data coordinates; if transform is
		False, (x, y) is in display coordinates; otherwise, the
		specified transform will be used to translate (x, y) into
		display coordinates.
		
		*inline*:
		  controls whether the underlying contour is removed or
		  not. Default is *True*.
		
		*inline_spacing*:
		  space in pixels to leave on each side of label when
		  placing inline.  Defaults to 5.  This spacing will be
		  exact for labels at locations where the contour is
		  straight, less so for labels on curved contours.
	**/
	public function add_label_near(x:Dynamic, y:Dynamic, ?_inline:Dynamic, ?inline_spacing:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		This function calculates the appropriate label rotation given
		the linecontour coordinates in screen units, the index of the
		label location and the label width.
		
		It will also break contour and calculate inlining if *lc* is
		not empty (lc defaults to the empty list if None).  *spacing*
		is the space around the label in pixels to leave empty.
		
		Do both of these tasks at once to avoid calling mlab.path_length
		multiple times, which is relatively costly.
		
		The method used here involves calculating the path length
		along the contour in pixel coordinates and then looking
		approximately label width / 2 away from central point to
		determine rotation and then to break contour if desired.
	**/
	public function calc_label_rot_and_inline(slc:Dynamic, ind:Dynamic, lw:Dynamic, ?lc:Dynamic, ?spacing:Dynamic):Dynamic;
	/**
		Label a contour plot.
		
		Call signature::
		
		  clabel(cs, **kwargs)
		
		Adds labels to line contours in *cs*, where *cs* is a
		:class:`~matplotlib.contour.ContourSet` object returned by
		contour.
		
		::
		
		  clabel(cs, v, **kwargs)
		
		only labels contours listed in *v*.
		
		Optional keyword arguments:
		
		  *fontsize*:
		    size in points or relative size e.g., 'smaller', 'x-large'
		
		  *colors*:
		    - if *None*, the color of each label matches the color of
		      the corresponding contour
		
		    - if one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color
		
		    - if a tuple of matplotlib color args (string, float, rgb, etc),
		      different labels will be plotted in different colors in the order
		      specified
		
		  *inline*:
		    controls whether the underlying contour is removed or
		    not. Default is *True*.
		
		  *inline_spacing*:
		    space in pixels to leave on each side of label when
		    placing inline.  Defaults to 5.  This spacing will be
		    exact for labels at locations where the contour is
		    straight, less so for labels on curved contours.
		
		  *fmt*:
		    a format string for the label. Default is '%1.3f'
		    Alternatively, this can be a dictionary matching contour
		    levels with arbitrary strings to use for each contour level
		    (i.e., fmt[level]=string), or it can be any callable, such
		    as a :class:`~matplotlib.ticker.Formatter` instance, that
		    returns a string when called with a numeric contour level.
		
		  *manual*:
		    if *True*, contour labels will be placed manually using
		    mouse clicks.  Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels.  The third
		    button can be used to remove the last label added, but
		    only if labels are not inline.  Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can be an iterable object of x,y tuples. Contour labels
		    will be created as if mouse is clicked at each x,y positions.
		
		  *rightside_up*:
		    if *True* (default), label rotations will always be plus
		    or minus 90 degrees from level.
		
		  *use_clabeltext*:
		    if *True* (default is False), ClabelText class (instead of
		    matplotlib.Text) is used to create labels. ClabelText
		    recalculates rotation angles of texts during the drawing time,
		    therefore this can be used if aspect of the axes changes.
		
		.. plot:: mpl_examples/pylab_examples/contour_demo.py
	**/
	public function clabel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return x, y, and the index of a label location.
		
		Labels are plotted at a location with the smallest
		deviation of the contour from a straight line
		unless there is another label nearby, in which case
		the next best place on the contour is picked up.
		If all such candidates are rejected, the beginning
		of the contour is chosen.
	**/
	public function get_label_coords(distances:Dynamic, XX:Dynamic, YY:Dynamic, ysize:Dynamic, lw:Dynamic):Dynamic;
	/**
		Return the width of the label in points.
	**/
	public function get_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		This computes actual onscreen label width.
		This uses some black magic to determine onscreen extent of non-drawn
		label.  This magic may not be very robust.
		
		This method is not being used, and may be modified or removed.
	**/
	public function get_real_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		get the text of the label
	**/
	public function get_text(lev:Dynamic, fmt:Dynamic):Dynamic;
	public function labels(_inline:Dynamic, inline_spacing:Dynamic):Dynamic;
	/**
		Find a good place to plot a label (relatively flat
		part of the contour).
	**/
	public function locate_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		Defaults to removing last label, but any index can be supplied
	**/
	public function pop_label(?index:Dynamic):Dynamic;
	/**
		Return *False* if contours are too short for a label.
	**/
	public function print_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		set the label properties - color, fontsize, text
	**/
	public function set_label_props(label:Dynamic, text:Dynamic, color:Dynamic):Dynamic;
	/**
		Return *True* if a label is already near this location.
	**/
	public function too_close(x:Dynamic, y:Dynamic, lw:Dynamic):Dynamic;
}