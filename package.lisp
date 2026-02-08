(defpackage parenboost
  (:use #:cl #:parenscript)
  (:export #:length>
           #:length<
           #:length=
           #:with-timeout
           #:with-interval
           #:undefinedp
           #:definedp
           #:nanp
           #:finitep
           #:make
           #:throw-error
           ;; ITER
           #:reduce
           #:mapcar
           #:filter-map
           #:every
           #:member
           #:some
           #:find
           #:append
           #:take
           #:drop
           #:doplist
           #:array-from
           #:arrayp
           #:listp
           ;; STRING
           #:str-char-at
           #:str-char-code-at
           #:str-code-point-at
           #:str-concat
           #:strcat
           #:str-ends-with-p
           #:str-includes-p
           #:str-contains-p
           #:str-index-of
           #:str-well-formed-p
           #:str-last-index-of
           #:str-match
           #:str-match-all
           #:str-normalize
           #:str-repeat
           #:str-replace
           #:str-replace-all
           #:str-search
           #:str-slice
           #:str-split
           #:str-starts-with-p
           #:str-substring
           #:str-downcase
           #:str-upcase
           #:str-trim
           #:str-trim-end
           #:str-trim-start
           ;; CONSOLE
           #:console-log
           #:console-debug
           #:console-info
           #:console-warn
           #:console-error
           #:console-trace
           #:console-assert
           #:console-time
           #:console-time-end
           ;; DOM
           #:html-element-p
           #:element-by-id
           #:elements-by-tag-name
           #:elements-by-class
           #:elements-by-name
           #:query-selector
           #:query-selector-all
           #:inner-html
           #:add-event-listener
           #:remove-event-listener
           #:dispatch-event
           ;; MAP
           #:make-map
           #:make-weak-map
           #:mapp
           #:map-set
           #:map-get
           #:map-get-or-insert
           #:map-clear
           #:map-delete
           #:map-has
           #:map-keys
           #:map-values
           ;; URI
           #:encode-uri
           #:decode-uri
           #:encode-uri-components
           #:decode-uri-components
           #:url-can-parse
           #:url-parse
           ;; JSON
           #:json-raw-p
           #:json-parse
           #:json-raw-json
           #:json-stringify
           ;; PROMISE
           #:make-promise
           #:promise-all
           #:promise-all-settled
           #:promise-any
           #:promise-race
           #:promise-reject
           #:promise-resolve
           #:promise-try
           #:with-promise))
