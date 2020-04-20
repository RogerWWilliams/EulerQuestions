(defun is-factor (query-number number-to-factor)
  (cond ((equal 0 (rem number-to-factor query-number)) t)
        (t nil)))

(defun is-prime (tst-number)
  (let ((ret-val 0))
    (cond ((eq 2 tst-number)
           (setf ret-val t))
          (t
           (loop 
             for cntr
             from 2
               to (1- tst-number)
             do (cond ((when (is-factor cntr tst-number) 
                         (setf ret-val nil)(return)))
                      (t (setf ret-val t))))))
    ret-val))

 (defun largest-prime-factor (number)
   (let
       ((operand1 0)
        (operand2 0)
        (op2 0))
     (loop
       for counter
       from (isqrt number)
       downto 1
       do
          (cond ((is-factor counter number)
                 (when (is-prime counter)
                   (setf operand1 counter)
                   (setf op2 (floor number counter))
                   (when (is-prime op2)
                     (setf operand2 op2))
                   (return)))
                (t ())))
     (max operand1 operand2)))
