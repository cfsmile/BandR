;; Copy from: http://ergoemacs.org/emacs/emacs_abbrev_mode_tutorial.html

;; -*- coding: utf-8; lexical-binding: t; -*-
;; sample use of abbrev

(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ;; net abbrev
    ("afaik" "as far as i know" )
    ("atm" "at the moment" )
    ("dfb" "difference between" )
    ("ty" "thank you" )
    ("ui" "user interface" )
    ("uns" "understand" )
    ("ur" "you are" )
    ("btw" "by the way" )

    ("cnt" "can't" )
    ("ddnt" "didn't" )
    ("dnt" "don't" )

    ;; english word abbrev
    ("ann" "announcement" )
    ("arg" "argument" )
    ("autom" "automatic" )
    ("bc" "because" )
    ("bg" "background" )
    ("bt" "between" )
    ("math" "mathematics" )

    ;; computing
    ("ahk" "AutoHotkey" )
    ("cfg" "context-free grammar" )
    ("cj" "Clojure" )
    ("cs" "computer science" )

    ;; tech company
    ("gc" "Google Chrome" )
    ("gm" "Google Map" )
    ("macos" "Mac OS" )
    ("msw" "Microsoft Windows" )

    ;; programing
    ("ev" "environment variable" )
    ("ipa" "IP address" )
    ("jvm" "Java Virtual Machine" )
    ("rsi" "Repetitive Strain Injury" )
    ("subdir" "sub-directory" )
    ("wd" "web development" )

    ("db" "database" )
    ("gui3" "graphical user interface" )
    ("oop3" "object oriented programing" )

    ("os3" "operating system" )

    ;; programing
    ("eq" "==" )
    ("r" "return" )
    ("utf8" "-*- coding: utf-8 -*-" )

    ;; regex
    ("xaz" "\\([A-Za-z0-9]+\\)" )

    ;; unicode
    ("md" "—" )

    ("hr" "--------------------------------------------------" )
    ("bu" "•" )
    ("catface" "😸" )
    ("hearts" "♥💕💓💔💖💗💘💝💞💟💙💚💛💜" )
    ("ra" "→" )

    ;; url
    ("urlemacs" "http://ergoemacs.org/" )

    ;;
    ;; academic paper part
    ("acaintro1" "A central problem in SCIENCE RESEARCH is that of accounting for the function of some kind of system. Yet in most ...")
    ("acaintro2" "The major problem for explanations of system behavior based on actions and orientations at a level below that of ...")
    ))

;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

(when (boundp 'go-mode-abbrev-table)
  (clear-abbrev-table go-mode-abbrev-table))

(define-abbrev-table 'go-mode-abbrev-table
  '(
    ("go" "package main
import \"fmt\"
func main() {
        fmt.Println(\"3\")
}")

    ("p" "fmt.Printf(\"%v\\n\", hh▮)")
    ("pl" "fmt.Println(hh▮)")
    ("r" "return")
    ("st" "string")
    ("eq" "==")
    ("v" "var x = 3")
    ("df" "x := 3")
    ("c" "const x = 3")
    ("f" "func ff(x int) int {
    return nil
}")
    ("if" "if 4 { 3 }")
    ("ie" " if err != nil { panic(err) }")
    ("ei" "else if x > 0 { 3 }")
    ("else" "else { 3 }")
    ("for" "for i := 0; i < 4; i++ { i }")
    ("fr" "for k, v := range xxx {
▮
    }
")
    ;;

    ))

(set-default 'abbrev-mode t)

(setq save-abbrevs nil)


