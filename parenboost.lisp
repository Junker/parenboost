(in-package :parenboost)

(defpsmacro length> (val len)
  `(> (chain ,val length)
      ,len))

(defpsmacro length< (val len)
  `(< (chain ,val length)
      ,len))

(defpsmacro length= (val len)
  `(= (chain ,val length)
      ,len))

(defpsmacro emptyp (val)
  `(= 0 (length ,val)))

(defpsmacro with-timeout ((sec) &body body)
  `(set-timeout (lambda () ,@body)
                ,sec))

(defpsmacro with-interval ((sec) &body body)
  `(set-interval (lambda () ,@body)
                 ,sec))

(defpsmacro undefinedp (val)
  `(undefined ,val))

(defpsmacro definedp (val)
  `(defined ,val))

(defpsmacro nanp (val)
  `(is-na-n ,obj))

(defpsmacro finitep (obj)
  `(is-finite ,obj))

(defpsmacro make (class &rest args)
  `(new (,class ,@args)))

(defpsmacro throw-error (&rest args)
  `(throw (new (*error ,@args))))
