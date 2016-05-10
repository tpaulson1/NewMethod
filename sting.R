library(traits)
library(ape)
library(seqinr)
#setwd("/Users/Tyson/Desktop/Stings")
species<-read.csv("stings.csv", header=TRUE)#read taxa list, next time, just put the species in as a plain text column. It looks like you copied a newick string into a csv, which R can't read well.
#Also, might be worth using taxize to correct species name synonymy. It could be useful given I think the data is from the 1980's
ncbi.access<-NULL#empty vector for merging records
#Go through and find the longest seq for each species
for (i in 1:length(species$Species)){
  ncbi.hits<-as.matrix(traits::ncbi_byname(taxa=species$Species[[i]],gene=c("COI","co1","coi","CO1","cox1","COX1","cytochrome oxidase subunit I"),seqrange = "1:5000"))[,c(1,4:5)])#use the ropensci traits package to read the accession numbers
 	ncbi.access<-rbind(ncbi.access,ncbi.hits)#merge together all search hits given by merging to the ith multiple of 600
  }
ncbi.access<-as.data.frame(ncbi.access)#It was being a bitch with an empty vector, so I just did it as a matrix and made it a data frame

#Traits is a bitch about extracting and writing seqs to a file, so we will use ape/seqinr with the accession of the longest seq we found
#we will use the read.GenBank and write.fasta functions
#it is really easy to loop through genes if you had a list of accessions for each gene
accessions<-ncbi.access[which(!ncbi.access$acc_no=="NA"),]#subset out any species without sequence data
seq.obj<- read.GenBank(accessions$acc_no, seq.names = accessions$taxon, species.names = TRUE, gene.names = FALSE, as.character = TRUE)#store temporary object of sequences
seq.ids<-attr(seq.obj, "species")#extract attribute-species name, from genbank takedown above
write.fasta(sequences=seq.obj, names=seq.ids, nbchar=50, file.out="schmidt.fa")#write to fasta with gene name replacing the accession# with the species name
