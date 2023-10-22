(defpackage :plotlib
  (:use :cl :vecto)
  (:export save-png plot-fill-rect plot-frame-rect
	   plot-size-rect plot-line plot-string
	   plot-string-bold pen-width))
(in-package :plotlib)

(defun plot-fill-rect (x y width height gscale)
  (vecto:set-rgb-fill gscale gscale gscale)
  (vecto:rectangle x y width height)
  (vecto:fill-path))

(defun plot-frame-rect (x y width height)
  (set-line-width 1)
  (set-rgb-fill 1 1 1)
  (rectangle x y width height)
  (stroke))

(defun plot-line (x1 x2 y1 y2)
  (set-line-width 1)
  (set-rgb-fill 0 0 0)
  (move-to x1 y1)
  (line-to x2 y2)
  (stroke))

(defun plot-string (x y str)
  (let ((font (get-font #P"/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf")))
    (set-font font 15)
    (set-rgb-fill 0 0 0)
    (draw-string x y str)))

(defun plot-string-bold (x y str)
  (let ((font (get-font #P"/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf")))
    (set-font font 15)
    (set-rgb-fill 0 0 0)
    (draw-string x y str)))

(defun test-plotlib (file)
  (with-canvas (:width 90 :height 90)
    (plot-fill-rect 5 10 15 30 0.2)
    (plot-fill-rect 25 30 30 7 0.7)
    (plot-frame-rect 10 50 30 7)
    (plot-line 90 5 10 5)
    (plot-string 10 65 "test 1 2 3")
    (plot-string-bold 10 78 "Hello")
    (save-png file)))
