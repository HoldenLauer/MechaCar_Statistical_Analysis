### Deliverable 1

Mecha <- read.csv("MechaCar_mpg.csv")

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha)

summary(reg)