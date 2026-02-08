(defsystem parenboost
  :version "0.1.0"
  :author "Dmitrii Kosenkov"
  :license "MIT"
  :depends-on ("parenscript")
  :description "Useful parenscript macros"
  :homepage "https://github.com/Junker/parenboost"
  :source-control (:git "https://github.com/Junker/parenboost.git")
  :components ((:file "package")
               (:file "parenboost")
               (:file "iter")
               (:file "string")
               (:file "json")
               (:file "dom")
               (:file "console")
               (:file "promise")))
