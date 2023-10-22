(defpackage :test-project
  (:use :cl :vecto :plotlib))
(in-package :test-project)


(defun main ()
  (plotlib:test-plotlib "file.png"))

(main)
