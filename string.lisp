(in-package :parenboost)

(defpsmacro str-char-at (str index)
  `(chain ,str (char-at ,index)))

(defpsmacro str-char-code-at (str index)
  `(chain ,str (char-code-at ,index)))

(defpsmacro str-code-point-at (str index)
  `(chain ,str (code-point-at ,index)))

(defpsmacro str-concat (str &rest rest)
  `(chain ,str (concat ,@rest)))
(defpsmacro strcat (str &rest rest)
  `(str-concat ,str ,@rest))

(defpsmacro str-ends-with-p (str search-str &optional end-pos)
  `(chain ,str (ends-with ,search-str ,@(when end-pos `(,end-pos)))))

(defpsmacro str-includes-p (str search-str &optional pos)
  `(chain ,str (includes ,search-str ,@(when pos `(,pos)))))
(defpsmacro str-contains-p (&rest args)  ; alias
  `(str-includes-p ,@args))

(defpsmacro str-index-of (str search-str &optional pos)
  `(chain ,str (index-of ,search-str ,@(when pos `(,pos)))))

(defpsmacro str-well-formed-p (str)
  `(chain ,str (is-well-formed)))

(defpsmacro str-last-index-of (str search-str &optional pos)
  `(chain ,str (last-index-of ,search-str ,@(when pos `(,pos)))))

(defpsmacro str-match (str regx)
  `(chain ,str (match ,regx)))

(defpsmacro str-match-all (str regx)
  `(chain ,str (match-all ,regx)))

(defpsmacro str-normalize (str)
  `(chain ,str (normalize)))

(defpsmacro str-repeat (str count)
  `(chain ,str (repeat ,count)))

(defpsmacro str-replace (str from to)
  `(chain ,str (replace ,from ,to)))

(defpsmacro str-replace-all (str from to)
  `(chain ,str (replace-all ,from ,to)))

(defpsmacro str-search (str regx)
  `(chain ,str (search ,regx)))

(defpsmacro str-slice (str index-start &optional index-end)
  `(chain ,str (slice ,index-start ,@(when index-end `(,index-end)))))

(defpsmacro str-split (str separator &optional limit)
  `(chain ,str (split ,separator ,@(when limit `(,limit)))))

(defpsmacro str-starts-with-p (str search-str &optional pos)
  `(chain ,str (starts-with ,search-str ,@(when pos `(,pos)))))

(defpsmacro str-substring (str index-start &optional index-end)
  `(chain ,str (substring ,index-start ,@(when index-end `(,index-end)))))

(defpsmacro str-downcase (str)
  `(str-to-lower-case ,str))

(defpsmacro str-upcase (str)
  `(str-to-upper-case ,str))

(defpsmacro str-trim (str)
  `(chain ,str (trim)))

(defpsmacro str-trim-end (str)
  `(chain ,str (trim-end)))

(defpsmacro str-trim-start (str)
  `(chain ,str (trim-start)))

(defpsmacro str-lines (str)
  `(chain ,str (split "\\n")))
