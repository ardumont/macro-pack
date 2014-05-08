;;; macro-pack.el --- Dynamically extend emacs via macros

;;; Commentary:

;;; Code:

(defun macro-pack/save-last-macro (name)
  "Save a macro.
Take a NAME as argument and save the last defined macro under this name at the end of your ~/.emacs.d/dump-macro.el"
  (interactive "SName of the last macro to save: ")
  (let ((macro-filename "~/.emacs.d/dump-macro.el"))
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
