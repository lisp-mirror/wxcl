;;;window.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defclass window (object) ; evt-handler)
  ()
  (:documentation "The base class for all wxCL widgets."))

(defmethod show ((obj Window))
  "Makes the window visible."
  (wxWindow_Show (object-pointer obj)))

(defmethod hide ((obj Window))
  "Hides the window."
  (wxWindow_Hide (object-pointer obj)))

(defmethod set-size ((obj Window) (sz size))
  "Sets the size of the window."
  (wxWindow_SetSize (object-pointer obj)
		    -1
		    -1
		    (size-height sz)
		    (size-width sz)
		    wxSIZE_USE_EXISTING))

(defmethod set-position ((obj Window) (pos point))
  "Sets the position of the window."
  (wxWindow_SetSize (object-pointer obj)
		    (point-x pos)
		    (point-y pos)
		    -1
		    -1
		    wxSIZE_USE_EXISTING))

