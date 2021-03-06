;;; 見た目に関する設定

;; スタートアップページを表示しない
(setq inhibit-startup-message t)

;; フォントの大きさを "C-x C-+ or C--" で変更
(global-set-key [(control ?+)] (lambda () (interactive)
  (text-scale-increase 1)))
(global-set-key [(control ?-)] (lambda () (interactive)
  (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive)
  (text-scale-increase 0)))

;; カラム番号も表示
(column-number-mode t)

;; ファイルサイズを表示
(size-indication-mode t)

;; 時計を表示
(setq display-time-24hr-format t)
(display-time-mode t)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; 行番号を常に表示する
(global-linum-mode t)
(setq linum-format "%4d ")

;; menu-barを非表示
(menu-bar-mode 0)

;;; 表示・修飾に関する設定 ------------------------------
(when (require 'color-theme nil t)
  ;; テーマを読み込むための設定
  (color-theme-initialize)
  ;; テーマをhoberに変更する
  (color-theme-classic))

;; 折り返ししない
(setq-default truncate-partial-width-windows t)
(setq-default truncate-lines t)
