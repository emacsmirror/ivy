;; Copyright (C) 2017-2025 Free Software Foundation, Inc.
;; (package-initialize)
(require 'counsel)
(ivy-mode)
(counsel-mode)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-rg)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-c s") 'isearch-forward-regexp)
(setq ivy-use-virtual-buffers t)
(condition-case nil
    (require 'ivy-avy)
  (error
   (require 'targets/install-deps)
   (require 'ivy-avy)))
