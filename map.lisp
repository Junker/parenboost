(in-package :parenboost)

(defpsmacro make-hash-table ()
  `(make *map))

(defpsmacro make-weak-hash-table ()
  `(make *weak-map))

(defpsmacro hash-table-p (hash)
  `(instanceof ,hash *map))

(defpsmacro sethash (key val hash)
  `(chain ,hash (set ,key ,val)))

(defpsmacro gethash (key hash)
  `(chain ,hash (get ,key)))

(defpsmacro clrhash (hash)
  `(chain ,hash (clear)))

(defpsmacro remhash (key hash)
  `(chain ,hash (delete ,key)))

(defpsmacro hashash (key hash)
  `(chain ,hash (has ,key)))

(defpsmacro hash-table-keys (hash)
  `(chain ,hash (keys)))

(defpsmacro hash-table-values (hash)
  `(chain ,hash (values)))

(defpsmacro maphash (fun hash)
  (with-ps-gensyms (key val)
    `(chain ,hash (for-each (lambda (,val ,key)
                              (funcall ,fun ,key ,val))))))

(defpsmacro hash-table-count (hash)
  `(getprop ,hash 'size))
