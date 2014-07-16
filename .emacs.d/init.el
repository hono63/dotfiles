;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; [基本] トラックパッド用のスクロール設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun scroll-down-with-lines ()
  "" (interactive) (scroll-down 3))
(defun scroll-up-with-lines ()
  "" (interactive) (scroll-up 3))
(global-set-key [wheel-up] 'scroll-down-with-lines)
(global-set-key [wheel-down] 'scroll-up-with-lines)
(global-set-key [double-wheel-up] 'scroll-down-with-lines)
(global-set-key [double-wheel-down] 'scroll-up-with-lines)
(global-set-key [triple-wheel-up] 'scroll-down-with-lines)
(global-set-key [triple-wheel-down] 'scroll-up-with-lines)

(setq load-path (cons "~/.emacs.d/elisp" load-path))
;; install-elisp のコマンドを使える様にする
(require 'install-elisp)
;; Elisp ファイルをインストールする場所を指定
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

;;; 対応する括弧を光らせる
(show-paren-mode 1)

;;; スクロールを一行ずつにする
;(setq scroll-step 1)

;;; 行頭C-kで行全体を消去する
(setq kill-whole-line t)

;;;警告音
(setq visible-bell t)

;;;選択部分をインデント
(global-set-key "\C-x\C-i" 'indent-region)
 
;;;find-fileのファイル名補完で大文字小文字を区別しない設定
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
 
;;;カーソルの形をbarに
(add-to-list 'default-frame-alist '(cursor-type . bar))
(if window-system (progn
 
;;;文字の色を設定
(add-to-list 'default-frame-alist '(foreground-color .
"white"
))
 
;;;背景色を設定
(add-to-list 'default-frame-alist '(background-color . "black"))
))
 
;;;sequentialの利用
;;;C-aで行頭に、次のC-aでページの先頭に、次のC-aで元の位置に、の繰り返し
;(require 'sequential-command-config)
;(global-set-key "\C-a" 'seq-home)
;(global-set-key "\C-e" 'seq-end)
;(when (require 'org nil t)
;(define-key org-mode-map "\C-a" 'org-seq-home)
;(define-key org-mode-map "\C-e" 'org-seq-end))
;(define-key esc-map "u" 'seq-upcase-backward-word)
;(define-key esc-map "c" 'seq-capitalize-backward-word)
;(define-key esc-map "l" 'seq-downcase-backward-word)
 
;;;文字補完
;(require 'auto-complete)
;(global-auto-complete-mode t)
 
;;;カーソルの行をカット
(define-key global-map (kbd "C-S-k") 'kill-whole-line)
 
;;;Tabを使えるように
(define-key global-map (kbd "TAB") (kbd "C-q TAB") )
 
;;;範囲指定した領域をコメントアウト
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
 
;;;カーソルの行をコメントアウト
(define-key global-map (kbd "C-/") (kbd "C-e C-SPC C-a C-c ;") )
 
;;;行番号の表示
(global-set-key "\M-n" 'linum-mode)
 
;;;C-hでBackspace
(global-set-key "\C-h" 'delete-backward-char)
 
;;php-mode
;(load-library "php-mode")
;(require 'php-mode)
;(add-hook 'php-mode-user-hook
;'(lambda ()
;(setq tab-width 2)
;(setq indent-tabs-mode nil))
;)
 
;;起動時のwelcome画面をなくす
(setq inhibit-splash-screen t)
 
;;;起動時にフルスクリーン
(set-frame-parameter nil 'fullscreen 'maximized)
 
;;;起動時ウィンドウのサイズ
;;;(setq default-frame-alist
;;;(append
;;;'((width    . 50)
;;;(hieght    . 45))
;;;default-frame-alist))
(put 'upcase-region 'disabled nil)
