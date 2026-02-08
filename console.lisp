(in-package :parenboost)

(defpsmacro console-log (arg1 &rest args)
  `(chain console (log ,arg1 ,@args)))

(defpsmacro console-debug (arg1 &rest args)
  `(chain console (debug ,arg1 ,@args)))

(defpsmacro console-info (arg1 &rest args)
  `(chain console (info ,arg1 ,@args)))

(defpsmacro console-warn (arg1 &rest args)
  `(chain console (warn ,arg1 ,@args)))

(defpsmacro console-error (arg1 &rest args)
  `(chain console (error ,arg1 ,@args)))

(defpsmacro console-trace (arg1 &rest args)
  `(chain console (trace ,arg1 ,@args)))

(defpsmacro console-assert (assertion &rest args)
  `(chain console (assert ,assertion ,@args)))

(defpsmacro console-time (label)
  `(chain console (time ,label)))

(defpsmacro console-time-end (label)
  `(chain console (time-end ,label)))
