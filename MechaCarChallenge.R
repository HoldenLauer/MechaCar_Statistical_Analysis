### Deliverable 1

Mecha <- read.csv("Resources/MechaCar_mpg.csv")

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha)

summary(reg)

### Deliverable 2

Suspension <- read.csv("Resources/Suspension_Coil.csv")

total_summary <- Suspension %>% summarize(Mean_PSI=mean(PSI),
                           Median_PSI=median(PSI),
                           Var_PSI=var(PSI),
                           Std_Dev_PSI=sd(PSI))

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI))

### Deliverable 3

t.test(Suspension$PSI,mu=1500)

lot1 <- subset(Suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)