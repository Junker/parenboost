(in-package :parenboost)

(defpsmacro make-promise (fn)
  `(make *promise ,fn))

(defpsmacro promise-all (iterable)
  `(chain *promise (all ,iterable)))

(defpsmacro promise-all-settled (iterable)
  `(chain *promise (all-settled ,iterable)))

(defpsmacro promise-any (iterable)
  `(chain *promise (any ,iterable)))

(defpsmacro promise-race (iterable)
  `(chain *promise (race ,iterable)))

(defpsmacro promise-reject (reason)
  `(chain *promise (reject ,reason)))

(defpsmacro promise-resolve (val)
  `(chain *promise (resolve ,val)))

(defpsmacro promise-try (func &rest args)
  `(chain *promise (try ,func ,@args)))

(defpsmacro with-promise ((resolve &optional reject) &body body)
  `(new* *promise
         (lambda (,resolve ,@(when reject `(,reject)))
           ,@body)))
