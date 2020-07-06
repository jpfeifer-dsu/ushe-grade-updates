
 -- Items to update before running:
 --  * Use excel to write queries to pull USHE's list into the database. See formula below. *
 --  * All 3 term codes for the academic year ('20153E','20154E','20162E')
 --  * Update the academic year on the perkins participants table.
 --  * Manually adjust queries at the bottom for items found in USHE's list but not ours. **
 --  CREATE TABLE grade_updates_ushe_1617  AS SELECT * FROM grade_updates_ushe;
 --  CREATE TABLE grade_updates_dixie_1617 AS SELECT * FROM grade_updates_dixie;
 
 -- Expect around 15 minutes run-time. 
 
 /*
    DROP   TABLE grade_updates_ushe;
    CREATE TABLE grade_updates_ushe
    (
      sc_inst       VARCHAR2(4),
      sc_year       NUMBER(4),
      sc_term       NUMBER(1),
      sc_id         NUMBER(9),
      sc_banner_id  VARCHAR2(8),
      sc_crs_sbj    VARCHAR2(5),
      sc_crs_num    VARCHAR2(5),
      sc_crs_sec    VARCHAR2(5),
      sc_grade      VARCHAR2(2),
      final_grade   VARCHAR2(2),
      sc_earned_cr  VARCHAR2(3),
      final_earn_cr VARCHAR2(3),
      flag_ce       NUMBER(1),
      flag_perk     NUMBER(1),
      match_found   NUMBER(1)
    );

    DROP   TABLE grade_updates_dixie;
    CREATE TABLE grade_updates_dixie
    (
      sc_pidm        VARCHAR2(9),
      sc_inst        VARCHAR2(4),
      sc_year        NUMBER(4),
      sc_term        NUMBER(1),
      sc_term_code   VARCHAR2(6),
      sc_id          NUMBER(9),
      sc_banner_id   VARCHAR2(8),
      sc_crn         VARCHAR2(9),
      c_program_type VARCHAR2(1),
      sc_crs_sbj     VARCHAR2(5),
      sc_crs_num     VARCHAR2(5),
      sc_crs_sec     VARCHAR2(5),
      sc_grade       VARCHAR2(2),
      final_grade    VARCHAR2(2),
      sc_earned_cr   VARCHAR2(3),
      final_earn_cr  VARCHAR2(3),
      flag_ce        NUMBER(1),
      flag_perk      NUMBER(1),
      match_found    NUMBER(1),
      notes          VARCHAR2(99)
    );
 */
 -- Use this formula to pull USHE's list into the database. *
 -- =CONCATENATE("    INSERT INTO grade_updates_ushe VALUES ('",[@[SC_YEAR]],"','",[@[SC_YEAR]],"','",[@[SC_TERM]],"','",[@[SC_ID]],"','",[@[SC_BANNER_ID]],"','",[@[SC_CRS_SBJ]],"','",[@[SC_CRS_NUM]],"','",[@[SC_CRS_SEC]],"','",[@[SC_GRADE]],"','','",[@[SC_EARNED_CR]],"','','",[@[CE_flag]],"','",[@[Perk_flag]],"','');")
    
    -- Clear Tables
    TRUNCATE TABLE grade_updates_ushe; 
    TRUNCATE TABLE grade_updates_dixie;
    
    -- Insert USHE Data
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378103','00378103','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378158','00378158','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398783','00398783','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022922','00397871','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518611825','00378419','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519633681','00397803','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519634604','00397479','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','538479166','00398321','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','540612475','00378721','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','542612534','00397947','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605298848','00391801','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608398553','00397960','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646549718','00398632','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646566710','00397478','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584150','00378737','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604989','00376290','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626399','00377891','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646628386','00378952','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643164','00398230','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648502','00375827','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662849','00398579','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662987','00394660','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544651','00378270','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581735','00398594','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585763','00398279','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624647','00376779','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624659','00398415','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647627107','00378430','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628100','00350953','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629294','00378872','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643866','00375928','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662229','00397618','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647669200','00395308','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360521','00378408','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680382905','00376128','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765034271','00378259','ASL','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022593','00397404','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613354650','00396466','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662268','00397741','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647080626','00398182','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605129','00398554','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605483','00228150','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609472','00398118','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644881','00397522','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647666016','00218816','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680464763','00398331','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765163642','00398270','ASL','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','443172202','00398409','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576915626','00379085','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','603375976','00398529','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646705982','00398481','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542117','00378131','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542911','00378170','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565487','00375937','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603457','00378180','BIOL','1610','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621197','00375828','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642622','00376101','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701557','00397906','BIOL','1610','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575911197','00376107','BIOL','1610','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','768076814','00375576','BIOL','1610','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00374367','00374367','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394064','00394064','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','404570291','00388424','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','496588715','00398201','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613258341','00390423','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561504','00374368','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563743','00378740','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568550','00373788','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646580532','00397572','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585601','00376409','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588830','00365836','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603225','00395090','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605980','00398572','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623195','00398527','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548846','00364780','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567008','00373574','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582429','00366324','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644881','00397522','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661867','00394897','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680266761','00398525','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680408967','00398221','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764141348','00398037','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765099833','00378396','BIOL','1610','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','443172202','00398409','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576915626','00379085','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','603375976','00398529','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646705982','00398481','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542117','00378131','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542911','00378170','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565487','00375937','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603457','00378180','BIOL','1615','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621197','00375828','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642622','00376101','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701557','00397906','BIOL','1615','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575911197','00376107','BIOL','1615','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','768076814','00375576','BIOL','1615','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00374367','00374367','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394064','00394064','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','404570291','00388424','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','496588715','00398201','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613258341','00390423','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561504','00374368','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563743','00378740','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568550','00373788','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646580532','00397572','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585601','00376409','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588830','00365836','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603225','00395090','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605980','00398572','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623195','00398527','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548846','00364780','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567008','00373574','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582429','00366324','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644881','00397522','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661867','00394897','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680266761','00398525','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680408967','00398221','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764141348','00398037','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765099833','00378396','BIOL','1615','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00204596','00204596','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','002982237','00397616','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00365781','00365781','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398274','00398274','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398277','00398277','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398417','00398417','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398421','00398421','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','123456788','00398520','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','173087752','00398602','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','195681851','00397941','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','242996198','00398523','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022922','00397871','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','409930843','00398729','CHEM','1010','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','414918417','00398299','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518617480','00398595','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','533494881','00380517','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','542612534','00397947','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602393608','00398169','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605298848','00391801','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608403315','00379385','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','616359005','00397876','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620356888','00398553','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621331445','00395122','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621350240','00397620','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','623375562','00398358','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626376021','00398607','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','636628376','00397750','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646566724','00390869','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603277','00398306','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605194','00397636','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606290','00397626','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646620210','00374386','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621010','00398038','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621018','00397613','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646628386','00378952','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629326','00397723','CHEM','1010','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643164','00398230','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644941','00398379','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646707','00398164','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649380','00397804','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661347','00398071','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662849','00398579','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663135','00398304','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663708','00398079','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646664845','00394661','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646664952','00397967','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684182','00397623','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684659','00397877','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688649','00397985','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701166','00397687','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701844','00397663','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701879','00398219','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646703022','00398026','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646707244','00398278','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646709520','00397897','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646721107','00398420','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646722545','00398592','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724661','00398312','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646725898','00398690','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646726214','00397974','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646726398','00184088','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647060187','00397873','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647085960','00397246','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543720','00397627','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545335','00379424','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548369','00374263','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549472','00398635','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605541','00397806','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608585','00397846','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623488','00397878','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624059','00397933','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624647','00376779','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628134','00398077','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629294','00378872','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640383','00398115','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640549','00397668','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646018','00397505','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647648591','00397872','CHEM','1010','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649758','00378703','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649842','00397969','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660086','00398508','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660836','00398281','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661809','00193464','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662229','00397618','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662769','00397952','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664827','00398078','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665397','00397986','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647669200','00395308','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683618','00397929','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683860','00394653','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683977','00398167','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684214','00397976','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684330','00397622','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687151','00398762','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688209','00398192','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647700234','00397887','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701118','00398127','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701557','00397906','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647702784','00398053','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707386','00397961','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707390','00398297','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','649289753','00398549','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','676462357','00398833','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680288413','00378955','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680423162','00398197','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','703299710','00397661','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765140175','00398076','CHEM','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398241','00398241','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','016863464','00397744','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','099514172','00398000','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','229932432','00398542','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','465204475','00394924','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518638524','00397575','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518650988','00393924','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518653463','00397508','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519638222','00397544','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520437822','00397532','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','531513437','00397883','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','531516220','00397766','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','537457272','00377738','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575956038','00398121','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575995424','00397574','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576931691','00397881','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602310457','00397761','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602373882','00397748','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605237795','00374344','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','607291294','00397555','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608376718','00398039','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610331876','00397684','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610336108','00397767','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613298785','00397710','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613375655','00397366','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','615359430','00398181','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','618298415','00397781','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621292593','00397669','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626642039','00397675','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646546413','00397931','CHEM','1010','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646581755','00397629','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587601','00379442','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622822','00397718','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623189','00188370','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623793','00397800','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623964','00394357','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626380','00397735','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626392','00397756','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626406','00397516','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627346','00378237','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627350','00397534','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627351','00397827','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627590','00397549','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646628836','00397591','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629024','00398124','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629342','00397742','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629344','00397546','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641332','00397554','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642722','00397728','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643068','00397568','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644935','00397548','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646647996','00397400','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648095','00397738','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648226','00397550','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648963','00397758','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649721','00397760','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660254','00395193','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661437','00218809','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662163','00397764','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663553','00398050','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663825','00397561','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667646','00397737','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646681062','00397577','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646681468','00397540','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646687915','00397566','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700493','00397531','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701636','00397556','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646723317','00398189','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724910','00397840','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646728611','00397678','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647529115','00378459','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544517','00397501','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566739','00397980','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585746','00397839','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587765','00391802','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600877','00393193','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647602252','00397579','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603364','00397542','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605080','00397964','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607239','00378848','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607867','00397547','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608575','00397592','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609554','00398381','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647620733','00397633','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621208','00398512','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624046','00377320','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624657','00394921','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647627818','00398054','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628118','00394967','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628126','00397762','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629098','00397587','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629791','00398432','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640389','00393938','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641418','00398136','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641648','00378243','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641650','00398786','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643051','00378256','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644026','00191879','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645944','00397975','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646024','00397536','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646991','00397634','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647648523','00397533','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660123','00397563','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660835','00397890','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661012','00398186','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663192','00397711','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665398','00397543','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647667183','00397552','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647682187','00397970','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684493','00397757','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647685606','00397765','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647686992','00397511','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689105','00397726','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689447','00397551','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701313','00397733','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707136','00397746','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647721633','00398184','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647748151','00397545','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647762636','00397386','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647850307','00397514','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652203291','00398099','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680365122','00397510','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680381296','00379236','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680400941','00397506','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680406316','00394096','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680481407','00398178','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','714392574','00378082','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764225001','00397559','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764305997','00397537','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765101784','00378957','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765187558','00397564','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765323074','00397225','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','769148808','00397562','CHEM','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518631108','00397497','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561852','00373291','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561856','00373298','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646562459','00373285','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567080','00375782','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585595','00373292','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605001','00373301','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621017','00397308','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642107','00397344','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649991','00394951','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660036','00315217','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540884','00373287','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543718','00373309','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581737','00373302','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587591','00373305','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628105','00397309','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642136','00397299','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644024','00394217','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647497','00397193','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680423141','00397306','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764180685','00396389','CHEM','1010','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398697','00398697','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398783','00398783','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','225957410','00397984','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','376272945','00398706','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','517350150','00378521','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','517354833','00398766','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519955463','00378113','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602330852','00398130','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602331572','00397945','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','606414577','00398080','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624351599','00397957','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563695','00378094','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622478','00397431','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629336','00398320','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642463','00397954','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642723','00397935','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644709','00398089','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646680289','00398764','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685532','00398322','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688775','00398328','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701470','00398248','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646702358','00398264','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724300','00398334','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564178','00397944','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605713','00397939','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607036','00398743','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621135','00398082','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623496','00398150','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624060','00397942','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642726','00398128','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662064','00379078','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647668491','00398016','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647668549','00397902','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647682456','00398105','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687750','00398083','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688150','00216715','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701542','00397934','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647704155','00398287','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647706570','00397901','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647782466','00397946','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680428794','00397956','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680428902','00398332','CHEM','1010','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','215615497','00398313','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519618719','00397997','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','542611470','00398483','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','574336263','00398453','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','628780672','00397888','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646522322','00398473','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560834','00378487','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589818','00397899','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600179','00396167','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646624729','00398309','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640185','00397499','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641653','00398503','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641698','00398382','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643878','00398461','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644699','00398462','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661247','00398531','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662359','00398485','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646666285','00398484','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667019','00398505','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667971','00398385','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564053','00398433','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564977','00398342','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564978','00398410','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565228','00397383','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566612','00390280','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647580863','00398362','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585704','00398393','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608016','00398268','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609575','00398460','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621198','00397442','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621722','00398608','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','648581638','00398456','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680280565','00398375','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680300760','00398459','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680329817','00378714','CHEM','1010','K8J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680341042','00397915','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764202912','00398482','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765140352','00397439','CHEM','1010','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00204596','00204596','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','002982237','00397616','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00365781','00365781','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398274','00398274','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398277','00398277','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398417','00398417','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398421','00398421','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','123456788','00398520','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','173087752','00398602','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','195681851','00397941','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','242996198','00398523','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022922','00397871','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','409930843','00398729','CHEM','1015','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','414918417','00398299','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518617480','00398595','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','533494881','00380517','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','542612534','00397947','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602393608','00398169','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605298848','00391801','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608403315','00379385','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','616359005','00397876','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620356888','00398553','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621331445','00395122','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621350240','00397620','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','623375562','00398358','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626376021','00398607','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','636628376','00397750','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646566724','00390869','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603277','00398306','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605194','00397636','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606290','00397626','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646620210','00374386','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621010','00398038','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621018','00397613','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646628386','00378952','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629326','00397723','CHEM','1015','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643164','00398230','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644941','00398379','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646707','00398164','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649380','00397804','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661347','00398071','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662849','00398579','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663135','00398304','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663708','00398079','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646664845','00394661','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646664952','00397967','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684182','00397623','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684659','00397877','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688649','00397985','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701166','00397687','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701844','00397663','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701879','00398219','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646703022','00398026','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646707244','00398278','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646709520','00397897','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646721107','00398420','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646722545','00398592','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724661','00398312','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646725898','00398690','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646726214','00397974','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646726398','00184088','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647060187','00397873','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647085960','00397246','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543720','00397627','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545335','00379424','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548369','00374263','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549472','00398635','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605541','00397806','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608585','00397846','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623488','00397878','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624059','00397933','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624647','00376779','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628134','00398077','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629294','00378872','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640383','00398115','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640549','00397668','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646018','00397505','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647648591','00397872','CHEM','1015','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649758','00378703','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649842','00397969','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660086','00398508','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660836','00398281','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661809','00193464','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662229','00397618','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662769','00397952','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664827','00398078','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665397','00397986','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647669200','00395308','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683618','00397929','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683860','00394653','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683977','00398167','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684214','00397976','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684330','00397622','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687151','00398762','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688209','00398192','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647700234','00397887','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701118','00398127','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701557','00397906','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647702784','00398053','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707386','00397961','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707390','00398297','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','649289753','00398549','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','676462357','00398833','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680288413','00378955','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680423162','00398197','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','703299710','00397661','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765140175','00398076','CHEM','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398241','00398241','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','016863464','00397744','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','099514172','00398000','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','229932432','00398542','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','465204475','00394924','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518638524','00397575','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518650988','00393924','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518653463','00397508','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519638222','00397544','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520437822','00397532','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','531513437','00397883','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','531516220','00397766','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','537457272','00377738','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575956038','00398121','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575995424','00397574','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576931691','00397881','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602310457','00397761','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602373882','00397748','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605237795','00374344','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','607291294','00397555','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608376718','00398039','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610331876','00397684','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610336108','00397767','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613298785','00397710','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613375655','00397366','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','615359430','00398181','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','618298415','00397781','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621292593','00397669','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626642039','00397675','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646546413','00397931','CHEM','1015','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646581755','00397629','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587601','00379442','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622822','00397718','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623189','00188370','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623793','00397800','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623964','00394357','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626380','00397735','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626392','00397756','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646626406','00397516','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627346','00378237','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627350','00397534','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627351','00397827','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627590','00397549','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646628836','00397591','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629024','00398124','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629342','00397742','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629344','00397546','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641332','00397554','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642722','00397728','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643068','00397568','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644935','00397548','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646647996','00397400','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648095','00397738','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648226','00397550','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646648963','00397758','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649721','00397760','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660254','00395193','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661437','00218809','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662163','00397764','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663553','00398050','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646663825','00397561','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667646','00397737','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646681062','00397577','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646681468','00397540','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646687915','00397566','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700493','00397531','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701636','00397556','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646723317','00398189','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724910','00397840','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646728611','00397678','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647529115','00378459','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544517','00397501','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566739','00397980','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585746','00397839','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587765','00391802','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600877','00393193','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647602252','00397579','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603364','00397542','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605080','00397964','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607239','00378848','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607867','00397547','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608575','00397592','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609554','00398381','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647620733','00397633','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621208','00398512','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624046','00377320','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624657','00394921','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647627818','00398054','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628118','00394967','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628126','00397762','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629098','00397587','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629791','00398432','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640389','00393938','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641418','00398136','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641648','00378243','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641650','00398786','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643051','00378256','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644026','00191879','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645944','00397975','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646024','00397536','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646991','00397634','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647648523','00397533','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660123','00397563','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660835','00397890','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661012','00398186','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663192','00397711','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665398','00397543','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647667183','00397552','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647682187','00397970','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684493','00397757','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647685606','00397765','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647686992','00397511','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689105','00397726','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689447','00397551','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701313','00397733','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647707136','00397746','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647721633','00398184','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647748151','00397545','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647762636','00397386','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647850307','00397514','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652203291','00398099','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680365122','00397510','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680381296','00379236','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680400941','00397506','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680406316','00394096','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680481407','00398178','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','714392574','00378082','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764225001','00397559','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764305997','00397537','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765101784','00378957','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765187558','00397564','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765323074','00397225','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','769148808','00397562','CHEM','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518631108','00397497','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561852','00373291','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561856','00373298','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646562459','00373285','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567080','00375782','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585595','00373292','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605001','00373301','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646621017','00397308','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642107','00397344','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649991','00394951','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660036','00315217','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540884','00373287','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543718','00373309','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581737','00373302','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587591','00373305','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628105','00397309','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642136','00397299','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644024','00394217','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647497','00397193','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680423141','00397306','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764180685','00396389','CHEM','1015','84J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398697','00398697','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398783','00398783','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','225957410','00397984','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','376272945','00398706','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','517350150','00378521','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','517354833','00398766','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519955463','00378113','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602330852','00398130','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602331572','00397945','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','606414577','00398080','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624351599','00397957','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563695','00378094','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622478','00397431','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629336','00398320','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642463','00397954','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642723','00397935','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644709','00398089','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646680289','00398764','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685532','00398322','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688775','00398328','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701470','00398248','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646702358','00398264','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724300','00398334','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564178','00397944','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605713','00397939','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607036','00398743','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621135','00398082','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623496','00398150','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624060','00397942','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642726','00398128','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662064','00379078','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647668491','00398016','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647668549','00397902','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647682456','00398105','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687750','00398083','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688150','00216715','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647701542','00397934','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647704155','00398287','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647706570','00397901','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647782466','00397946','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680428794','00397956','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680428902','00398332','CHEM','1015','D8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','215615497','00398313','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519618719','00397997','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','542611470','00398483','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','574336263','00398453','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','628780672','00397888','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646522322','00398473','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560834','00378487','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589818','00397899','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600179','00396167','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646624729','00398309','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640185','00397499','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641653','00398503','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641698','00398382','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643878','00398461','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644699','00398462','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661247','00398531','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662359','00398485','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646666285','00398484','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667019','00398505','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667971','00398385','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564053','00398433','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564977','00398342','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647564978','00398410','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565228','00397383','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566612','00390280','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647580863','00398362','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585704','00398393','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647608016','00398268','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609575','00398460','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621198','00397442','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621722','00398608','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','648581638','00398456','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680280565','00398375','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680300760','00398459','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680329817','00378714','CHEM','1015','K8J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680341042','00397915','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764202912','00398482','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765140352','00397439','CHEM','1015','K8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','074373577','00377881','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','283089809','00398205','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','351986038','00378112','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','611336324','00379516','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','619276275','00378225','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624353985','00397855','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646548869','00378226','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667643','00397847','CHEM','1110','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646680714','00397854','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684438','00397857','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684440','00398292','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685793','00397856','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700469','00397849','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647586008','00365991','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587188','00378839','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664301','00397904','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687290','00395468','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652268492','00398172','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','674622298','00397850','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360521','00378408','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764267686','00397928','CHEM','1110','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','114909280','00398043','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','163801840','00374396','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624350449','00397384','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626257488','00378984','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565482','00364755','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587707','00378777','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604146','00231907','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645969','00397316','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684070','00394187','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688239','00394189','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562571','00373971','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565194','00374371','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661867','00394897','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647667785','00390672','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680345503','00373792','CHEM','1110','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','074373577','00377881','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','283089809','00398205','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','351986038','00378112','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','611336324','00379516','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','619276275','00378225','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624353985','00397855','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646548869','00378226','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667643','00397847','CHEM','1115','80J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646680714','00397854','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684438','00397857','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684440','00398292','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685793','00397856','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700469','00397849','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647586008','00365991','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587188','00378839','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664301','00397904','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647687290','00395468','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652268492','00398172','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','674622298','00397850','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360521','00378408','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764267686','00397928','CHEM','1115','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','114909280','00398043','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','163801840','00374396','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','624350449','00397384','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626257488','00378984','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565482','00364755','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587707','00378777','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604146','00231907','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645969','00397316','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684070','00394187','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646688239','00394189','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562571','00373971','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565194','00374371','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661867','00394897','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647667785','00390672','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680345503','00373792','CHEM','1115','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647872','00373822','ENGL','2010','1SJ','I','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647872','00373822','HIST','1700','1SJ','I','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647872','00373822','MATH','1040','1SJ','I','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','172801539','00377856','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','217693995','00235893','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602279879','00397606','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','626218759','00378564','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646545428','00397653','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561494','00390555','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646561831','00377524','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565476','00397605','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584766','00234449','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587175','00390678','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603753','00397966','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604992','00378734','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608325','00397805','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647541319','00378447','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545441','00397683','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546769','00378463','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562366','00397673','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562574','00397907','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647580539','00378369','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581371','00390300','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587518','00397992','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680303405','00398280','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','723794783','00376404','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765030829','00187924','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765105692','00398073','MATH','1050','83J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','303253713','00386420','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','607257664','00398395','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646566735','00396112','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567944','00398671','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646586293','00398468','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606914','00398405','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542937','00398404','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543704','00398419','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543705','00398427','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545171','00398396','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546972','00398408','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647568724','00398695','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581403','00398435','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','651166807','00378535','MATH','1050','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','303253713','00386420','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','607257664','00398395','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646566735','00396112','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567944','00398671','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646586293','00398468','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606914','00398405','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542937','00398404','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543704','00398419','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543705','00398427','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545171','00398396','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546972','00398408','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647568724','00398695','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581403','00398435','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','651166807','00378535','MATH','1060','V8J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398174','00398174','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398288','00398288','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398778','00398778','MKTG','2550','81X','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398782','00398782','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','058928145','00398132','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','100879715','00390438','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518632708','00397503','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518675440','00398095','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520047047','00398220','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','602397956','00397853','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608255235','00374311','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608377103','00398714','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','622239686','00397631','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','637849374','00397852','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','645829230','00397785','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565475','00378708','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567427','00397778','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646567684','00398252','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646602223','00397864','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605438','00390675','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623793','00397800','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623964','00394357','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661250','00394148','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646684448','00397842','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685111','00398227','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646685160','00397814','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646686065','00397798','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646686073','00396653','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646687915','00397566','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646701636','00397556','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646724910','00397840','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646728880','00397791','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647580854','00397813','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647588254','00398161','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621321','00398091','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660942','00377897','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661012','00398186','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647661271','00397784','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662316','00397582','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665398','00397543','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647683857','00397953','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689506','00397821','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689507','00397782','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647700454','00398745','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647703837','00398093','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360421','00398296','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680445155','00397705','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680500057','00398755','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764309781','00216793','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765094002','00378079','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765228476','00398228','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','769148808','00397562','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','786572934','00378693','MKTG','2550','81X','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00188525','00188525','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00194591','00194591','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00234345','00234345','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00364558','00364558','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378098','00378098','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378127','00378127','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378130','00378130','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378139','00378139','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378158','00378158','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378171','00378171','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378234','00378234','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378290','00378290','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378346','00378346','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378433','00378433','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378722','00378722','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00397884','00397884','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398046','00398046','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','041048927','00379084','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','217595818','00366416','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','219804325','00378184','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','228916635','00378285','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','244994267','00397721','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','273067838','00361711','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','296066543','00378134','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','356988907','00378426','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','384275430','00397885','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518651410','00378091','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520418785','00379291','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520433355','00378967','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575917215','00379091','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576937221','00398120','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','604238339','00398021','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608272310','00378176','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','609331426','00397703','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','616356509','00379557','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617295132','00378716','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617298790','00375949','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','631765070','00378175','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646170181','00379405','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646525918','00398040','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646543014','00378207','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646543345','00378193','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646544931','00378511','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646549718','00398632','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646549882','00378210','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560133','00378427','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563687','00378431','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565281','00376380','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568827','00378058','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646569844','00376294','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646582669','00378099','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583682','00378203','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583683','00378339','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584150','00378737','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588718','00378344','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588832','00378056','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589986','00378169','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600881','00378536','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646601701','00397635','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646602569','00378268','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609067','00378461','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609076','00379243','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609149','00378129','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609294','00397937','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609503','00378982','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622558','00378173','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625698','00378049','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625710','00352404','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625718','00378036','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640202','00376293','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640332','00379606','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640497','00377248','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643755','00378206','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644710','00378117','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644936','00398114','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645426','00377736','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645971','00234325','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646647625','00352068','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649387','00378118','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660241','00378551','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661669','00378935','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646665418','00378979','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646668832','00378135','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647505097','00379227','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647528199','00378209','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540891','00377297','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540896','00352981','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647541428','00352829','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542476','00378178','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542911','00378170','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543404','00378340','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544641','00378571','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545335','00379424','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546559','00378350','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548360','00378349','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548367','00378437','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647561191','00378205','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647561438','00378435','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565487','00375937','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565908','00379317','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566658','00390597','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582210','00378438','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582827','00378201','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587522','00378724','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587845','00378232','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589065','00396641','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600145','00363094','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600873','00376126','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647606912','00378458','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628100','00350953','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629278','00378100','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629292','00378050','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641134','00187900','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641137','00378220','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642970','00378819','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643866','00375928','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644591','00378451','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646171','00398842','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662151','00398324','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663222','00378448','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688690','00376106','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','650164083','00378719','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','650201821','00378096','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680264403','00379111','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680265408','00378444','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680281423','00378525','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680342649','00398035','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680382905','00376128','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680407623','00379436','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680573497','00378152','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','719256456','00378257','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764071511','00379319','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764144644','00376118','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765034271','00378259','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765202643','00379038','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','768012250','00378213','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','794167042','00379377','PHYS','1010','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00216748','00216748','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00218788','00218788','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00379384','00379384','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00395932','00395932','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','145088597','00374343','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','224897708','00393918','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','229938720','00397978','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','475418482','00398759','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518632708','00397503','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519596201','00363040','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519633233','00398070','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','536496001','00378956','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543595585','00397932','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','544593391','00352211','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','574337395','00398710','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','596167579','00379308','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','603371926','00397739','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605313049','00378846','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','614357773','00395425','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','619336348','00397509','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621293376','00398012','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','622497941','00397851','PHYS','1010','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','625319070','00217386','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','640604680','00379383','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646528756','00397649','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560088','00397717','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560922','00396128','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646562232','00398229','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563198','00397358','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568740','00397815','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646580517','00378915','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646581755','00397629','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583404','00379154','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587149','00324461','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587955','00392776','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600178','00390677','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604029','00378087','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604358','00188910','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605984','00397927','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608081','00398756','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608558','00397788','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609299','00377380','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646620148','00378851','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623182','00394063','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623186','00397936','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625705','00398780','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641205','00398760','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642501','00397894','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642829','00398290','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645429','00397900','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645437','00398289','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645955','00378833','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649088','00378460','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649993','00397908','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662705','00378867','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662794','00216803','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646668501','00393945','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646683767','00394599','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700100','00395148','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540073','00378026','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647541906','00397861','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543722','00378425','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544517','00397501','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545451','00394563','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546138','00397825','PHYS','1010','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546563','00350063','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546567','00397690','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548365','00397729','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549812','00395165','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549820','00377987','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562298','00347665','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562578','00397387','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566667','00397981','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567206','00397530','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567931','00397790','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647568720','00377528','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582742','00383428','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647583491','00397435','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647584808','00398768','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647584981','00398282','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585708','00397820','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587062','00397747','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647588088','00397674','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589767','00398084','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603472','00194187','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647604783','00378928','PHYS','1010','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607033','00187903','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609220','00397955','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621661','00379332','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623495','00394468','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624648','00379100','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647626234','00398291','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647626407','00398202','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629279','00393906','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629283','00378837','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640350','00398647','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640548','00398767','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642135','00397724','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645003','00397889','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645366','00394338','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645444','00378478','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645628','00398302','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646030','00398754','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647446','00397755','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647657','00394981','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649872','00397822','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649914','00397826','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660942','00377897','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663609','00397979','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664315','00397576','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665390','00397830','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665444','00398336','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684920','00397831','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652202019','00397720','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','657567223','00378561','PHYS','1010','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','667609563','00397258','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680328712','00397679','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680368043','00204555','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680445155','00397705','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764182195','00398772','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765185376','00398741','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','786572934','00378693','PHYS','1010','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398637','00398637','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543613155','00398711','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623171','00398659','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587501','00398645','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640176','00398636','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649557','00398712','PHYS','1010','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','001658865','00398106','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00203896','00203896','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00216886','00216886','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00235884','00235884','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378781','00378781','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394093','00394093','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394704','00394704','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00396486','00396486','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00396492','00396492','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398245','00398245','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398247','00398247','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398367','00398367','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','033906536','00396975','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','145115973','00398065','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','287066006','00398104','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022593','00397404','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','412895418','00391591','PHYS','1010','88J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','481319136','00398259','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','488196377','00398262','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','489190238','00397714','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','490196254','00398386','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','490196255','00398424','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','495198336','00398008','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','508431785','00398493','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','508439179','00397903','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518610809','00352842','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519595467','00398263','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519612588','00391488','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519632079','00397763','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','535450651','00378727','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','539453141','00378815','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','539479746','00398126','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605234587','00390277','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605316959','00191491','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','609234981','00352051','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','611331083','00397951','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','612331422','00398068','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620201579','00390259','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620233235','00397495','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620251630','00397982','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','629740321','00378295','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','644702907','00398489','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646193045','00396223','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646469997','00377885','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565718','00390413','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646569467','00398013','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646582044','00378114','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583293','00397593','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584092','00397983','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585196','00373786','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589072','00391401','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603008','00390547','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604985','00216747','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606074','00398112','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646607247','00378789','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608084','00364756','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608183','00398345','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608509','00398147','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646624745','00397751','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625002','00398100','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625023','00378709','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627591','00398266','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629818','00374313','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640211','00375704','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640234','00398231','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640433','00398213','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641951','00398363','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642410','00398052','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642983','00378775','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643010','00398392','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643296','00398526','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644704','00398088','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645751','00397716','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646863','00398067','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646870','00398552','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649372','00378780','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649674','00397481','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662268','00397741','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667627','00398086','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646669132','00397977','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647080626','00398182','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647527438','00394775','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647560655','00378497','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562570','00398173','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566017','00290706','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581723','00398018','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581739','00374362','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582501','00397925','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585103','00398131','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589019','00398507','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647601645','00398522','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603366','00398097','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605129','00398554','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605483','00228150','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605539','00398059','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605550','00397712','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607477','00398206','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607678','00394980','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609472','00398118','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609552','00398087','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647620288','00398556','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647622710','00397437','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629262','00398265','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641097','00398123','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641130','00397396','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641841','00232158','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642263','00398075','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642420','00397958','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643225','00397898','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645337','00397968','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646019','00397959','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646639','00397713','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647440','00398193','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660221','00188748','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647666016','00218816','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689138','00396087','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','653189565','00398491','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','670129572','00378245','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680323939','00390600','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680345503','00373792','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360596','00397948','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680387476','00397688','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680404712','00398238','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680409611','00397754','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680424022','00397835','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680646878','00378570','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764101006','00378088','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764142297','00373072','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','805458049','00350722','PHYS','1010','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00188525','00188525','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00194591','00194591','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00234345','00234345','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00364558','00364558','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378098','00378098','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378127','00378127','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378130','00378130','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378139','00378139','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378158','00378158','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378171','00378171','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378234','00378234','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378290','00378290','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378346','00378346','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378433','00378433','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378722','00378722','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00397884','00397884','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398046','00398046','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','041048927','00379084','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','217595818','00366416','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','219804325','00378184','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','228916635','00378285','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','244994267','00397721','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','273067838','00361711','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','296066543','00378134','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','356988907','00378426','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','384275430','00397885','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518651410','00378091','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520418785','00379291','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','520433355','00378967','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','575917215','00379091','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','576937221','00398120','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','604238339','00398021','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608272310','00378176','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','609331426','00397703','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','616356509','00379557','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617295132','00378716','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617298790','00375949','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','631765070','00378175','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646170181','00379405','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646525918','00398040','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646543014','00378207','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646543345','00378193','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646544931','00378511','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646549718','00398632','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646549882','00378210','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560133','00378427','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563687','00378431','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565281','00376380','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568827','00378058','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646569844','00376294','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646582669','00378099','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583682','00378203','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583683','00378339','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584150','00378737','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588718','00378344','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646588832','00378056','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589986','00378169','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600881','00378536','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646601701','00397635','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646602569','00378268','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609067','00378461','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609076','00379243','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609149','00378129','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609294','00397937','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609503','00378982','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646622558','00378173','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625698','00378049','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625710','00352404','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625718','00378036','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640202','00376293','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640332','00379606','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640497','00377248','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643755','00378206','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644710','00378117','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644936','00398114','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645426','00377736','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645971','00234325','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646647625','00352068','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649387','00378118','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646660241','00378551','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646661669','00378935','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646665418','00378979','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646668832','00378135','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647505097','00379227','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647528199','00378209','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540891','00377297','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540896','00352981','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647541428','00352829','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542476','00378178','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647542911','00378170','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543404','00378340','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544641','00378571','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545335','00379424','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546559','00378350','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548360','00378349','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548367','00378437','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647561191','00378205','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647561438','00378435','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565487','00375937','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647565908','00379317','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566658','00390597','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582210','00378438','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582827','00378201','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587522','00378724','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587845','00378232','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589065','00396641','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600145','00363094','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647600873','00376126','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647606912','00378458','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647628100','00350953','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629278','00378100','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629292','00378050','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641134','00187900','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641137','00378220','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642970','00378819','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643866','00375928','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647644591','00378451','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646171','00398842','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662151','00398324','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663222','00378448','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647688690','00376106','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','650164083','00378719','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','650201821','00378096','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680264403','00379111','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680265408','00378444','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680281423','00378525','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680342649','00398035','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680382905','00376128','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680407623','00379436','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680573497','00378152','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','719256456','00378257','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764071511','00379319','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764144644','00376118','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765034271','00378259','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765202643','00379038','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','768012250','00378213','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','794167042','00379377','PHYS','1015','80J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00216748','00216748','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00218788','00218788','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00379384','00379384','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00395932','00395932','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','145088597','00374343','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','224897708','00393918','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','229938720','00397978','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','475418482','00398759','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518632708','00397503','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519596201','00363040','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519633233','00398070','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','536496001','00378956','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543595585','00397932','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','544593391','00352211','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','574337395','00398710','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','596167579','00379308','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','603371926','00397739','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605313049','00378846','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','614357773','00395425','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','619336348','00397509','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621293376','00398012','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','622497941','00397851','PHYS','1015','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','625319070','00217386','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','640604680','00379383','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646528756','00397649','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560088','00397717','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646560922','00396128','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646562232','00398229','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646563198','00397358','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646568740','00397815','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646580517','00378915','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646581755','00397629','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583404','00379154','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587149','00324461','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646587955','00392776','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646600178','00390677','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604029','00378087','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604358','00188910','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646605984','00397927','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608081','00398756','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608558','00397788','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646609299','00377380','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646620148','00378851','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623182','00394063','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623186','00397936','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625705','00398780','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641205','00398760','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642501','00397894','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642829','00398290','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645429','00397900','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645437','00398289','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645955','00378833','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649088','00378460','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649993','00397908','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662705','00378867','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662794','00216803','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646668501','00393945','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646683767','00394599','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646700100','00395148','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647540073','00378026','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647541906','00397861','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647543722','00378425','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647544517','00397501','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647545451','00394563','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546138','00397825','PHYS','1015','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546563','00350063','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647546567','00397690','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647548365','00397729','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549812','00395165','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647549820','00377987','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562298','00347665','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562578','00397387','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566667','00397981','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567206','00397530','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647567931','00397790','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647568720','00377528','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582742','00383428','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647583491','00397435','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647584808','00398768','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647584981','00398282','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585708','00397820','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587062','00397747','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647588088','00397674','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589767','00398084','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603472','00194187','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647604783','00378928','PHYS','1015','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607033','00187903','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609220','00397955','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647621661','00379332','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647623495','00394468','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647624648','00379100','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647626234','00398291','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647626407','00398202','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629279','00393906','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629283','00378837','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640350','00398647','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640548','00398767','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642135','00397724','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645003','00397889','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645366','00394338','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645444','00378478','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645628','00398302','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646030','00398754','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647446','00397755','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647657','00394981','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649872','00397822','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649914','00397826','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660942','00377897','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647663609','00397979','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647664315','00397576','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665390','00397830','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647665444','00398336','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647684920','00397831','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','652202019','00397720','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','657567223','00378561','PHYS','1015','81J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','667609563','00397258','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680328712','00397679','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680368043','00204555','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680445155','00397705','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764182195','00398772','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','765185376','00398741','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','786572934','00378693','PHYS','1015','81J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398637','00398637','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543613155','00398711','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646623171','00398659','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647587501','00398645','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647640176','00398636','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647649557','00398712','PHYS','1015','86J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','001658865','00398106','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00203896','00203896','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00216886','00216886','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00235884','00235884','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00378781','00378781','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394093','00394093','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394704','00394704','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00396486','00396486','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00396492','00396492','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398245','00398245','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398247','00398247','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398367','00398367','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','033906536','00396975','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','145115973','00398065','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','287066006','00398104','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','323022593','00397404','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','412895418','00391591','PHYS','1015','88J','IP','','0','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','481319136','00398259','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','488196377','00398262','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','489190238','00397714','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','490196254','00398386','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','490196255','00398424','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','495198336','00398008','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','508431785','00398493','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','508439179','00397903','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','518610809','00352842','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519595467','00398263','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519612588','00391488','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','519632079','00397763','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','535450651','00378727','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','539453141','00378815','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','539479746','00398126','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605234587','00390277','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605316959','00191491','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','609234981','00352051','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','611331083','00397951','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','612331422','00398068','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620201579','00390259','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620233235','00397495','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','620251630','00397982','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','629740321','00378295','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','644702907','00398489','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646193045','00396223','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646469997','00377885','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646565718','00390413','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646569467','00398013','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646582044','00378114','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646583293','00397593','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646584092','00397983','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646585196','00373786','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646589072','00391401','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646603008','00390547','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646604985','00216747','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646606074','00398112','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646607247','00378789','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608084','00364756','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608183','00398345','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646608509','00398147','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646624745','00397751','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625002','00398100','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646625023','00378709','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646627591','00398266','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646629818','00374313','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640211','00375704','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640234','00398231','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640433','00398213','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646641951','00398363','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642410','00398052','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646642983','00378775','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643010','00398392','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646643296','00398526','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646644704','00398088','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646645751','00397716','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646863','00398067','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646646870','00398552','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649372','00378780','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646649674','00397481','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646662268','00397741','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646667627','00398086','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646669132','00397977','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647080626','00398182','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647527438','00394775','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647560655','00378497','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647562570','00398173','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647566017','00290706','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581723','00398018','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647581739','00374362','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647582501','00397925','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647585103','00398131','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589019','00398507','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647601645','00398522','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647603366','00398097','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605129','00398554','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605483','00228150','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605539','00398059','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647605550','00397712','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607477','00398206','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647607678','00394980','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609472','00398118','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647609552','00398087','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647620288','00398556','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647622710','00397437','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647629262','00398265','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641097','00398123','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641130','00397396','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647641841','00232158','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642263','00398075','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647642420','00397958','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647643225','00397898','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647645337','00397968','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646019','00397959','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647646639','00397713','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647647440','00398193','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647660221','00188748','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647666016','00218816','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647689138','00396087','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','653189565','00398491','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','670129572','00378245','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680323939','00390600','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680345503','00373792','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680360596','00397948','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680387476','00397688','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680404712','00398238','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680409611','00397754','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680424022','00397835','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680646878','00378570','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764101006','00378088','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764142297','00373072','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','805458049','00350722','PHYS','1015','88J','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00394859','00394859','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398316','00398316','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398506','00398506','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00398623','00398623','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','327025918','00398678','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','536532818','00398510','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','603394728','00398333','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','605411342','00398315','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','608339233','00378986','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','609374107','00394583','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617294404','00379286','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','619239151','00397650','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','635882467','00379137','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646624679','00378814','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646640504','00379422','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646681476','00398233','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646686578','00398496','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646705791','00398680','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646708359','00398398','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647569775','00398384','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647589066','00378560','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647662843','00398361','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647667561','00398451','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647682896','00398925','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647686780','00398308','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647700298','00398397','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647702279','00398490','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647702962','00398467','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647704435','00398431','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680341968','00398634','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680382276','00398318','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','764240416','00398926','SPAN','3118','61','','','','','1','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','536393966','00380699','MDIA','2370R','01B','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','528750606','00305473','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','529574442','00352720','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','530854977','00352582','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','530899682','00282231','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','603237543','00352598','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','621064259','00339361','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','638368012','00326957','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','647214799','00310596','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','647228427','00218939','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','647420217','00316368','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','647465427','00380827','PHLB','1000','50','','','','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647500020','00367482','FSHD','1020','04','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646508007','00382100','NURS','1005','05','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543213207','00325266','NURS','2700','01','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','543213207','00325266','NURS','2750','01','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','626132684','00339481','COMM','2110','15B','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','230571650','00265395','CS','1400','03','I','','0','','','1','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','521856768','00304213','BIOL','4890R','03','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','530916503','00279158','CHEM','1220','01B','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','646348548','00392920','COMM','1050','01B','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','646187595','00283031','COMM','4900R','03B','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','647266188','00272845','COMM','4900R','03B','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','529916146','00061247','MGMT','4200','03','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','636460038','00245318','MGMT','4200','03','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','529916146','00061247','MGMT','4210','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','1','494865256','00264532','PSY','4800R','01A','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','528450145','00395454','ACCT','6220','01A','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646525726','00375499','BIOL','1200','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610529091','00214701','BIOL','1615','08','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680108604','00364023','BIOL','1625','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610529091','00214701','BIOL','3000R','50','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','530916503','00279158','BIOL','4810R','03','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','621044267','00323045','COMM','4980','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646243447','00265171','COMM','4980','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647346484','00294439','COMM','4980','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','747845827','00272413','COMM','4980','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680184974','00322349','CS','3020','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680184974','00322349','CS','3310','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680184974','00322349','CS','4300','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','529986660','00227971','ENGL','2010','13','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617073545','00078307','ENGL','2600','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617073545','00078307','ENGL','3030','40','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','617073545','00078307','ENGL','3720','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','00395551','00395551','ESL','2800','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','528450145','00395454','FIN','6380','01B','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610529091','00214701','HIST','1700','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646507728','00371036','MATH','0980','11','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646509540','00363512','MATH','0980','11','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','646525726','00375499','MATH','1040','51','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','680184974','00322349','MATH','1220','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647423195','00323441','MUSC','3810R','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','647055613','00255985','NURS','3100','40B','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','613486652','00380175','PHIL','1120','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','610908890','00351049','PSY','3040','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','2','530023032','00063607','PSY','3200','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','529725998','00411152','ART','2570','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','556566967','00070608','ART','2570','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','018487618','00362394','ART','3210','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','528948891','00187040','ART','3210','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','646208689','00212881','CHEM','3300','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','528378751','00109917','COMM','4900R','01B','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','00351628','00351628','DANC','1101R','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','530851031','00327857','EDUC','3110','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','622921205','00296400','ELED','3650','50','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','488867783','00284809','ENGL','3341','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','617073545','00078307','ENGL','3341','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','526615582','00323698','FILM','4980','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','646405862','00326987','HIST','1510','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','576711741','00375745','HIST','1700','41','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','492567871','00377901','HIST','4310','01','','','','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','605323607','00238616','HIST','4890','50','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','530911971','00292879','HLTH','4910','40','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','646445150','00344071','MATH','1040','41','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','647101278','00238929','MATH','1220','02','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','014789670','00199575','MATH','4900','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','647262993','00347670','MLS','4414','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','601455500','00348867','MLS','4423','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','605022547','00321398','MUSC','3540','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','530270077','00203060','MUSC','4890','03','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','396133412','00271047','NURS','4020','41','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','396133412','00271047','NURS','4600','40','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','647124614','00212573','PEHR','4600R','04','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','576711741','00375745','PHIL','1120','03','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','647542626','00388773','PHIL','2600','01','I','','0','','','','');
    INSERT INTO grade_updates_ushe VALUES ('2019','2019','3','680185225','00355285','THEA','1713','01','I','','0','','','','');
    --

    -- Insert DSU Data
    -- This query takes almost 15 minutes to run
    INSERT INTO grade_updates_dixie
    (
      SELECT DISTINCT
             dsc_pidm,
             sc_inst, 
             sc_year, 
             sc_term, 
             banner_term,
             sc_id, 
             dsc.f_get_spriden_id(dsc_pidm), -- as sc_banner_id,
             dsc_crn,
             '', -- c_program_type
             sc_crs_sbj, 
             sc_crs_num, 
             sc_crs_sec,
             sc_grade,
             swvgrde_final_grade, -- as final_grade,
             sc_earned_cr,
             swvgrde_earned_hours * 10, -- as final_earn_cr,
             '0', -- flag_ce
             '0', -- flag_perk
             '0', -- match_found
             ' '  -- notes
      FROM   dsc.dsc_swvgrde, 
             (
               SELECT * 
               FROM   bailey.student_courses@dscir 
               WHERE  sc_year = 2019 
               AND    sc_extract = 'E'
             ) s1
      WHERE  swvgrde_pidm = dsc_pidm
      AND    swvgrde_crn  = dsc_crn
      AND    sc_year = 2019 
      AND    sc_extract = 'E'
      AND    swvgrde_pidm||'||'||swvgrde_crn IN 
      (
        SELECT dsc_pidm||'||'||dsc_crn
        FROM   bailey.student_courses@dscir s2
        WHERE  sc_grade IN (' ','I','IP')
        AND    s1.dsc_term_code = s2.dsc_term_code
      )
    );
    --

    -- Sometimes there are duplicates; this query gets rid of them.
    DELETE
    FROM   grade_updates_dixie g1
    WHERE  g1.ROWID > 
           ANY (
                 SELECT g2.ROWID
                 FROM   grade_updates_dixie g2
                 WHERE  g1.sc_year = g2.sc_year
                 AND    g1.sc_term = g2.sc_term
                 AND    lpad(g1.sc_id,9,'0')      = lpad(g2.sc_id,9,'0')
                 AND    lpad(g1.sc_crs_sbj,5,'0') = lpad(g2.sc_crs_sbj,5,'0')
                 AND    lpad(g1.sc_crs_num,5,'0') = lpad(g2.sc_crs_num,5,'0')
                 AND    lpad(g1.sc_crs_sec,5,'0') = lpad(g2.sc_crs_sec,5,'0') 
               );
    --
    
    -- determine which records in the dixie table match records in the ushe table...
    UPDATE grade_updates_dixie d
    SET    d.match_found = 
           CASE WHEN EXISTS 
                     (
                       SELECT 1
                       FROM   grade_updates_ushe u
                       WHERE  d.sc_year = u.sc_year
                       AND    d.sc_term = d.sc_term
                       AND    lpad(d.sc_id,9,'0')      = lpad(u.sc_id,9,'0')
                       AND    lpad(d.sc_crs_sbj,5,'0') = lpad(u.sc_crs_sbj,5,'0')
                       AND    lpad(d.sc_crs_num,5,'0') = lpad(u.sc_crs_num,5,'0')
                       AND    lpad(d.sc_crs_sec,5,'0') = lpad(u.sc_crs_sec,5,'0')
                     )
                THEN '1' ELSE '0' END;
    --
    
    -- and vice versa.
    UPDATE grade_updates_ushe u
    SET    u.match_found = 
           CASE WHEN EXISTS 
                     (
                       SELECT 1
                       FROM   grade_updates_dixie d
                       WHERE  d.sc_year = u.sc_year
                       AND    d.sc_term = d.sc_term
                       AND    lpad(d.sc_id,9,'0')      = lpad(u.sc_id,9,'0')
                       AND    lpad(d.sc_crs_sbj,5,'0') = lpad(u.sc_crs_sbj,5,'0')
                       AND    lpad(d.sc_crs_num,5,'0') = lpad(u.sc_crs_num,5,'0')
                       AND    lpad(d.sc_crs_sec,5,'0') = lpad(u.sc_crs_sec,5,'0')
                     )
                THEN '1' ELSE '0' END;
    --
    
    -- Next:
    -- find all records that do not have a match. More often than not, the student withdrew from the
    -- class some time since concurrent enrollment was first reported.
    SELECT 'DSU' AS TBL, 
           CASE WHEN sc_term = '3' THEN sc_year  ||'20'
                WHEN sc_term = '1' THEN sc_year-1||'30'
                ELSE                    sc_year-1||'40'
                END as banner_term, sc_banner_id, sc_crs_sbj, sc_crs_num, sc_crs_sec, sc_grade, sc_earned_cr,
           sc_banner_id||sc_crs_sbj||sc_crs_num||sc_crs_sec AS eCRN
    FROM   grade_updates_dixie 
    WHERE  match_found = '0'
    UNION
    SELECT 'USHE' AS TBL, 
           CASE WHEN sc_term = '3' THEN sc_year  ||'20'
                WHEN sc_term = '1' THEN sc_year-1||'30'
                ELSE                    sc_year-1||'40'
                END as banner_term,
           sc_banner_id, sc_crs_sbj, sc_crs_num, sc_crs_sec, sc_grade, sc_earned_cr,
           sc_banner_id||sc_crs_sbj||sc_crs_num||sc_crs_sec AS eCRN
    FROM   grade_updates_ushe  
    WHERE  match_found = '0';
    -- Results:
    /*
        TABLE SC_BANNER_ID SC_CRS_SBJ SC_CRS_NUM SC_CRS_SEC SC_GRADE SC_EARNED_CR
        ----- ------------ ---------- ---------- ---------- -------- ------------
        USHE	00252423	   BIOL	      2320	     01		
        USHE	00252423	   BIOL	      2325	     02		
        USHE	00297943	   GEOG	      2000R	     01		
        USHE	00327025	   FIN	      1750	     80X		
        USHE	00352648	   DES	      1610	     80X	      IP	     0
        USHE	00352688	   CHEM	      1010	     80J	      IP	     0
        USHE	00352688	   CHEM	      1015	     80J	      IP	     0
        USHE	00352708	   BIOL	      1010	     80J	      IP	     0
        USHE	00352708	   BIOL	      1015	     80J	      IP	     0
        USHE	00353383	   PHYS	      1010	     80J	      IP     	 0
        USHE	00353383	   PHYS     	1015	     80J	      IP	     0
        USHE	00364063	   FIN	      1750	     80X		
    */

 -- Next: 
 -- the following query will look up information in the SFRSTCR table for the courses identified in 
 -- the above query; fill in the Banner ID, Course Subject, Course Number and Course Section for each 
 -- student to see if they withdrew (RSTS Codes DA, WD, DC, etc.) from the course.
 
    SELECT DISTINCT dsc.f_get_spriden_id(sc.dsc_pidm)||'-'||sc.sc_crs_sbj||'-'||sc.sc_crs_num||'-'||sc.sc_crs_sec
    FROM   sfrstcr, stvrsts, student_courses@dscir sc
    WHERE  sc.dsc_pidm   = sfrstcr_pidm
    AND    sc.dsc_crn    = sfrstcr_crn
 -- AND    sc.sc_year    = 2019
    AND    sc.sc_extract = 'E'
    AND    stvrsts_code  = sfrstcr_rsts_code
    AND    stvrsts_incl_sect_enrl = 'Y'
    AND    dsc.f_get_spriden_id(sc.dsc_pidm)||'-'||sc.sc_crs_sbj||'-'||sc.sc_crs_num||'-'||sc.sc_crs_sec IN
           (    
             SELECT sc_banner_id||'-'||sc_crs_sbj||'-'||sc_crs_num||'-'||sc_crs_sec AS eCRN
             FROM   grade_updates_dixie 
             WHERE  match_found = '0'
             UNION
             SELECT sc_banner_id||'-'||sc_crs_sbj||'-'||sc_crs_num||'-'||sc_crs_sec AS eCRN
             FROM   grade_updates_ushe  
             WHERE  match_found = '0'
           );    
    -- 
    
