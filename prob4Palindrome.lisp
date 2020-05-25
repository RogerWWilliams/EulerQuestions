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

(defun largest-possible-product ()
  (let ((prod 0) (num1 999) (num2 999) (cur-largest-palindrome 0))
    (loop while (> num1 0) do 
      (loop while (> num2 0) do
        (progn
          ;;(print "Num1")
          ;;(write num1)
          ;;(print "Num2")
          ;;(write num2)
          (setq prod (* num1 num2))
          (if (is-palindrome? prod)
              (if (> prod cur-largest-palindrome)
                  (setq cur-largest-palindrome prod)))
          (setq num2 (- num2 1))))
      (setq num2 999)
      (setq num1 (- num1 1)))
    (print "Largest Product Palindrome = ")
    (write cur-largest-palindrome)))
