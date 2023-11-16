(deftemplate User
   (slot budget)
   (slot budget-range)
   (slot afford)
   (slot reliable-car)
   (slot feature-car)
   (slot luxury-car)
)

(defrule Rule-1
   (User (budget yes) (budget-range less) (reliable-car yes))
   =>
   (printout t "Budget plan: Consider buying a used car from a reputable dealer." crlf)
)

(defrule Rule-2
   (User (budget yes) (budget-range less) (reliable-car no))
   =>
   (printout t "Budget plan: Consider buying a new car from a budget brand." crlf)
)


(defrule Rule-3
   (User (budget yes) (budget-range suitable) (feature-car yes))
   =>
   (printout t "Budget plan: Consider buying a new car from a mainstream brand." crlf)
)

(defrule Rule-4
   (User (budget yes) (budget-range suitable) (feature-car no))
   =>
   (printout t "Budget plan: Consider buying a used car from a reputable dealer." crlf)
   
)

(defrule Rule-5
   (User  (budget yes) (budget-range more) (luxury-car yes))
   =>
   (printout t "Budget plan: Consider buying a new car from a mainstream brand." crlf)
   
)

(defrule Rule-6
   (User  (budget yes) (budget-range more) (luxury-car no))
   =>
   (printout t "Budget plan: Consider buying a used car from a reputable dealer." crlf)
)

(defrule Rule-7
   (User  (budget no) (afford less) )
   =>
   (printout t "Consider buying a used car from a private seller or an online auction." crlf)
)

(defrule Rule-8
   (User  (budget no) (afford average) )
   =>
   (printout t "Consider buying a used car from a reputable dealer." crlf)
)

(defrule Rule-9
   (User  (budget no)(afford more) )
   =>
   (printout t "Consider leasing a car or buying a new car with a financing plan." crlf)
)


