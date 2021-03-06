test_estimate_aufc_weights <- function() {
    data("mm9.gene.data",package="metaseqR")
    #multic <- check.parallel(0.1)
    #multic <- FALSE
    weights <- estimate.aufc.weights(
       counts=as.matrix(mm9.gene.counts[,9:12]),
       normalization="edaseq",
       statistics=c("edger","limma"),
       nsim=1,N=10,ndeg=c(2,2),top=4,model.org="mm9",
       seed=42,multic=FALSE,libsize.gt=1e+5
    )
    #checkEqualsNumeric(weights,c(0.5384615,0.4615385),tolerance=1e-5)
    checkEqualsNumeric(weights,c(0.5,0.5),tolerance=1e-5)
    checkEqualsNumeric(sum(weights),1,tolerance=1e-9)
}
