(ql:quickload "dexador")

(defpackage :test-project
  (:import-from :dexador)
  (:use :cl :vecto :plotlib :lquery))
(in-package :test-project)

(defun main ()
  (plotlib:test-plotlib "file.png"))

(defvar *doc* ($ (initialize (dex:get "https://wjhl.com"))))

(main)
