(defpackage test-project/tests/main
  (:use :cl
        :test-project
        :rove))
(in-package :test-project/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :test-project)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
