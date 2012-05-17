
% http://lsr.dsi.unimi.it/LSR/Item?id=639

shapeSlur =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Slur #'control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:slur::calc-control-points grob))
         (n 0))
     ;; add offsets to default coordinates
     (define loop (lambda (n)
                    (set-car! (list-ref coords n)
                              (+ (list-ref offsets (* 2 n))
                                 (car (list-ref coords n))))
                    (set-cdr! (list-ref coords n)
                              (+ (list-ref offsets (1+ (* 2 n)))
                                 (cdr (list-ref coords n))))
                    (if (< n 3)
                        (loop (1+ n)))))
     ;; return altered coordinates
     (loop n)
     coords))


% command for specifying fingerings for mordents / pralls
% i.e. fa ^\markup \fingering #"2 1 2"
#(define-markup-command (fingering layout props fingers) (string?)
   (interpret-markup layout props
     (markup #:hspace -1.5 #:raise -1 #:finger fingers)))
