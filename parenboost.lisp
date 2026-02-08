(in-package :parenboost)

(defpsmacro length> (obj len)
  `(> (chain ,obj length)
      ,len))

(defpsmacro length< (obj len)
  `(< (chain ,obj length)
      ,len))

(defpsmacro length= (obj len)
  `(= (chain ,obj length)
      ,len))

(defpsmacro with-timeout ((sec) &body body)
  `(set-timeout (lambda () ,@body)
                ,sec))

(defpsmacro with-interval ((sec) &body body)
  `(set-interval (lambda () ,@body)
                 ,sec))


(defpsmacro undefinedp (obj)
  `(undefined ,obj))

(defpsmacro definedp (obj)
  `(defined ,obj))

(defpsmacro nanp (obj)
  `(is-na-n ,obj))

(defpsmacro finitep (obj)
  `(is-finite ,obj))

(defpsmacro make (class &rest args)
  `(new (,class ,@args)))

(defpsmacro throw-error (&rest args)
  `(throw (new (*error ,@args))))
