### Deliverable 1

Mecha <- read.csv("MechaCar_mpg.csv")

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha)

summary(reg)

### Deliverable 2

Suspension <- read.csv("Suspension_Coil.csv")

total_summary <- Suspension %>% summarize(Mean_PSI=mean(PSI),
                           Median_PSI=median(PSI),
                           Var_PSI=var(PSI),
                           Std_Dev_PSI=sd(PSI))

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI))