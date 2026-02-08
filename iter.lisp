(in-package :parenboost)

(defpsmacro reduce (func iter &optional init)
  `(chain ,iter (reduce ,func ,init)))

(defpsmacro mapcar (func iter)
  `(chain ,iter (map ,func)))

(defpsmacro filter-map (func iter) ; analog of serapeum:filter-map
  `(chain ,iter
          (map ,func)
          (filter (lambda (a) a))))

(defpsmacro every (func iter)
  `(chain ,iter (every ,func)))

(defpsmacro member (item iter)
  `(chain ,iter (includes ,item)))

(defpsmacro some (func iter)
  `(chain ,iter (some ,func)))

(defpsmacro find (func iter)
  `(chain ,iter (find ,func)))

(defpsmacro append (iter &rest iters)
  `(chain ,iter (concat ,@iters)))

(defpsmacro take (n iter) ; analog of serapeum:take
  `(chain ,iter (take ,n)))

(defpsmacro drop (n iter) ; analog of serapeum:drop
  `(chain ,iter (drop ,n)))

(defpsmacro doplist ((key val obj) &body body)
  (with-ps-gensyms (kv)
    `(chain *object
            (entries ,obj)
            (for-each (lambda (,kv)
                        (destructuring-bind (,key ,val) ,kv
                          ,@body))))))

(defpsmacro array-from (obj)
  `(chain *array (from ,obj)))

(defpsmacro arrayp (list) ; redefine original arrayp cuz it's obsolete
  `(chain *array (is-array ,list)))

(defpsmacro listp (list) ; alias for arrayp
  `(arrayp ,list))
