" Vim syntax file
" Language: stan
" Maintainer: Michael Lerch <mdlerch@gmail.com>
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


" Blocks
syn keyword stanBlock data parameters model
syn match stanBlock "generated quantities"
syn match stanBlock "transformed parameters"
syn match stanBlock "transformed data"


" data types
syn keyword stanType int real vector simplex ordered positive_ordered
syn keyword stanType row_vector matrix corr_matrix cov_matrix

" discrete distributions
syn keyword stanDist bernoulli
syn keyword stanFunc bernoulli_log bernouli_cdf bernoulli_rng bernoulli_logit_log
syn keyword stanDist binomial
syn keyword stanFunc binomial_log binomial_cdf binomial_rng binomial_logit_log
syn keyword stanDist beta_binomial
syn keyword stanFunc beta_binomial_log beta_binomial_cdf beta_binomial_rng
syn keyword stanDist hypergeometric
syn keyword stanFunc hypergeometric_log hypergeometric_rng
syn keyword stanDist categorical
syn keyword stanFunc categorical_log categorical_rng
syn keyword stanDist ordered_logistic
syn keyword stanFunc ordered_logistic_log ordered_logistic_rng
syn keyword stanDist neg_binomial
syn keyword stanFunc neg_binomial_log neg_binomial_cdf neg_binomial_rng
syn keyword stanDist poisson
syn keyword stanFunc poisson_log poisson_cdf poisson_rng
" syn keyword stanDist poisson_log
syn keyword stanFunc poisson_log_log
syn keyword stanDist multinomial
syn keyword stanFunc multinomial_log multinomial_rng
" continuous distributions
syn keyword stanDist normal
syn keyword stanFunc normal_log normal_cdf normal_rng
syn keyword stanDist exp_mod_normal
syn keyword stanFunc exp_mod_normal_log exp_mod_normal_cdf exp_mod_normal_rng
syn keyword stanDist skew_normal
syn keyword stanFunc skew_normal skew_normal_log skew_normal_cdf skew_normal_rng
syn keyword stanDist student_t
syn keyword stanFunc student_t_log student_t_cdf student_t_rng
syn keyword stanDist cauchy
syn keyword stanFunc cauchy_log cauch_cdf cauchy_rng
syn keyword stanDist double_exponential
syn keyword StanFunc double_exponential_log double_exponential_rng
syn keyword stanDist logistic
syn keyword StanFunc logistic_log logistic_cdf logistic_rng
syn keyword stanDist gumbel
syn keyword stanFunc gumbel_log gumbel_cdf gumbel_rng
syn keyword stanDist lognormal
syn keyword stanFunc lognormal_log lognormal_cdf lognormal_rng
syn keyword stanDist chi_square
syn keyword stanFunc chi_square_log chi_square_rng
syn keyword stanDist inv_chi_square
syn keyword stanFunc inv_chi_square_log inv_chi_square_cdf inv_chi_square_rng
syn keyword stanDist scaled_inv_chi_square
syn keyword stanFunc scaled_inv_chi_square_log scaled_inv_chi_square_cdf scaled_inv_chi_square_rng
syn keyword stanDist exponential
syn keyword stanFunc exponential_log exponential_cdf exponential_rng
syn match stanDist "gamma("me=e-1
syn keyword stanFunc gamma_log gamma_rng
syn keyword stanDist inv_gamma
syn keyword stanFunc inv_gamma_log inv_gamma_cdf
syn keyword stanDist weibull
syn keyword stanFunc weibull_log weibull_cdf weibull_rng
syn keyword stanDist pareto
syn keyword stanFunc pareto_log pareto_cdf pareto_rng
syn match stanDist "beta("me=e-1
syn keyword stanFunc beta_log beta_cdf beta_rng
syn keyword stanDist uniform
syn keyword stanFunc uniform_log uniform_rng
syn keyword stanDist multi_normal
syn keyword stanFunc multi_normal_log multi_normal_rng
syn keyword stanDist multi_normal_prec
syn keyword stanFunc multi_normal_prec_log
syn keyword stanDist multi_normal_cholesky
syn keyword stanFunc multi_normal_cholesky_log
syn keyword stanDist multi_student_t
syn keyword stanFunc multi_student_t_log multi_student_t_rng
syn keyword stanDist dirichlet
syn keyword stanFunc dirichlet_log dirichlet_rng
syn keyword stanDist lkj_corr
syn keyword stanFunc lkj_corr_log lkj_corr_rng
syn keyword stanDist lkj_corr_cholesky
syn keyword stanFunc lkj_corr_cholesky_log lkj_corr_cholesky_rng
syn keyword stanDist wishart
syn keyword stanFunc wishart_log wishart_rng
syn keyword stanDist inv_wishart
syn keyword stanFunc inv_wishart_log inv_wishart_rng
syn keyword stanDist lkj_cov
syn keyword stanFunc lkj_cov_log

" built in functions
syn keyword stanFunc abs fabs fdim fmin fmax min max fmod floor ceil round trunc
syn keyword stanFunc sqrt cbrt square exp exp2 log log2 log10 pow hypot
syn keyword stanFunc sin cos tan acos asin atan atan2 cosh sinh tanch acosh asinh atanh
syn keyword stanFunc logit inv_logit inv_cloglog erf erfc Phi binary_log_loss
syn keyword stanFunc tgamma lgamma lbeta binomial_coefficient_log
syn keyword stanFunc expml fma multiply_log log1p log1m log1p_exp log_sum_exp
syn keyword stanFunc log_inv_logit log1m_inv_logit
syn keyword stanFunc sum prod mean variance sd log_sum_exp rows cols
syn keyword stanFunc cumulative_sum dot_product dot_self tcrossprod crossprod
syn keyword stanFunc muliply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syn keyword stanFunc diagonal diag_matrix col row block softmax
syn keyword stanFunc mdivide_right_tri_low mdivide_left_tri_low trace determinant
syn keyword stanFunc inverse eignvalues_sym cholesky_decompose singular_values


" mathematical constants
syn match stanConstants "pi()\|e()\|sqrt2()\|log2()\|log10()\|epsilon\|negative_epsilon()"
syn match stanConstants "not_a_number()\|positive_infinity()\|negative_infinity()"

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


" Comments
syn match stanComment contains=@Spell "//.*"
syn region stanComment start="\/\*" end="\*\/" contains=@stanComment,@Spell

hi def link stanUnmatch Error
hi def link stanUnmatchC Error
hi def link stanUnmatchP Error
hi def link stanUnmatchB Error
hi def link stanConstants Constant
hi def link stanFunc Function
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
hi def link stanVarNum Normal

let b:current_syntax="stan"
