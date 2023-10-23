(defpackage :html-classes
  (:use :cl))
(in-package :html-classes)

(defclass HTMLstream ()
  ((out :accessor out))
  (:documentation "Provide HTML Generation services"))
