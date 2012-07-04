(provide 'emacs_cfg)
;; Set a current directory variable to make paths relative to emacs_cfg.el file
(setq curr-dir (file-name-directory load-file-name))

;; Add the current directory to load path
(add-to-list 'load-path curr-dir)
(add-to-list 'load-path (concat curr-dir "yasnippet"))

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(require 'python-mode)
(add-hook 'python-mode-hook
      (lambda ()
	(set-variable 'py-indent-offset 4)
	(set-variable 'indent-tabs-mode nil)
	(define-key py-mode-map (kbd "RET") 'newline-and-indent)
	(smart-operator-mode-on)
	))

(require 'python-pep8)
(require 'python-pylint)

(require 'auto-complete)
(global-auto-complete-mode t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'yasnippet)
(setq yas/root-directory (concat curr-dir "yasnippet"))
(yas/global-mode 1)
(yas/initialize)

(require 'comint)
(define-key comint-mode-map (kbd "M-") 'comint-next-input)
(define-key comint-mode-map (kbd "M-") 'comint-previous-input)
(define-key comint-mode-map [down] 'comint-next-matching-input-from-input)
(define-key comint-mode-map [up] 'comint-previous-matching-input-from-input)

;; disable line wrap
(setq default-truncate-lines t)

;; make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)

;; Add F12 to toggle line wrap
(global-set-key [f12] 'toggle-truncate-lines)
