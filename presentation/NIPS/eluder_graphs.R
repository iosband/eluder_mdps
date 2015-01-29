# Making the Eluder dimension graphs

library(data.table)
library(ggplot2)
library(reshape2)
library(MASS)

set.seed(5)
n_samp <- 5
f <- rnorm(n_samp)
data <- data.table(f=f, g=f + 1.4*rnorm(n_samp), id=paste0('x', 1:n_samp))
data[n_samp, f := 5]
dt.melt <- melt(data, id.vars='id')

theme_set(theme_gray(base_size = 22))

plt <- (ggplot(dt.melt)
        + aes(x=id, y=value, colour=variable, ymin=value-1, ymax=value+1)
        + geom_point(size=5, alpha=0.75)
        + geom_errorbar(data = dt.melt[variable != 'f'])
        + xlab(NULL)
        + ylab(NULL)
        + scale_colour_discrete(name='Function',
                                labels=c(expression(f[1]),
                                         expression(f[2])))
        + scale_x_discrete(labels=c(expression(x[1]),
                                    expression(x[2]),
                                    expression(x[3]),
                                    expression(x[4]),
                                    expression(x[5]))))
plt

plt2 <- plt %+% dt.melt[variable != 'f_2'] + geom_errorbar()
plt2

plt + plt2
