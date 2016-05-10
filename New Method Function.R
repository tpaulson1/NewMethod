library(taxize)
	
best_name<-function(species, min=0.9) 
{ 
	temp<-gnr_resolve(names=species, best_match_only=TRUE)
	return(temp$matched_name[temp$score >= min])
}
	 
q<-best_name(species=Vespidae)

#this function allows me to pass it a list of species names and the function returns a list of only the species names that have a match score equal to or above the score that you give it. The default is set to 0.90.

# I decided that this could be very useful because even while using the "best_match_only" argument in the gnr_resolve() function, I was returning some really crummy matches. After manually going through them all and finding the bad matches to delete, I figured that there must be a better way.
	
	
Vespidae<-c("Eustenogaster luzonensis","Agelaia panamensis","Apoica pallens","Brachygastra mellifica","Metapolybia docilis","Mischocyttarus angulatus", "Mischocyttarus atrocyaneus", "Mischocyttarus costaricensis","Mischocyttarus flavitarsus", "Parachartergus fraternus","Polistes annularis", "Polistes arizonensis", "Polistes canadensis", "Polistes dorsalis", "Polistes exclamans", "Polistes fuscatus", "Polistes infuscatus", "Polistes instabilis", "Polistes metricus", "Polybia diguetana", "Polybia occidentalis", "Polybia rejecta", "Polybia sericea", "Polybia simillima", "Ropalidia flavobrunnea", "Ropalidia horni", "Ropalidia nigrescens", "Synoeca septentrionalis", "Dolichovespula maculata","Paravespula maculifrons", "Paravespula pensylvanica", "Vespa mandarinia", "Vespula squamosa")

#Paravespula flavopilosa to Paravespula Bluthgen ??? index[411-429], only a 0.75 score, removed	

Formicidae<-c("Myrmecia nigriceps", "Myrmecia pyriformis", "Diacamma rugosum", "Dinoponera grandis", "Ectatomma quadridens", "Ectatomma tuberculatum", "Odontomachus haematodus", "Odontomachus infadus", "Odontomachus simillimus", "Pachycondyla apicalis", "Pachycondyla villosa", "Paraponera clavata", "Pseudomyrmex mexicanus", "Psuedomyrmex triplarinus", "Eciton burchelli", "Eciton hamatum", "Manica bradleyi", "Myrmica hamulata", "Solenopsis geminata", "Solenopsis invicta", "Solenopsis xyloni")

#Eciton haematum to Eciton hamatum
#Myrmecia nigripes to Myrmecia nigriceps
#Pseudomyrmex nigrocintus to Pseudomyrmex aff. flavicornis ???, maybe remove index[228-258], 0.75 score, removed


#temp<-NA
#new.results<-NA
#best_name<-function(species, min=0.9) { 
	#temp<-gnr_resolve(names=species, best_match_only=TRUE)
		#for( i in length(temp)) {
			#if(temp$score[i] >= min) {
				#new.results <- temp$matched_name[i]					}
	#}
#}	
# this was my first attempt because I originally could not get r to vectorize across "temp", so I tried to write a for loop and it got messy. I came across this much more elegant way to perform the task



 
	