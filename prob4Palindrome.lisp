(defun is-palindrome (number)
  (cond ((oddp (length (write-to-string number)))
         nil)
        (1
         (defvar string-size)
         (defvar first-half-string)
         (setq string-size (length (write-to-string number)))
         (setq first-half-string 
               (substring (write-to-string number) 
                          0 ( / string-size 2)))
         (defvar second-half-string)
         (setq second-half-string 
               (substring (write-to-string number) 
                          ( / string-size 2 ) string-size))
         (if (equal first-half-string (reverse second-half-string))
             t
             nil))))

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