--    SELECT * 
--    FROM   students03@dscir s, student_courses@dscir sc
--    WHERE  s.dsc_pidm = sc.dsc_pidm AND sc.dsc_pidm = dsc.f_get_pidm('00352747')
--    AND    s.dsc_term_code = sc.dsc_term_code
--    AND    sc_year   = 2019



 -- Next:
 -- add notes to the students whose courses were dropped
 
    INSERT INTO grade_updates_dixie 
           (
             SELECT spriden_pidm, sc_inst, sc_year, sc_term, 
                    case when sc_term = '3' THEN sc_year||'20'
                         when sc_term = '2' THEN to_number(sc_year)-1||'40'
                         when sc_term = '1' THEN to_number(sc_year)-1||'30'
                         else 'error'
                         END as sc_term_code, sc_id, sc_banner_id, '00000', '0',
                    sc_crs_sbj, sc_crs_num, sc_crs_sec, sc_grade, final_grade, sc_earned_cr, 
                    final_earn_cr, flag_ce, flag_perk, '0', ' '
             FROM   grade_updates_ushe, spriden
             WHERE  spriden_id = sc_banner_id
             AND    spriden_change_ind IS NULL
             AND    match_found = '0'
           );
    --   
      
    -- Lookup missing CRN from student_courses in DSCIR for each course in dixie table.
    UPDATE grade_updates_dixie d
    SET    sc_crn = 
           (
             SELECT DISTINCT dsc_crn 
             FROM   bailey.student_courses@dscir sc
             WHERE  sc.sc_year = 2019 
             AND    sc.sc_year = d.sc_year
             AND    sc.sc_term = d.sc_term
          -- AND    lpad(d.sc_banner_id,8,'0') = lpad(dsc_id,8,'0')
             AND    lpad(d.sc_crs_sbj,5,'0')   = lpad(sc.sc_crs_sbj,5,'0')
             AND    lpad(d.sc_crs_num,5,'0')   = lpad(sc.sc_crs_num,5,'0')
             AND    lpad(d.sc_crs_sec,5,'0')   = lpad(sc.sc_crs_sec,5,'0')
           )
    WHERE sc_crn = '00000'
    OR    sc_crn IS NULL;
    
    --select distinct sc_crs_sbj, sc_crs_num, sc_crs_sec FROM student_courses@dscir WHERE sc_year = 2019 ORDER BY sc_crs_sbj, sc_crs_num, sc_crs_sec
    --
   
    -- Lookup missing program type from student_courses in DSCIR for each course in dixie table.
    UPDATE grade_updates_dixie d
    SET    c_program_type = 
           (
             SELECT DISTINCT c_program_type 
             FROM   (
                      SELECT * 
                      FROM   bailey.student_courses@dscir sc, bailey.courses@dscir c
                      WHERE  sc_year = 2019 
                      AND    sc_extract = 'E'
                      AND    sc.dsc_term_code = c.dsc_term_code
                      AND    sc.dsc_crn = c.dc_crn
                    ) x
             WHERE  d.sc_year  = x.sc_year
             AND    d.sc_term  = x.sc_term
             AND    x.dsc_crn  = d.sc_crn
             AND    x.dsc_pidm = d.sc_pidm
           );
    --
    
    -- Add notes for missing students **
    /*
    UPDATE grade_updates_dixie 
    SET    final_earn_cr = 0, 
           notes = 'Student didn''t drop/withdrawl; Final grade: Incomplete.'
    WHERE  (    (sc_banner_id = '00326970' AND sc_crn = '47789' AND match_found = '0')
             OR (sc_banner_id = '00264927' AND sc_crn = '47789' AND match_found = '0')
             OR (sc_banner_id = '00316442' AND sc_crn = '28177' AND match_found = '0')
           );
    */
    -- flag courses as concurrent enrollment where appropriate.
    UPDATE grade_updates_dixie d
    SET    flag_ce = 
           CASE WHEN EXISTS
                (
                  SELECT 1
                  FROM   (
                           SELECT sc.dsc_pidm, sc.dsc_id, sc_year, sc_term, dsc_crn, c_budget_code
                           FROM   bailey.courses@dscir c, bailey.student_courses@dscir sc
                           WHERE  c_year = 2019 
                           AND    c_extract = 'E'
                           AND    c.dsc_term_code = sc.dsc_term_code
                           AND    c.dc_crn = sc.dsc_crn
                           AND    c.c_budget_code IN ('BC','SF')
                         ) s
                  WHERE  s.sc_year  = d.sc_year 
                  AND    s.sc_term  = d.sc_term
                  AND    s.dsc_crn  = d.sc_crn
                  AND    s.dsc_pidm = d.sc_pidm
                )
                THEN '1' ELSE '0' END;
    
    -- Copy Perkins Flags from USHE's table.
    UPDATE grade_updates_dixie d
    SET    flag_perk = 
           (
             SELECT flag_perk
             FROM   grade_updates_ushe u
             WHERE  d.sc_banner_id = u.sc_banner_id
             AND    d.sc_year||d.sc_term = u.sc_year||u.sc_term
             AND    d.sc_crs_sbj = u.sc_crs_sbj
             AND    d.sc_crs_num = u.sc_crs_num
             AND    d.sc_crs_sec = u.sc_crs_sec
           );    
    
    -- Copy Concurrent Enrollment Flags from USHE's table.
    UPDATE grade_updates_dixie d
    SET    flag_ce = 
           (
             SELECT flag_ce
             FROM   grade_updates_ushe u
             WHERE  d.sc_banner_id = u.sc_banner_id
             AND    d.sc_year||d.sc_term = u.sc_year||u.sc_term
             AND    d.sc_crs_sbj = u.sc_crs_sbj
             AND    d.sc_crs_num = u.sc_crs_num
             AND    d.sc_crs_sec = u.sc_crs_sec
           );

    -- Pull the most recent grade straight from PROD view. 
    UPDATE grade_updates_dixie d
    SET    final_grade = 
           (
             SELECT swvgrde_final_grade
             FROM   dsc.dsc_swvgrde
             WHERE  swvgrde_pidm      = sc_pidm
             AND    swvgrde_crn       = sc_crn
             AND    swvgrde_term_code = sc_term_code
           );

    -- Pull the credits awarded straight from PROD view (times 10 for USHE formatting)
    UPDATE grade_updates_dixie d
    SET    final_earn_cr = 
           (
             SELECT nvl(swvgrde_earned_hours,0) * 10
             FROM   dsc.dsc_swvgrde
             WHERE  swvgrde_pidm      = sc_pidm
             AND    swvgrde_crn       = sc_crn
             AND    swvgrde_term_code = sc_term_code
           );
    
    -- Manual Fixes -----------------------------------------------------------------------------------------
    
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped never attended' WHERE sc_pidm = '253315'   AND sc_crn = '41079' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped never attended' WHERE sc_pidm = '272825'   AND sc_crn = '43169' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped never attended' WHERE sc_pidm = '253315'   AND sc_crn = '41080' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/17/18'       WHERE sc_pidm = '273189'   AND sc_crn = '43175' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/19/18'       WHERE sc_pidm = '269211'   AND sc_crn = '42383' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/17/18'       WHERE sc_pidm = '273189'   AND sc_crn = '43174' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/17/18'       WHERE sc_pidm = '273367'   AND sc_crn = '41925' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/17/18'       WHERE sc_pidm = '273367'   AND sc_crn = '41926' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'W',  notes = 'Dropped 10/19/18'       WHERE sc_pidm = '269211'   AND sc_crn = '42382' AND sc_term_code = '201840';
    
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '286721'   AND sc_crn = '21860' AND sc_term_code = '201920';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '91019265' AND sc_crn = '21860' AND sc_term_code = '201920';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '237031'   AND sc_crn = '20696' AND sc_term_code = '201920';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '57530'    AND sc_crn = '20696' AND sc_term_code = '201920';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '226093'   AND sc_crn = '22605' AND sc_term_code = '201920';
    UPDATE grade_updates_dixie SET final_earn_cr = 0, final_grade = 'AU', notes = 'Audit'                  WHERE sc_pidm = '252853'   AND sc_crn = '22497' AND sc_term_code = '201920';
  
    UPDATE grade_updates_dixie SET final_earn_cr = 30, final_grade = 'B', sc_crs_sec = 'D8J', sc_crn = '41925', notes = 'Moved to section D8J' WHERE sc_pidm = '273732' AND sc_crn = '41427' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr =  0, final_grade = 'W', sc_crs_sec = 'D8J', sc_crn = '41925', notes = 'Moved to section D8J' WHERE sc_pidm = '266994' AND sc_crn = '41427' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 30, final_grade = 'A', sc_crs_sec = 'D8J', sc_crn = '41925', notes = 'Moved to section D8J' WHERE sc_pidm = '273652' AND sc_crn = '41427' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 30, final_grade = 'C', sc_crs_sec = '80J', sc_crn = '41427', notes = 'Moved to section 80J' WHERE sc_pidm = '253056' AND sc_crn = '41925' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 10, final_grade = 'B', sc_crs_sec = 'D8J', sc_crn = '41926', notes = 'Moved to section D8J' WHERE sc_pidm = '273732' AND sc_crn = '41428' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr =  0, final_grade = 'W', sc_crs_sec = 'D8J', sc_crn = '41926', notes = 'Moved to section D8J' WHERE sc_pidm = '266994' AND sc_crn = '41428' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 10, final_grade = 'A', sc_crs_sec = 'D8J', sc_crn = '41926', notes = 'Moved to section D8J' WHERE sc_pidm = '273652' AND sc_crn = '41428' AND sc_term_code = '201840';
    UPDATE grade_updates_dixie SET final_earn_cr = 10, final_grade = 'C', sc_crs_sec = '80J', sc_crn = '41428', notes = 'Moved to section 80J' WHERE sc_pidm = '253056' AND sc_crn = '41926' AND sc_term_code = '201840';

    
    -- Error Checks -----------------------------------------------------------------------------------------
    
    -- Display Grades whose grade is not valid for Perkins and/or HS CE. 
    SELECT 'Invalid Perkins Grade' AS error, grade_updates_dixie.* 
    FROM   grade_updates_dixie 
    WHERE  flag_perk IS NOT NULL AND nvl(final_earn_cr,0) = 0
    UNION
    SELECT 'Invalid HS CE Grade' AS error, grade_updates_dixie.* 
    FROM   grade_updates_dixie 
    WHERE  flag_ce IS NOT NULL AND final_grade IN ('W','I');
    
    -- Display Grades whose credit doesn't match its grade. 
    SELECT * 
    FROM   grade_updates_dixie 
    WHERE  (final_grade NOT IN ('F','I','W','CW','AU') AND nvl(final_earn_cr,0)  = 0)
    OR     (final_grade     IN ('F','I','W','CW','AU') AND nvl(final_earn_cr,0) <> 0);
    
    -- Display Missing Grades / Credits. 
    SELECT * 
    FROM   grade_updates_dixie 
    WHERE  final_grade   IS NULL
    OR     final_earn_cr IS NULL;
    
    ---------------------------------------------------------------------------------------------------------
    
    SELECT sc_inst, sc_year, sc_term, sc_id, sc_banner_id, sc_crs_sbj, 
           sc_crs_num, sc_crs_sec, sc_grade, sc_earned_cr, 
           CASE WHEN flag_ce   = 1 THEN '1' ELSE 'NULL' END AS ce_flag, 
           CASE WHEN flag_perk = 1 THEN '1' ELSE 'NULL' END AS perk_flag, 
           notes
    FROM   (
             SELECT DISTINCT 
                    sc_inst, 
                    sc_year, 
                    sc_term, 
                    lpad(sc_id,9,0) AS sc_id, 
                    lpad(sc_banner_id,8,0) AS sc_banner_id, 
                    sc_crs_sbj, 
                    sc_crs_num, 
                    sc_crs_sec, 
                    final_grade AS sc_grade, 
                    lpad(final_earn_cr,3,0) AS sc_earned_cr, 
                    flag_ce, 
                    flag_perk, 
                    notes
             FROM   grade_updates_dixie
           );

    
   /* 
    SELECT DISTINCT d.sc_inst, d.sc_year, d.sc_term, d.sc_id, d.sc_banner_id, d.sc_crs_sbj, d.sc_crs_num, 
           d.sc_crs_sec, u.sc_grade as old_grade, d.sc_grade, d.sc_earned_cr, d.flag_ce, d.flag_perk, d.notes
    FROM   grade_updates_dixie d,
           grade_updates_ushe u
    WHERE  d.sc_year = u.sc_year
    AND    d.sc_term = u.sc_term
    AND    d.sc_banner_id = u.sc_banner_id
    AND    d.sc_crs_sbj = u.sc_crs_sbj
    AND    d.sc_crs_num = u.sc_crs_num
    AND    d.sc_crs_sec = u.sc_crs_sec;
    */
    

    -- List all changes to S_ID, SSID and Birthdate / Age
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_id' as old_label, 
           to_char(s_id) AS old_data, to_char(spbpers_ssn) AS new_data 
    FROM   students03@dscir, spbpers
    WHERE  spbpers_pidm = dsc_pidm 
    AND    s_id        != spbpers_ssn 
    AND    spbpers_ssn NOT LIKE '000%'
    AND    spbpers_ssn NOT LIKE '9%' 
    AND    length(spbpers_ssn) = 9
    AND    substr(spbpers_ssn,4,2) != '00'  
    AND    substr(spbpers_ssn,6,4) != '0000' 
    AND    s_year||s_extract = '2019E'
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_ssid' as old_label, 
           to_char(s_ssid) AS old_data, substr(goradid_additional_id,-7) AS new_data 
    FROM   students03@dscir, goradid
    WHERE  dsc_pidm = goradid_pidm (+)
    AND    goradid_adid_code = 'SSID' 
    AND    LENGTH(goradid_additional_id) BETWEEN 7 AND 9
    AND    goradid_additional_id NOT LIKE '%*%'
    AND    goradid_additional_id NOT LIKE '%.%'
    AND    substr(substr(goradid_additional_id,-7),1,1) BETWEEN 1 AND 2
    AND    substr(goradid_additional_id,-7) <> s_ssid
    AND    s_year||s_extract = '2019E'
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_first' as old_label, 
           s_first AS old_data, substr(spriden_first_name,1,15) AS new_data 
    FROM   students03@dscir, spriden
    WHERE  spriden_pidm = dsc_pidm 
    AND    s_first != substr(spriden_first_name,1,15)
    AND    spriden_change_ind IS NULL
    AND    s_year||s_extract = '2019E'  
    AND    spriden_first_name != 'Unknown'
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_last' as old_label, 
           s_last AS old_data, substr(spriden_last_name,1,25) AS new_data 
    FROM   students03@dscir, spriden
    WHERE  spriden_pidm = dsc_pidm 
    AND    s_last != substr(spriden_last_name,1,25)
    AND    spriden_change_ind IS NULL
    AND    s_year||s_extract = '2019E'  
    AND    spriden_last_name != 'Unknown'
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_gender' as old_label, 
           s_gender AS old_data, spbpers_sex AS new_data 
    FROM   students03@dscir, spbpers
    WHERE  spbpers_pidm = dsc_pidm 
    AND    s_gender != spbpers_sex
    AND    s_year||s_extract = '2019E'  
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_high_school' as old_label, 
           to_char(s_high_school) AS old_data, to_char(sorhsch_sbgi_code) AS new_data 
    FROM   students03@dscir, sorhsch
    WHERE  sorhsch.rowid = dsc.f_get_sorhsch_rowid(dsc_pidm)
    AND    to_char(s_high_school) != to_char(sorhsch_sbgi_code)          
    AND    s_year||s_extract = '2019E'  
    AND    to_char(sorhsch_sbgi_code) NOT LIKE '45999%'
    AND    to_char(sorhsch_sbgi_code) NOT IN ('969999','450406','450413','969999','960000')
    
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_birth_dt' as old_label, 
           to_char(s_birth_dt) AS old_data, to_char(spbpers_birth_date,'YYYYMMDD') AS new_data 
    FROM   students03@dscir, spbpers
    WHERE  spbpers_pidm = dsc_pidm 
    AND    s_id        != spbpers_ssn 
    AND    s_birth_dt  != to_char(spbpers_birth_date,'YYYYMMDD')
    AND    s_year||s_extract = '2019E' 
    /*
    UNION
    
    SELECT DISTINCT dsc_pidm, s_banner_id, banner_term, 's_age' as old_label, 
           to_char(s_age) AS old_data, to_char(f_calculate_age(stvterm_start_date, spbpers_birth_date, spbpers_dead_date)) AS new_data 
 -- SELECT dsc_pidm, banner_term, s_age, s_birth_dt, to_char(f_calculate_age(stvterm_start_date, spbpers_birth_date, spbpers_dead_date))
    FROM   students03@dscir, spbpers, stvterm
    WHERE  spbpers_pidm = dsc_pidm 
    AND    stvterm_code = banner_term
    AND    s_age !=  f_calculate_age(stvterm_start_date, spbpers_birth_date, spbpers_dead_date)
    AND    s_birth_dt  != to_char(spbpers_birth_date,'YYYYMMDD')
    AND    s_year||s_extract = '2019E'
    */
    ORDER BY old_label, banner_term, s_banner_id;
    
    -- select * from grade_updates_dixie where sc_banner_id = '00398299'
    -- select * from student_courses@dscir where dsc_crn = 41925 and banner_term = 201840
    -- select dsc_swvgrde.*, ssbsect_seq_numb from dsc.dsc_swvgrde, ssbsect where swvgrde_term_code = ssbsect_term_code AND swvgrde_term_code = '201840' and swvgrde_crn = ssbsect_crn and swvgrde_pidm = dsc.f_get_pidm('00398299');
 ----------------------------------------------------------------------------------------------------       
        
-- end of file
