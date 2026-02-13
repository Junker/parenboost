(in-package :parenboost)

(defpsmacro json-raw-p (val)
  `(chain *j-s-o-n (is-raw-json ,val)))

(defpsmacro json-parse (str)
  `(chain *j-s-o-n (parse ,str)))

(defpsmacro json-raw-json (str)
  `(chain *j-s-o-n (raw-j-s-o-n ,str)))

(defpsmacro json-stringify (obj)
  `(chain *j-s-o-n (stringify ,obj)))
