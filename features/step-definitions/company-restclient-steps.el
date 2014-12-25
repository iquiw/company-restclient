;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(When "^I execute company-restclient prefix command at current point$"
      (lambda ()
        (setq company-restclient-test-prefix-output
              (company-restclient 'prefix))))

(Then "^company-restclient prefix is\\(?: \"\\(.*\\)\"\\|:\\)$"
      (lambda (expected)
        (should (equal company-restclient-test-prefix-output expected))))

(Then "^company-restclient prefix none$"
      (lambda ()
        (should (not company-restclient-test-prefix-output))))
