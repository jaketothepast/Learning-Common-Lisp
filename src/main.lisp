(defpackage :test-project
  (:use :cl :vecto :plotlib))
(in-package :test-project)


(defun main ()
  (test-plotlib "file.png"))

(main)
