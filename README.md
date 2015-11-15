mc-stan.vim
===========

Filetype
--------

`*.stan` files are matched as stan files.

Syntax
------

Extensive syntax matching for distributions, functions, operators, and more.

Indentation
-----------

Take advantage of cindent for indentation of stan files.

Snippets
--------

A rich suite of [Ultisnip](http://github.com/SirVer/ultisnips) snippets for building stan models.
`stan` snippets follow a pattern of `stan_*`.
If you use a completer like [YouCompleteMe](http://github.com/Valloric/YouCompleteMe), you can see all the snippets available just by typing `stan_`
Snippets exist for a bare stan skeleton, traditional examples, and different classic models.
Snippets are also provided for the R filetypes for use with `Rstan`.

Available snippets:

- `stan_linearmodel` (stan and R) basic linear model with Gaussian errors
- `stan_bernoulli` (stan and R) basic linear model for Bernoulli response.
- `stan_binomial` (stan and R) basic linear model for Binomial response.
- `stan_example_rats` (stan) the classic "Rats" example
- `stan_example_schools` (stan) the classic "8 schools" example
- `stan_skeleton` (stan) setup of the different blocks (data, parameters, etc)
- `stan` (R) R code to build a model, sample, and extract


