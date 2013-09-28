" Vim syntax file
" Language: stan
" Maintainer: Michael Lerch <mdlerch@gmail.com>
" Created: Fri 27 Sep 2013 10:26:15 PM MDT
" Last Modified: Fri 27 Sep 2013 10:26:15 PM MDT
" Filenames: *.stan


if exists("b:current_syntax")
	finish
endif

setlocal iskeyword=@,48-57,_,.

syn case match

syn match stanComment contains=@Spell "#.*"

" Blocks
syn keyword stanBlock data parameters model
syn match stanBlock "generated quantities"
syn match stanBlock "transformed parameters"

" data types
syn keyword stanType int real vector simplex ordered positive_ordered
syn keyword stanType row_vector matrix corr_matrix cov_matrix

" discrete distributions
syn keyword stanDist bernoulli bernoulli_logit binomial beta_binomial
syn keyword stanDist hypergeometric categorical ordered_logistic
syn keyword stanDist neg_binomial poisson poisson_log multinomial
" continuous distributions
syn keyword stanDist normal normal_cdf student_t cauchy double_exponential
syn keyword stanDist logistic lognormal lognormal_cdf chi_square inv_chi_square
syn keyword stanDist scaled_inv_chi_square exponential exponential_cdf gamma
syn keyword stanDist inv_gamma weibull weibull_cdf pareto beta uniform
syn keyword stanDist dirichlet multi_normal multi_normal_cholesky
syn keyword stanDist multi_student_t wishart inv_wishart lkj_cov lkj_corr
syn keyword stanDist lkj_corr_cholesky

syn keyword stanControl if else for while




hi def link stanBlock Conditional
hi def link stanDist Function
hi def link stanControl Conditional
hi def link stanType Type

let b:current_syntax="stan"
