;;; ein.el --- IPython notebook client in Emacs

;; Copyright (C) 2012- Takafumi Arakaki

;; Author: Takafumi Arakaki <aka.tkf at gmail.com>
;; URL: http://tkf.github.com/emacs-ipython-notebook/
;; Keywords: applications, tools
;; Version: 0.1.2alpha0

;; This file is NOT part of GNU Emacs.

;; ein.el is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; ein.el is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with ein.el.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; # Development
;;
;; Variable named `ein:%VAR-NAME%' is a permanent buffer local
;; variable defined by `ein:deflocal'.  It is often an instance of a
;; class/struct named `ein:VAR-NAME'.
;;
;; Old naming rule:
;; * `ein:@VAR-NAME'/`ein:VAR-NAME' is a permanent buffer local
;;   variable.  These variables are obsolete now.
;; * `ein:$STRUCT-NAME' is a name of struct.
;;   These strcuts will be renamed to `ein:CLASS-NAME' when
;;   reimplementing them using EIEIO class instead of CL struct.
;;
;; See also:
;; `CLiki : naming conventions <http://www.cliki.net/naming%20conventions>`_

;;; Code:

(defvar ein:version "0.1.2alpha0"
  "Version number for Emacs IPython Notebook (EIN).")

(autoload 'ein:notebooklist-open "ein-notebooklist"
  "Open notebook list buffer." t)

(autoload 'ein:notebooklist-list-notebooks "ein-notebooklist"
  "Return a list of notebook path (NBPATH)." t)

(autoload 'ein:notebooklist-open-notebook-global "ein-notebooklist"
  "Choose notebook from all opened notebook list and open it." t)

(autoload 'ein:notebooklist-new-notebook "ein-notebooklist"
  "Ask server to create a new notebook and open it in a new buffer." t)

(autoload 'ein:notebook-name "ein-notebook")
(autoload 'ein:kernel-id "ein-kernel")

(autoload 'ein:console-open "ein-console" nil t)

(autoload 'ein:connect-to-notebook-command "ein-connect" nil t)
(autoload 'ein:connect-to-notebook         "ein-connect" nil t)
(autoload 'ein:connect-to-notebook-buffer  "ein-connect" nil t)
(autoload 'ein:connect-buffer-to-notebook  "ein-connect")

(autoload 'ein:shared-output-eval-string "ein-shared-output" nil t)
(autoload 'ein:shared-output-show-code-cell-at-point "ein-shared-output" nil t)

(autoload 'ein:tb-show "ein-traceback" nil t)

(autoload 'ein:iexec-mode "ein-iexec"
  "Instant cell execution minor mode." t)

(autoload 'anything-ein-notebook-buffers "ein-helm" nil t)
(autoload 'helm-ein-notebook-buffers "ein-helm" nil t)

(autoload 'ein:dev-insert-mode-map "ein-dev")
(autoload 'ein:dev-start-debug "ein-dev" "Enable debugging support." t)
(autoload 'ein:dev-stop-debug "ein-dev" "Disable debugging support." t)

(provide 'ein)

;;; ein.el ends here
