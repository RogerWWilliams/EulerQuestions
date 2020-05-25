(defparameter *MAX-RESULT* 4000000)

(defun is-even (number)
  ;; Checks number for eveness
  ;;   - is even  - 1
  ;;   - not even - 0
  (if (equal 0 (rem number 2)) 1 0)) 

(defun fibinocci (number)
  (cond
    (( equal 0 number )  0)
    (( equal 1 number )  1)
    (t   ( + (fibinocci (- number 2)) (fibinocci (- number 1))))))

(defun sum-first-4M-fibs-even-valued (max-sum)
  ;; Enter the number of even Fib numbers to sum
  (let ((counter 0) (total-sum 0) (fib-value 0))
    (loop
      (when (< max-sum total-sum)
        (print total-sum)
        (return))
      (setf fib-value (fibinocci counter))
      (setf counter (+ counter 1))
      (if (equal 1 (is-even fib-value))
          (setf total-sum (+ total-sum fib-value))))))
