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

syn match stanVarNum '\a\k'


" Blocks
syn keyword stanBlock data parameters model
syn match stanBlock 'generated quantities'
syn match stanBlock 'transformed parameters'
syn match stanBlock 'transformed data'


" data types
syn keyword stanType int real vector simplex ordered positive_ordered
syn keyword stanType row_vector matrix corr_matrix cov_matrix

" discrete distributions
syn keyword stanDist bernoulli bernoulli_logit
syn keyword stanFunc bernoulli_log bernoulli_cdf bernoulli_cdf_log
syn keyword stanFunc bernoulli_ccdf_log bernoulli_logit_log bernoulli_rng

syn keyword stanDist binomial binomial_logit
syn keyword stanFunc binomial_log binomial_cdf binomial_cdf_log
syn keyword stanFunc binomial_ccdf_log binomial_logit_log binomial_rng

syn keyword stanDist beta_binomial
syn keyword stanFunc beta_binomial_log beta_binomial_cdf
syn keyword stanFunc beta_binomial_ccdf_log beta_binomial_rng

syn keyword stanDist hypergeometric
syn keyword stanFunc hypergeometric_log hypergeometric_rng

syn keyword stanDist categorical categorical_logit
syn keyword stanFunc categorical_log categorical_logit_log categorical_rng

syn keyword stanDist ordered_logistic
syn keyword stanFunc ordered_logistic_log ordered_logistic_rng

syn keyword stanDist neg_binomial
syn keyword stanFunc neg_binomial_log neg_binomial_cdf neg_binomial_cdf_log
syn keyword stanFunc neg_binomial_ccdf_log neg_binomial_rng
syn keyword stanDist neg_binomial_2_log
syn keyword stanFunc neg_binomial_2_log neg_binomial_2_log_log
syn keyword stanFunc neg_binomial_2_rng neg_binomial_2_log_rng

syn keyword stanDist poisson
syn keyword stanFunc poisson_log poisson_cdf poisson_cdf_log
syn keyword stanFunc poisson_ccdf_log poisson_rng

" poisson_log distribution already matched above as a function
" syn keyword stanDist poisson_log
syn keyword stanFunc poisson_log_log

syn keyword stanDist multinomial
syn keyword stanFunc multinomial_log multinomial_rng

" continuous distributions
syn keyword stanDist normal
syn keyword stanFunc normal_log normal_cdf normal_cdf_log normal_ccdf_log
syn keyword stanFunc normal_rng

syn keyword stanDist exp_mod_normal
syn keyword stanFunc exp_mod_normal_log exp_mod_normal_cdf exp_mod_normal_cdf_log
syn keyword stanFunc exp_mod_normal_ccdf_log exp_mod_normal_rng

syn keyword stanDist skew_normal
syn keyword stanFunc skew_normal_log skew_normal_cdf skew_normal_cdf_log
syn keyword stanFunc skew_normal_cdf_ccdf_log skew_normal_rng

syn keyword stanDist student_t
syn keyword stanFunc student_t_log student_t_cdf student_t_cdf_log
syn keyword stanFunc student_t_ccdf_log student_t_rng

syn keyword stanDist cauchy
syn keyword stanFunc cauchy_log cauch_cdf cauch_cdf_log cauch_ccdf_log cauchy_rng

syn keyword stanDist double_exponential
syn keyword stanFunc double_exponential_log double_exponential_cdf
syn keyword stanFunc double_exponential_cdf_log double_exponential_ccdf_log
syn keyword stanFunc double_exponential_rng

syn keyword stanDist logistic
syn keyword stanFunc logistic_log logistic_cdf logistic_cdf_log logistic_ccdf_log
syn keyword stanFunc logistic_rng

syn keyword stanDist gumbel
syn keyword stanFunc gumbel_log gumbel_cdf gumbel_cdf_log gumbel_ccdf_log  gumbel_rng

syn keyword stanDist lognormal
syn keyword stanFunc lognormal_log lognormal_cdf lognormal_rng

syn keyword stanDist chi_square
syn keyword stanFunc chi_square_log chi_square_cdf chi_square_cdf_log
syn keyword stanFunc chi_square_ccdf_log chi_square_rng

syn keyword stanDist inv_chi_square
syn keyword stanFunc inv_chi_square_log inv_chi_square_cdf inv_chi_square_cdf_log
syn keyword stanFunc inv_chi_square_ccdf_log inv_chi_square_rng

syn keyword stanDist scaled_inv_chi_square
syn keyword stanFunc scaled_inv_chi_square_log scaled_inv_chi_square_cdf
syn keyword stanFunc scaled_inv_chi_square_cdf_log scaled_inv_chi_square_ccdf_log
syn keyword stanFunc scaled_inv_chi_square_rng

syn keyword stanDist exponential
syn keyword stanFunc exponential_log exponential_cdf exponential_cdf_log
syn keyword stanFunc exponential_ccdf_log exponential_rng

