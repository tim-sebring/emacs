;;(custom-set-variables
;; '(custom-enabled-themes (quote (wombat))))

(add-to-list 'load-path "~/.emacs.d/")

(add-to-list 'custom-theme-load-path "/home/sebrint/.emacs.d/themes/")

(menu-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(load "/home/sebrint/.emacs.d/erc_config")
(load "/home/sebrint/.emacs.d/repos")

;; configure uniqify to differentiate buffers with same file names in diff directories
(require 'uniquify)
(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(setq uniquify-buffer-name-style 'post-forward)


;;(global-set-key (kbd "<F12>") 'shell)


(defadvice ansi-term (after advise-ansi-term-coding-system)
    (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(ad-activate 'ansi-term)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#ffffd7")
 '(background-mode light)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-color "#626262")
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes (quote ("ce79400f46bd76bebeba655465f9eadf60c477bd671cbcd091fe871d58002a88" "c7359bd375132044fe993562dfa736ae79efc620f68bab36bd686430c980df1c" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "bf648fd77561aae6722f3d53965a9eb29b08658ed045207fe32ffed90433eb52" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "0ebe0307942b6e159ab794f90a074935a18c3c688b526a2035d14db1214cf69c" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fci-rule-color "#eee8d5")
 '(foreground-color "#626262")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors (--map (solarized-color-blend it "#fdf6e3" 0.25) (quote ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors (quote (("#eee8d5" . 0) ("#B4C342" . 20) ("#69CABF" . 30) ("#69B7F0" . 50) ("#DEB542" . 60) ("#F2804F" . 70) ("#F771AC" . 85) ("#eee8d5" . 100))))
 '(linum-format " %7i ")
 '(magit-diff-use-overlays nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#dc322f") (40 . "#cd4500") (60 . "#cd6800") (80 . "#b58900") (100 . "#b78b00") (120 . "#ac8b00") (140 . "#a18b00") (160 . "#958b00") (180 . "#859900") (200 . "#5c8b2e") (220 . "#458b45") (240 . "#2e8b5c") (260 . "#178b73") (280 . "#2aa198") (300 . "#008ba5") (320 . "#008bb2") (340 . "#008bbf") (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list (quote (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-input-face ((t (:foreground "brightcyan"))))
 '(erc-my-nick-face ((t (:foreground "brightgreen" :weight bold))))
 '(term ((t (:inherit default :background "color-235" :foreground "white")))))


;; Move backup files to ~/.saves
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

;; if C-x o moves to the next frame, I want C-x p to move to previous 
(global-set-key (kbd "C-x p") 'previous-multiframe-window)

;;(projectile-global-mode)
