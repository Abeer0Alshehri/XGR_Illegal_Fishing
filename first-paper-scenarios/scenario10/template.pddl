(define (problem scenario10)
(:domain illegalFishingDetection)
(:objects 
        up down left right - DIR
        f0-0f f0-1f f0-2f f0-3f f0-4f f0-5f 
        f1-0f f1-1f f1-2f f1-3f f1-4f f1-5f 
        f2-0f f2-1f f2-2f f2-3f f2-4f f2-5f 
        f3-0f f3-1f f3-2f f3-3f f3-4f f3-5f 
        f4-0f f4-1f f4-2f f4-3f f4-4f f4-5f 
        f5-0f f5-1f f5-2f f5-3f f5-4f f5-5f
        f6-0f f6-1f f6-2f f6-3f f6-4f f6-5f 
        f7-0f f7-1f f7-2f f7-3f f7-4f f7-5f 
        f8-0f f8-1f f8-2f f8-3f f8-4f f8-5f - LOC
)
(:init
(adjacent f0-0f f0-1f right)
(adjacent f0-0f f1-0f down)
(adjacent f0-1f f0-0f left)
(adjacent f0-1f f0-2f right)
(adjacent f0-1f f1-1f down)
(adjacent f0-2f f0-1f left)
(adjacent f0-2f f0-3f right)
(adjacent f0-2f f1-2f down)
(adjacent f0-3f f0-2f left)
(adjacent f0-3f f0-4f right)
(adjacent f0-3f f1-3f down)
(adjacent f0-4f f0-3f left)
(adjacent f0-4f f0-5f right)
(adjacent f0-4f f1-4f down)
(adjacent f0-5f f0-4f left)
(adjacent f0-5f f1-5f down)
(adjacent f1-0f f1-1f right)
(adjacent f1-0f f0-0f up)
(adjacent f1-0f f2-0f down)
(adjacent f1-1f f1-0f left)
(adjacent f1-1f f1-2f right)
(adjacent f1-1f f0-1f up)
(adjacent f1-1f f2-1f down)
(adjacent f1-2f f1-1f left)
(adjacent f1-2f f1-3f right)
(adjacent f1-2f f0-2f up)
(adjacent f1-2f f2-2f down)
(adjacent f1-3f f1-2f left)
(adjacent f1-3f f1-4f right)
(adjacent f1-3f f0-3f up)
(adjacent f1-3f f2-3f down)
(adjacent f1-4f f1-3f left)
(adjacent f1-4f f1-5f right)
(adjacent f1-4f f0-4f up)
(adjacent f1-4f f2-4f down)
(adjacent f1-5f f1-4f left)
(adjacent f1-5f f0-5f up)
(adjacent f1-5f f2-5f down)
(adjacent f2-0f f2-1f right)
(adjacent f2-0f f1-0f up)
(adjacent f2-0f f3-0f down)
(adjacent f2-1f f2-0f left)
(adjacent f2-1f f2-2f right)
(adjacent f2-1f f1-1f up)
(adjacent f2-1f f3-1f down)
(adjacent f2-2f f2-1f left)
(adjacent f2-2f f2-3f right)
(adjacent f2-2f f1-2f up)
(adjacent f2-2f f3-2f down)
(adjacent f2-3f f2-2f left)
(adjacent f2-3f f2-4f right)
(adjacent f2-3f f1-3f up)
(adjacent f2-3f f3-3f down)
(adjacent f2-4f f2-3f left)
(adjacent f2-4f f2-5f right)
(adjacent f2-4f f1-4f up)
(adjacent f2-4f f3-4f down)
(adjacent f2-5f f2-4f left)
(adjacent f2-5f f1-5f up)
(adjacent f2-5f f3-5f down)
(adjacent f3-0f f3-1f right)
(adjacent f3-0f f2-0f up)
(adjacent f3-0f f4-0f down)
(adjacent f3-1f f3-0f left)
(adjacent f3-1f f3-2f right)
(adjacent f3-1f f2-1f up)
(adjacent f3-1f f4-1f down)
(adjacent f3-2f f3-1f left)
(adjacent f3-2f f3-3f right)
(adjacent f3-2f f2-2f up)
(adjacent f3-2f f4-2f down)
(adjacent f3-3f f3-2f left)
(adjacent f3-3f f3-4f right)
(adjacent f3-3f f2-3f up)
(adjacent f3-3f f4-3f down)
(adjacent f3-4f f3-3f left)
(adjacent f3-4f f3-5f right)
(adjacent f3-4f f2-4f up)
(adjacent f3-4f f4-4f down)
(adjacent f3-5f f3-4f left)
(adjacent f3-5f f2-5f up)
(adjacent f3-5f f4-5f down)
(adjacent f4-0f f4-1f right)
(adjacent f4-0f f3-0f up)
(adjacent f4-0f f5-0f down)
(adjacent f4-1f f4-0f left)
(adjacent f4-1f f4-2f right)
(adjacent f4-1f f3-1f up)
(adjacent f4-1f f5-1f down)
(adjacent f4-2f f4-1f left)
(adjacent f4-2f f4-3f right)
(adjacent f4-2f f3-2f up)
(adjacent f4-2f f5-2f down)
(adjacent f4-3f f4-2f left)
(adjacent f4-3f f4-4f right)
(adjacent f4-3f f3-3f up)
(adjacent f4-3f f5-3f down)
(adjacent f4-4f f4-3f left)
(adjacent f4-4f f4-5f right)
(adjacent f4-4f f3-4f up)
(adjacent f4-4f f5-4f down)
(adjacent f4-5f f4-4f left)
(adjacent f4-5f f3-5f up)
(adjacent f4-5f f5-5f down)
(adjacent f5-0f f5-1f right)
(adjacent f5-0f f4-0f up)
(adjacent f5-0f f6-0f down)
(adjacent f5-1f f5-0f left)
(adjacent f5-1f f5-2f right)
(adjacent f5-1f f4-1f up)
(adjacent f5-1f f6-1f down)
(adjacent f5-2f f5-1f left)
(adjacent f5-2f f5-3f right)
(adjacent f5-2f f4-2f up)
(adjacent f5-2f f6-2f down)
(adjacent f5-3f f5-2f left)
(adjacent f5-3f f5-4f right)
(adjacent f5-3f f4-3f up)
(adjacent f5-3f f6-3f down)
(adjacent f5-4f f5-3f left)
(adjacent f5-4f f5-5f right)
(adjacent f5-4f f4-4f up)
(adjacent f5-4f f6-4f down)
(adjacent f5-5f f5-4f left)
(adjacent f5-5f f4-5f up)
(adjacent f5-5f f6-5f down)
(adjacent f6-0f f6-1f right)
(adjacent f6-0f f5-0f up)
(adjacent f6-0f f7-0f down)
(adjacent f6-1f f6-0f left)
(adjacent f6-1f f6-2f right)
(adjacent f6-1f f5-1f up)
(adjacent f6-1f f7-1f down)
(adjacent f6-2f f6-1f left)
(adjacent f6-2f f6-3f right)
(adjacent f6-2f f5-2f up)
(adjacent f6-2f f7-2f down)
(adjacent f6-3f f6-2f left)
(adjacent f6-3f f6-4f right)
(adjacent f6-3f f5-3f up)
(adjacent f6-3f f7-3f down)
(adjacent f6-4f f6-3f left)
(adjacent f6-4f f6-5f right)
(adjacent f6-4f f5-4f up)
(adjacent f6-4f f7-4f down)
(adjacent f6-5f f6-4f left)
(adjacent f6-5f f5-5f up)
(adjacent f6-5f f7-5f down)
(adjacent f7-0f f7-1f right)
(adjacent f7-0f f6-0f up)
(adjacent f7-0f f8-0f down)
(adjacent f7-1f f7-0f left)
(adjacent f7-1f f7-2f right)
(adjacent f7-1f f6-1f up)
(adjacent f7-1f f8-1f down)
(adjacent f7-2f f7-1f left)
(adjacent f7-2f f7-3f right)
(adjacent f7-2f f6-2f up)
(adjacent f7-2f f8-2f down)
(adjacent f7-3f f7-2f left)
(adjacent f7-3f f7-4f right)
(adjacent f7-3f f6-3f up)
(adjacent f7-3f f8-3f down)
(adjacent f7-4f f7-3f left)
(adjacent f7-4f f7-5f right)
(adjacent f7-4f f6-4f up)
(adjacent f7-4f f8-4f down)
(adjacent f7-5f f7-4f left)
(adjacent f7-5f f6-5f up)
(adjacent f7-5f f8-5f down)
(adjacent f8-0f f8-1f right)
(adjacent f8-0f f7-0f up)
(adjacent f8-1f f8-0f left)
(adjacent f8-1f f8-2f right)
(adjacent f8-1f f7-1f up)
(adjacent f8-2f f8-1f left)
(adjacent f8-2f f8-3f right)
(adjacent f8-2f f7-2f up)
(adjacent f8-3f f8-2f left)
(adjacent f8-3f f8-4f right)
(adjacent f8-3f f7-3f up)
(adjacent f8-4f f8-3f left)
(adjacent f8-4f f8-5f right)
(adjacent f8-4f f7-4f up)
(adjacent f8-5f f8-4f left)
(adjacent f8-5f f7-5f up)



(at-vessel f4-5f) ;vessel's start location



(at-free-area f0-2f) 
(at-free-area f0-3f) 
(at-free-area f1-5f)
(at-free-area f2-1f) 
(at-free-area f2-5f) 
(at-free-area f3-1f) 
(at-free-area f3-2f) 
(at-free-area f3-3f) 
(at-free-area f4-0f) 
(at-free-area f4-1f) 
(at-free-area f4-2f)
(at-free-area f4-3f) 
(at-free-area f4-4f) 
(at-free-area f5-2f) 
(at-free-area f5-3f) 
(at-free-area f5-4f) 
(at-free-area f5-5f) 
(at-free-area f6-2f) 
(at-free-area f6-3f) 
(at-free-area f6-4f) 
(at-free-area f6-5f) 
(at-free-area f7-0f) 
(at-free-area f7-1f) 
(at-free-area f7-2f) 
(at-free-area f8-0f) 
(at-free-area f8-1f) 
(at-free-area f8-2f) 


(surveillance-at f1-2f) ;s-area 1
(surveillance-at f1-3f) ;s-area 1
(surveillance-at f1-4f) ;s-area 1
(surveillance-at f2-2f) ;s-area 1
(surveillance-at f2-3f) ;s-area 1
(surveillance-at f2-4f) ;s-area 1
(surveillance-at f7-3f) ;s-area 2
(surveillance-at f7-4f) ;s-area 2
(surveillance-at f7-5f) ;s-area 2
(surveillance-at f8-3f) ;s-area 2
(surveillance-at f8-4f) ;s-area 2
(surveillance-at f8-5f) ;s-area 2


(prohibited-at f3-4f) ;p-area 1
(prohibited-at f3-5f) ;p-area 1
(prohibited-at f4-5f) ;p-area 1
(prohibited-at f5-0f) ;p-area 2
(prohibited-at f5-1f) ;p-area 2
(prohibited-at f6-0f) ;p-area 2
(prohibited-at f6-1f) ;p-area 2

(not (detected-in-surveillance))
(not (detected-in-prohibited))
(not (detected-concealment))
(signals-on)


(destination-at f3-0f) ;destination d1
(destination-at f1-1f) ;destination d2
(destination-at f0-4f) ;destination d3


)


(:goal 
(and
<HYPOTHESIS>
))
)
