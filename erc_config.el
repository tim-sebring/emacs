; ERC config file

(require 'erc)
(require 'netrc)

;; Improving the display output of text.
(defun my-erc-ansi-colors ()
; First need to remove some control characters
(while (re-search-forward "[]" nil t)
(replace-match "" nil nil))
(ansi-color-apply-on-region (point-min) (point-max)))
(add-hook 'erc-insert-modify-hook 'my-erc-ansi-colors 'append)


; Logging the sessions
(setq erc-log-channels-directory "~/.erc/logs/"
erc-save-buffer-on-part t
erc-hide-list nil ; '("JOIN" "PART" "QUIT")
my-irc-creds (netrc-machine (netrc-parse "~/.netrc.gpg") "ircserver.com")
erc-server-flood-margin 1000
)


; Assign the common C-x C-s to act as you'd expect in erc mode
(define-key erc-mode-map (kbd "C-x C-s") 'erc-save-buffer-in-logs)


(defun irc-connect ()
(interactive)
(erc-tls :server "ircserver.com" :port 6667 :full-name (netrc-get jonebird-irc-creds "login")
:password (netrc-get my-irc-creds "password") :nick "tim")
)
