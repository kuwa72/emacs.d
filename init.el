(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
        (eval-print-last-sexp)))

(el-get-bundle auto-complete)
(el-get-bundle evil)

(el-get-bundle elpa:undo-tree)

(el-get-bundle tarao/el-get-lock)

(el-get-bundle tarao/tab-group-el
	       :name tab-group)

(el-get-bundle init-loader)

(el-get-bundle elpa:ag)
(el-get-bundle elpa:anything)
(el-get-bundle elpa:auto-complete)
(el-get-bundle elpa:browse-kill-ring)
(el-get-bundle elpa:color-theme)
(el-get-bundle elscreen :type git :url "git@github.com:knu/elscreen.git")
(el-get-bundle elpa:flycheck)
(el-get-bundle elpa:git-gutter)
(el-get-bundle elpa:pbcopy)
(el-get-bundle elpa:popup)
(el-get-bundle elpa:popwin)
(el-get-bundle elpa:powerline)
(el-get-bundle elpa:quickrun)
(el-get-bundle elpa:recentf-ext)
(el-get-bundle elpa:zlc)

;; prog modes
(el-get-bundle elpa:coffee-mode)
(el-get-bundle elpa:go-mode)
(el-get-bundle elpa:js2-mode)
(el-get-bundle elpa:json-mode)
(el-get-bundle elpa:less-css-mode)
(el-get-bundle elpa:motion-mode)
(el-get-bundle elpa:puppet-mode)
(el-get-bundle elpa:rhtml-mode)
(el-get-bundle elpa:ruby-mode)
(el-get-bundle elpa:sass-mode)
(el-get-bundle elpa:slim-mode)

(el-get-bundle elpa:rubocop)
(el-get-bundle elpa:ruby-block)
(el-get-bundle elpa:ruby-electric)
(el-get-bundle elpa:ruby-end)

(el-get-bundle elpa:go-autocomplete)
(el-get-bundle yasnippet)
(el-get-bundle rinari)
(el-get-bundle android-mode)
(el-get-bundle scss-mode)
(el-get-bundle anzu)
(el-get-bundle expand-region)
(el-get-bundle highlight-symbol)

(el-get-bundle multiple-cursors)
(el-get-bundle wgrep)
(el-get-bundle exec-path-from-shell)
(el-get-bundle color-theme-tango)
(el-get-bundle rainbow-delimiters)

(el-get-bundle redo+)
(el-get-bundle smartrep)
(el-get-bundle yaml-mode)
(el-get-bundle web-mode)

(el-get-bundle rinari)



(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
