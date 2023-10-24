(ql:quickload "dexador")

(defpackage :test-project
  (:import-from :dexador)
  (:use :cl :vecto :plotlib :lquery :trivia))
(in-package :test-project)

(defvar *all-children-query* "html > *")

(defun main ()
  (plotlib:test-plotlib "file.png"))

(defvar *doc* ($ (initialize (dex:get "https://wjhl.com"))))

(defun get-all-children (root-node)
  ($ root-node *all-children-query*))

(defvar *all-children* (get-all-children *doc*))

(defun walk-dom-tree (root)
  "Depth-first search of the DOM, using Trivia for matching.")

(walk-dom-tree *all-children*)

(main)
