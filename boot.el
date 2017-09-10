
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-hook 'lisp-interaction-mode-hook 'electric-pair-mode)
(add-hook 'emacs-lisp-mode-hook 'electric-pair-mode)
(add-hook 'lisp-mode-hook 'electric-pair-mode)
(add-hook 'lisp-mode-hook 'sly-mode)

(keyboard-translate ?\( ?\[)
(keyboard-translate ?\[ ?\()
(keyboard-translate ?\) ?\])
(keyboard-translate ?\] ?\))

(defun lisp ()
  (interactive)
  (split-window-horizontally)
  (find-file "~/.emacs.d/casio.cl")
  (sly))

(defalias 'yes-or-no-p 'y-or-n-p)
(if (window-system)
      (split-window-right (floor (* 0.75 (window-width)))))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(global-set-key (kbd "M-p") 'ace-window)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
