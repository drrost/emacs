;; Comments
(defun rd-comment()
  (back-to-indentation)
  (insert "// "))

(defun rd-uncomment()
  (back-to-indentation)
  (delete-char 3))

(defun rd-wholeLineIsCmt-p()
  (save-excursion
    (beginning-of-line 1)
    (looking-at "[ \t]*//")
    ))

(defun rd-toggle-comment()
  (interactive)
  (back-to-indentation)
  (if (rd-wholeLineIsCmt-p)
      (rd-uncomment)
    (rd-comment)))
(global-set-key (kbd "M-/") 'rd-toggle-comment)
