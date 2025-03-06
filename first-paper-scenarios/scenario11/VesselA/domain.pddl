(define (domain illegalFishingDetection)
(:requirements :typing :disjunctive-preconditions :negative-preconditions)
(:types LOC DIR)
(:predicates 
             (at-vessel ?l - LOC)
             (adjacent ?l1 - LOC ?l2 - LOC ?d - DIR) 
             (surveillance-at ?l - LOC)
             (prohibited-at ?l - LOC)
             (destination-at ?l - LOC)
             (at-vessel-destination ?l - LOC)
             (at-free-area ?l - LOC)
             (detected-in-surveillance)
             (detected-in-prohibited)
             (detected-concealment) 
             (signals-on)

)



(:action move
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (at-free-area ?to) (signals-on) 
     
	)
	:effect (and   (at-vessel ?to) (not (at-vessel ?from))
	)
)

(:action enter-surveillance-area
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (surveillance-at ?to) (signals-on) 

	)
	:effect (and   (at-vessel ?to) (not (at-vessel ?from)) (detected-in-surveillance)
	)
)

(:action enter-prohibited-area
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (prohibited-at ?to) (signals-on) 
      
	)
	:effect (and   (at-vessel ?to) (not (at-vessel ?from)) (detected-in-prohibited)
	)
)

(:action reach-destination
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (destination-at ?to) (signals-on) 
       
        )
	:effect (and   (at-vessel-destination ?to) (not (at-vessel ?from)))
)



(:action turn_on_signals
    :parameters ()
    :precondition (not (signals-on))
    :effect (signals-on)
)



(:action turn_off_signals
    :parameters ()
    :precondition (signals-on)
    :effect (not (signals-on))
)
  
  
(:action covert_to_s
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (not (signals-on)) (surveillance-at ?to)
	)
	:effect (and (detected-concealment)
	)
)


(:action covert_to_p
	:parameters (?from - LOC ?to - LOC ?dir - DIR)
	:precondition (and (at-vessel ?from) (adjacent ?from ?to ?dir) (not (signals-on)) (prohibited-at ?to)
	)
	:effect (and (detected-concealment)
	)
)

)

