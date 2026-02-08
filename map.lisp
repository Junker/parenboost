(in-package :parenboost)

(defpsmacro make-map ()
  `(make *map))

(defpsmacro make-weak-map ()
  `(make *weak-map))

(defpsmacro mapp (map)
  `(instanceof ,map *map))

(defpsmacro map-set (map key val)
  `(chain ,map (set ,key ,val)))

(defpsmacro map-get (map key)
  `(chain ,map (get ,key)))

(defpsmacro map-get-or-insert (map key)
  `(chain ,map (get-or-insert ,key)))

(defpsmacro map-clear (map)
  `(chain ,map (clear)))

(defpsmacro map-delete (map key)
  `(chain ,map (delete ,key)))

(defpsmacro map-has (map key)
  `(chain ,map (has ,key)))

(defpsmacro map-keys (map)
  `(chain ,map (keys)))

(defpsmacro map-values (map)
  `(chain ,map (values)))
