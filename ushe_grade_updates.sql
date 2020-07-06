/**************************************************************************
  This script is used to set the final grade for students that have a mismatched
  grade in the snapshot table.
  Also used to flag concurrent enrolled courses and perkins courses.
 ************************************************************************/

with cte_credits_earned as (
    select
        sfrstcr_pidm,
        sfrstcr_term_code,
        sfrstcr_crn,
        sfrstcr_grde_code,
        shrgrde_levl_code,
        shrtckg_grde_code_final,
        NVL(shrtckg_grde_code_final, sfrstcr_grde_code) final_grade,
        shrtckg_credit_hours,
        shrgrde_passed_ind
    from sfrstcr
    left join shrtckn
              on (shrtckn_pidm = sfrstcr_pidm and shrtckn_crn = sfrstcr_crn and shrtckn_term_code = sfrstcr_term_code)
    left join shrtckg on shrtckg.rowid = f_get_shrtckg_rowid(shrtckn_pidm, shrtckn_term_code, shrtckn_seq_no, 1)
    left join shrgrde on shrgrde_code = shrtckg_grde_code_final and shrgrde_levl_code = 'UG')


select
--     dsc_pidm,
--     final_grade,
--     sfrstcr_grde_code,
--     s1.banner_term,
--     s1.dsc_crn,
    --USHE QUERY
    sc_level,
    sc_inst,
    sc_year,
    sc_term,
    sc_id,
    sc_banner_id,
    sc_crs_sbj,
    sc_crs_num,
    sc_crs_sec,
    dsc.f_get_final_grade(s1.dsc_pidm, s1.banner_term, s1.dsc_crn) as sc_grade,
    case when shrgrde_passed_ind = 'Y' then shrtckg_credit_hours else 0 end * 10 as sc_earned_cr,
    case when c_budget_code in ('BC', 'SF') then 1 else 0 end as ce_flag,
    case when c_program_type = 'V' then 1 else 0 end as perk_flag
from student_courses@dscir s1
left join cte_credits_earned s2
          on s1.dsc_pidm = s2.sfrstcr_pidm and s1.banner_term = s2.sfrstcr_term_code and s1.dsc_crn = s2.sfrstcr_crn
left join courses@dscir s3 on s3.dc_crn = s1.dsc_crn and s3.dsc_term_code = s1.dsc_term_code
where s1.banner_term in ('201930', '201940', '202020')
  and s1.sc_extract = 'E'
  and case when sc_grade = dsc.f_get_final_grade(s1.dsc_pidm, s1.banner_term, s1.dsc_crn) then 'yes' else 'no' end = 'no'  -- Determines if there is a match or not
and dsc.f_get_final_grade(s1.dsc_pidm, s1.banner_term, s1.dsc_crn) is not null;
