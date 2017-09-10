
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

(require 'org)

(setq slime-lisp-implementations '((sbcl ("C:\\Program Files\\Steel
Bank Common Lisp\\1.3.18\\sbcl.exe" "--core" "C:\\Program Files\\Steel
Bank Common Lisp\\1.3.18\\sbcl.core"))))

(add-hook 'lisp-interaction-mode-hook 'electric-pair-mode)
(add-hook 'lisp-interaction-mode-hook 'slime-mode)

(setq Tex-auto-save t)
(setq TeX-parse-self t)
(require 'tex-mik) 
(load "auctex.el" nil t t)
(setq org-export-with-LaTeX-fragments "dvipng")
(setq org-return-follows-link t)

(defun halt ()
  (interactive)
  (save-some-buffers)
  (kill-emacs))

()

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(browse-url-browser-function (quote browse-url-default-windows-browser))
 '(compile-command "cmake ")
 '(custom-enabled-themes (quote (wheatgrass)))
 '(display-battery-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message ";; Lisp away...

")
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t) (lisp . t))))
 '(org-support-shift-select (quote always))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages (quote (windresize slime flappymacs)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 139 :width normal)))))
