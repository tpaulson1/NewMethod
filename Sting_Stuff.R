library(taxize)

species<-c("Pepsis formosa","Dasymutilla klugii","Dasymutilla lepeletierii","Monobia quadridens")

gnr_resolve(names=species)

Pompilidae<-c("Pepsis formosa")

Mutillidae<-c("Dasymutilla klugii","Dasymutilla lepeletierii")

Eumenidae<-c("Monobia quadridens")

speciesPME<-c("Pepsis formosa","Dasymutilla klugii","Dasymutilla lepeletierii","Monobia quadridens") #put these 3 families together to reduce gnr_resolve repetitive

PMERes<-gnr_resolve(names=speciesPME) # pepsis formosus to pepsis formosa, 

Vespidae<-c("Eustenogaster luzonensis","Agelaia panamensis","Apoica pallens","Brachygastra mellifica","Metapolybia docilis","Mischocyttarus angulatus", "Mischocyttarus atrocyaneus", "Mischocyttarus costaricensis","Mischocyttarus flavitarsus", "Parachartergus fraternus","Polistes annularis", "Polistes arizonensis", "Polistes canadensis", "Polistes dorsalis", "Polistes exclamans", "Polistes fuscatus", "Polistes infuscatus", "Polistes instabilis", "Polistes metricus", "Polybia diguetana", "Polybia occidentalis", "Polybia rejecta", "Polybia sericea", "Polybia simillima", "Ropalidia flavobrunnea", "Ropalidia horni", "Ropalidia nigrescens", "Synoeca septentrionalis", "Dolichovespula maculata","Paravespula maculifrons", "Paravespula pensylvanica", "Vespa mandarinia", "Vespula squamosa")

VespRes<-gnr_resolve(names=Vespidae)

#Paravespula flavopilosa to Paravespula Bluthgen ??? index[411-429], only a 0.75 score, removed


Formicidae<-c("Myrmecia nigriceps", "Myrmecia pyriformis", "Diacamma rugosum", "Dinoponera grandis", "Ectatomma quadridens", "Ectatomma tuberculatum", "Odontomachus haematodus", "Odontomachus infadus", "Odontomachus simillimus", "Pachycondyla apicalis", "Pachycondyla villosa", "Paraponera clavata", "Pseudomyrmex mexicanus", "Psuedomyrmex triplarinus", "Eciton burchelli", "Eciton hamatum", "Manica bradleyi", "Myrmica hamulata", "Solenopsis geminata", "Solenopsis invicta", "Solenopsis xyloni")

FormRes<-gnr_resolve(names=Formicidae)
#Eciton haematum to Eciton hamatum
#Myrmecia nigripes to Myrmecia nigriceps
#Pseudomyrmex nigrocintus to Pseudomyrmex aff. flavicornis ???, maybe remove index[228-258], 0.75 score, removed

Antophoridae<-c("Centris pallida", "Diadasia rinconis", "Habropoda pallida", "Xenoglossa angustior", "Xylocopa virginia", "Xylocopa magnificia")

Colletidae<-c("Crawfordapis luctuosa")

Apidae<-c("Apis cerana", "Apis mellifera", "Apis dorsata", "Bombus sonorus")

speciesACA<- c("Centris pallida", "Diadasia rinconis", "Habropoda pallida", "Xenoglossa angustior", "Xylocopa virginia", "Xylocopa magnificia", "Crawfordapis luctuosa", "Apis cerana", "Apis mellifera", "Apis dorsata", "Bombus sonorus" )

ACARes<- gnr_resolve(names=speciesACA)

#runVesp<-gnr_resolve(names=Vespidae)
#head(runVesp)
#Vesp_tsn<-get_tsn(Vespidae,accepted=FALSE)




