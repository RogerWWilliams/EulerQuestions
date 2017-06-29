(defparameter *UPPER-LIMIT* 1000)

(defun add (operand1 operand2) 
  (+ operand1 operand2))

(defun remainder (dividend divisor)
  (mod dividend divisor))

(defun sum-multiples (range)
  (defvar total)
  (setf total 0)
  (dotimes (n range)
    (cond ((equal 0 (remainder n 3)) (setf total (add total n)))
          ((equal 0 (remainder n 5)) (setf total (add total n)))
          (t ()))
    )
    (print total))