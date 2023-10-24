(defpackage :test-project
  (:import-from :dexador)
  (:use
   :cl :vecto :plotlib :lquery :trivia :plump))
(in-package :test-project)

(defvar *all-children-query* "html > *")

(defun main ()
  (plotlib:test-plotlib "file.png"))

(defun get-all-children (root-node)
  ($ root-node *all-children-query*))

(defvar *doc* ($ (initialize (dex:get "https://wjhl.com"))))
(defvar *all-children* (get-all-children *doc*))

(defun walk-dom-tree (root reporter)
  "Depth-first search of the DOM, using Trivia for matching."
  (match root
    ((vector*)
     (loop for i across root do (walk-dom-tree i reporter)))
    ((type element)
     (funcall reporter root)
     ;; Including the amount of children
     (walk-dom-tree (plump:children root) reporter))))

;; Show the dom tree walked with text nodes.
(walk-dom-tree *all-children* (lambda (node) (princ (plump:children node))))
(main)
