##################################################################################
####  Zürich Steuern                                                          ####
##################################################################################

e_p <- 0.01*c(0, 2:13)

e_grund <- 1000*c(0
                  , 6.7
                  , 4.7
                  , 4.7
                  , 7.6
                  , 9.3
                  , 10.7
                  , 12.4
                  , 16.9
                  , 32.5
                  , 32.2
                  , 51
                  , 66.2
                  # , 254.9
)

e_verh <- 1000*c(0
                 , 13.5
                 , 6.1
                 , 7.7
                 , 9.4
                 , 10.7
                 , 13.9
                 , 30.8
                 , 30.8
                 , 46.4
                 , 55.4
                 , 60.1
                 , 69.3
                 # , 354.1
)

t(t(e_grund))
t(t(e_verh))

e_v <- 0.001*seq(0,3,0.5)
v_grund <- 1000*c(0
                  , 77
                  , 231
                  , 386
                  , 616
                  , 925
                  , 923
                  # , 3158
)
v_verh <- 1000*c(0
                 , 154
                 , 231
                 , 385
                 , 616
                 , 925
                 , 924
                 # , 3235
)

p_zuerich <- data.table::data.table("kanton" = 1.00, "zurich" = 1.19, "zurich_k" = 1.29)


# Erstelle Funktion, welche die Steuern berechnet in Abhängikeit des Einkommens


qplot(cumsum(e_grund[-13]), cumsum(e_p[-1]*e_grund[-13])*(1.00+1.19), geom=c("point", "line"))

cumsum(e_p[-1]*e_grund[-13]) / cumsum(e_grund[-13]) 

