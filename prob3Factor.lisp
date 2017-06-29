(defun is-factor (query-number number-to-factor)
  (cond ((equal 0 (rem number-to-factor query-number)) t)
        (t nil)))

(defun is-prime (number)
  (defvar ret-val nil)
  (cond ((eq 2 number)
         (setf ret-val t))
        (t
         (loop 
            for cntr
            from 2
            to (1- number)
            do (cond ((when (is-factor cntr number) 
                        (setf ret-val nil)(return)))
                     (t (setf ret-val t))))))
  ret-val)

 (defun largest-prime-factor (number)
    (defvar operand1)
    (defvar operand2)
    (defvar op2)
    (setf operand1 0)
    (setf operand2 0)
    (setf op2 0)

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
    (max operand1 operand2))