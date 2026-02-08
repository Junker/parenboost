(in-package :parenboost)

(defpsmacro html-element-p (object)
  `(instanceof ,object *h-t-m-l-element))

(defpsmacro element-by-id (element-id &optional (elem 'document))
  `(chain ,elem (get-element-by-id ,element-id)))

(defpsmacro elements-by-tag-name (tag-name &optional (elem 'document))
  `(chain ,elem (get-elements-by-tag-name ,tag-name)))

(defpsmacro elements-by-class (class &optional (elem 'document))
  `(chain ,elem (get-elements-by-class ,class)))

(defpsmacro elements-by-name (name &optional (elem 'document))
  `(chain ,elem (get-elements-by-name ,name)))

(defpsmacro query-selector (selector &optional (elem 'document))
  `(chain ,elem (query-selector ,selector)))

(defpsmacro query-selector-all (selector &optional (elem 'document))
  `(chain ,elem (query-selector-all ,selector)))

(defpsmacro inner-html (elem)
  `(chain ,elem inner-h-t-m-l))

(defpsmacro add-event-listener (elem type listener &rest args)
  `(chain ,elem (add-event-listener ,type ,listener ,@args)))

(defpsmacro remove-event-listener (elem type listener &rest args)
  `(chain ,elem (remove-event-listener ,type ,listener ,@args)))

(defpsmacro dispatch-event (elem event)
  `(chain ,elem (dispatch-event ,event)))
