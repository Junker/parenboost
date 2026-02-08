(in-package :parenboost)

(defpsmacro encode-uri (uri)
  `(encode-u-r-i ,uri))

(defpsmacro decode-uri (uri)
  `(decode-u-r-i ,uri))

(defpsmacro encode-uri-components (uri)
  `(encode-u-r-i-component ,uri))

(defpsmacro decode-uri-components (uri)
  `(decode-u-r-i-components ,uri))

(defpsmacro url-can-parse (url &optional base)
  `(chain u-r-l (can-parse ,url ,@(when base `(,base)))))

(defpsmacro url-parse (url &optional base)
  `(chain u-r-l (parse ,url ,@(when base `(,base)))))
