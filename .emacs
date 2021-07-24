;; ==============================================
;; GRAPHICAL STUFF
;; ==============================================
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(setq inhibit-startup-screen t)
(setq use-dialog-box nil)
(add-hook 'prog-mode-hook
          (lambda () (idle-highlight-mode t)))
(when (version<= "26.0.502" emacs-version)
  (global-display-line-numbers-mode))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#454545" "#d65946" "#6aaf50" "#baba36" "#598bc1" "#ab75c3" "#68a5e9" "#bdbdb3"])
 '(case-fold-search t)
 '(custom-enabled-themes (quote (fogus)))
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "e03d2efd989b91f29ed5f91f160b0054031e6b6574950f7d64792a3acf0c9565" "ed91d4e59412defda16b551eb705213773531f30eb95b69319ecd142fab118ca" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "85ee86f39791c561a2144044b2866456b73cf30d33b2382f59795a8fbd974ba8" "efa785ca9b6da184d934101900d741d60bf274b46ea68addbcd59585302861e3" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "0e25413260d03fd0bdb8bcb55ea19423ce798285b8a16610d4c8b8901025d139" "eeae1f1e944b3517c90456b13e31a3786d22b24166540255484f3371ab2a0dcc" "f146ffc1b0aec42c5e4d0eaaed45f28bac0183baed8313437368bf37f8fa4411" "a36622434f21e7aace2a71a6cfedbe86dd9e012f584db4a88e11b03108270902" "3220f7e765c699bc04bb2ad9ee3a7ed78bb2490bc9e7a173a77f74b995d0defc" "0e3a7d1a41005bef2c37bf0e1bf3f780c375e675bb57bb6edb4d3e4278329785" "8e4f53b832f5d9ecfdb5faaf68ecfb33d8ac070518dbefde35755e4d7ce61e27" "f8c36b81e754f0421c937a10c1b7cb1e8c2d36ab728a021f1eb90bed38450240" "a16fc5777b99f592e47c9c9f9f09ee098e27bbc87c6540486368fa363f9ccae8" "3b11ab02a8b96f4f4eb67aec91dfc8afc3364f2605eabb54198763325dc8ae7e" "de2b53d3fb8d65566acd9f30a9972380d81b6ff69880c86ae01d253ee4d3e2a3" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" default)))
 '(fci-rule-color "#FFFFF8")
 '(fringe-mode 10 nil (fringe))
 '(linum-format " %7i ")
 '(magit-todos-ignore-case t)
 '(magit-todos-scanner (quote magit-todos--scan-with-rg))
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(package-selected-packages
   (quote
    (web-mode all-the-icons xpm ac-js2 js2-mode highlight-indent-guides php-mode emmet-mode company-web company-lua company-c-headers yasnippet-snippets yasnippet flycheck idle-highlight-mode expand-region pcre2el hl-todo f el-get anaphora a ripgrep swiper ac-html-csswatcher ivy multiple-cursors company projectile markdown-preview-mode markdown-mode lua-mode drag-stuff magit popup ace-window)))
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   (quote
    ((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809"))))
 '(vc-annotate-very-old-color "#4E4B3D"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(idle-highlight ((t (:background "#ffc730" :foreground "black"))))
 '(region ((t (:background "#0000FF" :foreground "white")))))

(add-to-list 'load-path "~/.emacs.d/packages/")
(package-initialize)


;; ==============================================
;; EDITING
;; ==============================================
(global-unset-key [(control z)])
(global-set-key [(control z)] 'undo)
(global-unset-key (kbd "M-r"))
(global-set-key (kbd "M-r") 'query-replace)

;; EXPAND_REGION
(global-set-key (kbd "M-,") 'er/expand-region)

;; MULTIPLE_CURSORS
(global-unset-key (kbd "M-c"))
(global-set-key (kbd "M-c") 'mc/edit-lines)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; UNTABIFY_SHORTCUT
(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))
(global-set-key (kbd "C-u") 'untabify-buffer)

;; ==============================================
;; NAVIGATION
;; ==============================================
(setq aw-dispatch-always t)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-n") 'next-line)
(global-set-key (kbd "M-p") 'previous-line)

;; BUFFER_MOVE
(require 'buffer-move)

;; LINE_ABOVE
(defun line-above ()
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))
(global-set-key (kbd "<C-S-return>") 'line-above)

;; LINE_BELOW
(defun line-below ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent)
  (forward-line 0)
  (indent-according-to-mode))
(global-set-key (kbd "<C-return>") 'line-below)

;; DRAG_STUFF
(require 'drag-stuff)
(drag-stuff-mode t)
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;; ACE_JUMP
(add-to-list 'load-path "~/.emacs.d/packages/ace-jump-mode.el/in/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "M-s") 'ace-jump-mode)

;; GOTO_LINE
(global-unset-key (kbd "M-l"))
(global-set-key (kbd "M-l") 'goto-line)

;; PROJECTILE
(global-unset-key (kbd "C-o"))
(global-set-key (kbd "C-o") 'projectile-find-file)

;; NEOTREE
(add-to-list 'load-path "~/.emacs.d/packages/neotree")
(require 'neotree)
(global-set-key (kbd "C-c p") 'neotree-toggle)
(setq neo-theme 'nerd)
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq-default neo-show-hidden-files t)

;; IVY_FAMILY
(add-hook 'after-init-hook 'ivy-mode)
(global-set-key (kbd "C-s") 'swiper)

;; HIGHLIGHT_INDENT_GUIDES
(setq highlight-indent-guides-method 'column)
(setq highlight-indent-guides-responsive 'top)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)


;; ==============================================
;; PROGRAMMING LANGUAGES SUPPORT
;; ==============================================
(add-hook 'after-init-hook 'global-company-mode)
(yas-global-mode 1)

(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-c-headers
                        company-lua
                        company-web-html
                        )))

;; EMMET
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'company-backends 'ac-js2-company)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; (setq web-mode-markup-indent-offset 4)
(setq web-mode-enable-auto-indentation nil)

(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

(global-set-key (kbd "<C-return>") 'line-below)

(require 'company-web-html)

(setq lua-indent-level 2)


;; ==============================================
;; MISCELLANEOUS
;; ==============================================
(setq read-file-name-completion-ignore-case t)
(setq select-enable-clipboard t)
(electric-pair-mode 1)

(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;;(add-to-list 'package-archives
;;           '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; MAGIT
(global-set-key (kbd "M-g") 'magit-status)
(add-to-list 'load-path "~/.emacs.d/packages/magit-todos.el/in/")
(require 'magit-todos)
(add-hook 'after-init-hook 'magit-todos-mode)

;; FLYCHECK
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc emacs-lisp))
(add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
               (display-buffer-reuse-window
                display-buffer-in-side-window)
               (side            . bottom)
               (reusable-frames . visible)
               (window-height   . 0.20)))

;; RESHAPING_WINDOWS
(global-set-key (kbd "<C-up>") 'enlarge-window)
(global-set-key (kbd "<C-down>") 'shrink-window)
(global-set-key (kbd "<C-left>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-right>") 'shrink-window-horizontally)

;; COMPILE_SHORTCUT
(global-set-key (kbd "C-<") 'compile)

(setq indent-tabs-mode nil)