syn match stanDist /gamma\ze\s*(/

syn keyword stanDist inv_gamma
syn keyword stanFunc inv_gamma_log inv_gamma_cdf inv_gamma_cdf_log
syn keyword stanFunc inv_gamma_ccdf_log inv_gamma_rng

syn keyword stanDist weibull
syn keyword stanFunc weibull_log weibull_cdf weibull_cdf_log
syn keyword stanFunc weibull_ccdf_log weibull_rng

syn keyword stanDist frechet
syn keyword stanFunc frechet_log frechet_cdf frechet_cdf_log
syn keyword stanFunc frechet_ccdf_log frechet_rng

syn keyword stanDist rayleigh
syn keyword stanFunc rayleigh_log rayleigh_cdf rayleigh_cdf_log
syn keyword stanFunc rayleigh_ccdf_log rayleigh_rng

syn keyword stanDist pareto
syn keyword stanFunc pareto_log pareto_cdf pareto_cdf_log
syn keyword stanFunc pareto_ccdf_log pareto_rng

syn keyword stanDist pareto_type_2
syn keyword stanFunc pareto_type_2_log pareto_type_2_cdf pareto_type_2_cdf_log
syn keyword stanFunc pareto_type_2_ccdf_log pareto_type_2_rng

syn match stanDist /beta\ze\s*(/
syn keyword stanFunc beta_log beta_cdf beta_cdf_log
syn keyword stanFunc beta_ccdf_log beta_rng

syn keyword stanDist von_mises_log
syn keyword stanFunc von_mises_rng

syn keyword stanDist uniform
syn keyword stanFunc uniform_log uniform_cdf uniform_cdf_log
syn keyword stanFunc uniform_ccdf_log uniform_rng

syn keyword stanDist multi_normal
syn keyword stanFunc multi_normal_log multi_normal_rng

syn keyword stanDist multi_normal_prec
syn keyword stanFunc multi_normal_prec_log

syn keyword stanDist multi_normal_cholesky
syn keyword stanFunc multi_normal_cholesky_log multi_normal_cholesky_rng

syn keyword stanDist multi_gp
syn keyword stanFunc multi_gp_log

syn keyword stanDist multi_gp_cholesky
syn keyword stanFunc multi_gp_cholesky_log

syn keyword stanDist multi_student_t
syn keyword stanFunc multi_student_t_log multi_student_t_rng

syn keyword stanDist gaussian_dlm_obs
syn keyword stanFunc gaussian_dlm_obs_log 

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

" built in functions
syn keyword stanFunc abs fabs fdim fmin fmax fmod floor ceil round trunc
syn keyword stanFunc sqrt cbrt square exp exp2 log log2 log10 pow inv inv_sqrt inv_square
syn keyword stanFunc hypot cos sin tan acos asin atan atan2 cosh sinh tanh acosh asinh atanh
syn keyword stanFunc logit inv_logit inv_cloglog
syn keyword stanFunc erf erfc Phi inv_Phi Phi_approx binary_log_loss owens_t
syn keyword stanFunc lbeta tgamma lgamma digamma trigamma lmgamma gamma_p gamma_q
syn keyword stanFunc binomial_coefficient_log bessel_first_kind bessel_second_kind
syn keyword stanFunc log_falling_factorial rising_factorial log_rising_factorial
syn keyword stanFunc expml fma multiply_log log1p log1m log1p_exp log1m_exp log_diff_exp
syn keyword stanFunc log_mix log_sum_exp log_inv_logit log1m_inv_logit
syn keyword stanFunc min max sum prod log_sum_exp mean variance sd distance squared_distance
syn keyword stanFunc dims num_elements size rep_array
syn keyword stanFunc sort_asc sort_desc sort_indices_asc sort_indices_desc rank
syn keyword stanFunc num_elments rows cols
syn keyword stanFunc dot_product columns_dot_product rows_dot_product dot_self
syn keyword stanFunc columns_dot_self rows_dot_self tcrossprod crossprod
syn keyword stanFunc quad_form quad_form_diag quad_form_sym trace_quad_form trace_gen_quad_form
syn keyword stanFunc multiply_lower_tri_self_transpose diag_pre_multiply diag_post_multiply
syn keyword stanFunc rep_vector rep_row_vector rep_matrix diagonal diag_matrix
syn keyword stanFunc col row block sub_col sub_row head tail segment 
syn keyword stanFunc append_col append_row
syn keyword stanFunc softmax log_softmax cumulative_sum
syn keyword stanFunc mdivide_right_tri_low mdivide_left_tri_low
syn keyword stanFunc trace determinant log_determinant
syn keyword stanFunc inverse inverse_spd eignvalues_sym eigenvectors_sym qr_Q qr_R
syn keyword stanFunc cholesky_decompose singular_values
syn keyword stanFunc csr_extract_w csr_extract_v csr_extract_u csr_to_dense_matrix
syn keyword stanFunc csr_matrix_times_vector
syn keyword stanFunc to_matrix to_vector to_row_vector to_array_2d to_array_1d
syn keyword stanFunc increment_log_prob

" deprecated
syn keyword stanDepr lp__


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
syn match stanSpecOperator "\'"
syn match stanSpecOperator "\.[*/]"
syn match stanSpecOperator "\\"

" regular operators
syn match stanOperator "[\+\-\*!^~/:]"

" unmatched paren

syn region stanRegion start="(" end=")" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchC,stanUnmatchB
syn region stanRegion start="{" end="}" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchB,stanUnmatchP
syn region stanRegion start="\[" end="\]" matchgroup=Delimeter transparent contains=ALLBUT,stanUnmatch,stanUnmatchP,stanUnmatchC

syn match stanUnmatch "[)\]}]"
syn match stanUnmatchC "[)\]]" contained
syn match stanUnmatchP "[}\]]" contained
syn match stanUnmatchB "[)}]" contained


" Comments
syn match stanComment contains=@Spell "//.*"
syn match stanComment contains=@Spell "#.*"
syn region stanComment start="\/\*" end="\*\/" contains=@stanComment,@Spell

hi def link stanUnmatch Error
hi def link stanUnmatchC Error
hi def link stanUnmatchP Error
hi def link stanUnmatchB Error
hi def link stanDepr Error
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
