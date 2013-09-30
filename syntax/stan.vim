" Vim syntax file
" Language: stan
" Maintainer: Michael Lerch <mdlerch@gmail.com>
" Created: Fri 27 Sep 2013 10:26:15 PM MDT
" Last Modified: Mon 30 Sep 2013 01:08:44 PM MDT
" Filenames: *.stan


if exists("b:current_syntax")
	finish
endif

setlocal iskeyword=@,48-57,_,.

syn case match

" Numbers and values
" Integer with - + or nothing in front
syn match stanNumber '\d\+'
syn match stanNumber '[-+]\d\+'
" Floating point number with decimal no E or e (+,-)
syn match stanFloat '\d\+\.\d*'
syn match stanFloat '[-+]\d\+\.\d*'
" Floating point like number with E and no decimal point (+,-)
syn match stanFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match stanFloat '\d[[:digit:]]*[eE][\-+]\=\d\+'
" Floating point like number with E and decimal point (+,-)
syn match stanFloat '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match stanFloat '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

syn match stanVarNum "\a\k"
hi def link stanVarNum Normal


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
syn keyword stanDist scaled_inv_chi_square exponential exponential_cdf
syn keyword stanDist inv_gamma weibull weibull_cdf pareto uniform
syn keyword stanDist dirichlet multi_normal multi_normal_cholesky
syn keyword stanDist multi_student_t wishart inv_wishart lkj_cov lkj_corr
syn keyword stanDist lkj_corr_cholesky
syn match stanDist "beta("me=e-1
syn match stanDist "gamma("me=e-1

" Control
syn keyword stanControl if else for while


" Delimiters
syn match stanDelim "[,;:<>]"



" Special operators
syn match stanSpecOperator "\~"
syn match stanSpecOperator "<-"

" regular operators
syn match stanOperator "[\+\-\*!^~/:]"

" unmatched paren

syn region stanRegion start="(" end=")" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchC,StanUnmatchB
syn region stanRegion start="{" end="}" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchB,stanUnmatchP
syn region stanRegion start="\[" end="\]" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchP,stanUnmatchC

syn match stanUnmatch "[)\]}]"
syn match stanUnmatchC "[)\]]" contained
syn match stanUnmatchP "[}\]]" contained
syn match stanUnmatchB "[)}]" contained
hi def link stanUnmatch Error
hi def link stanUnmatchC Error
hi def link stanUnmatchP Error
hi def link stanUnmatchB Error


" Comments
syn match stanComment contains=@Spell "//.*"
syn region stanComment start="\/\*" end="\*\/" contains=@stanComment,@Spell

hi def link stanBlock Conditional
hi def link stanDist Function
hi def link stanControl Conditional
hi def link stanType Type
hi def link stanComment Comment
hi def link stanSpecOperator Operator
hi def link stanBound Constant
hi def link stanNumber Number
hi def link stanFloat Number
hi def link stanDelim Delimiter
hi def link stanOperator Operator

let b:current_syntax="stan"
