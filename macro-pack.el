;;; macro-pack.el --- Macro

;;; Commentary:

;;; Code:

;; To dynamically extend emacs via macros
(defun macro-pack/save-last-macro (name)
  "save a macro. Take a name as argument and save the last
     defined macro under this name at the end of your .emacs"
  (interactive "SName of the last macro to save: ")
  (let ((macro-filename "~/.emacs-live-packs/dump-macro.el"))
    (kmacro-name-last-macro name) ; use this name for the macro
    (find-file macro-filename)
    (goto-char (point-max))
    (newline)
    (insert-kbd-macro name)
    (newline)
    (save-buffer)
    (switch-to-buffer nil)))

(provide 'macro-pack)
;;; macro-pack.el ends here
