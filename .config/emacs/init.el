;;; init.el --- Summary
;;;
;;; Commentary:
;;; Uncle Dave's
;;; This fixed garbage collection, makes Emacs start up faster ;;;;;;;
;;; Code:
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq create-lockfiles nil)
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))



;;; Package
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Config
(when (file-readable-p (expand-file-name "~/.config/emacs/MyInit.org" ))
  (org-babel-load-file (expand-file-name "~/.config/emacs/MyInit.org" )))

;;; init.el ends here
