(defun is-palindrome? (number)
  ;; Must be greater than or equal to 10
  (if (>= 10 number)
      (return-from is-palindrome? nil))

  (let ((reversed_num 0) (temp_num number))
    (loop while (> temp_num 0) do
      (progn
        (setq reversed_num (+ (* reversed_num 10) (mod temp_num 10)))
        (setq temp_num (floor temp_num 10))))
    
    (if (= reversed_num number)
           reversed_num
           nil)))

(defun largest-possible-product (number-of-ints)
  (defvar string-of-int)
  (setf string-of-int "")
  (loop
     for number-of-ints
     do
       (setf string-of-int 
             (add-to-string string-of-int "9"))))

(defun add-to-string (string addition)
  (concatenate 'string string addition))
