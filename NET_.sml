structure RT_Text = RT_Text;

structure RT_Nat = RT_Nat;

structure RT_x_6 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_7 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_u_Stop__1 =
    struct
        datatype t = mk_Stop_ of RT_x_6.t;
        
        fun sId_ (mk_Stop_ x) = let val (i,_,_) = x in i end;
        fun c_ (mk_Stop_ x) = let val (_,i,_) = x in i end;
        fun wt_ (mk_Stop_ x) = let val (_,_,i) = x in i end;
        
        fun equ (mk_Stop_ x, mk_Stop_ y) = RT_x_6.equ (x, y);
        
        fun toString (mk_Stop_ x) = "mk_Stop" ^ (RT_x_6.toString (x));
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "Stop";
    end;
    
structure RT_s_2 = RT_Set(structure Elem = RT_u_Stop__1);

structure RT_u_Connection__3 =
    struct
        datatype t = mk_Connection_ of RT_x_7.t;
        
        fun id1_ (mk_Connection_ x) = let val (i,_,_,_) = x in i end;
        fun id2_ (mk_Connection_ x) = let val (_,i,_,_) = x in i end;
        fun c_ (mk_Connection_ x) = let val (_,_,i,_) = x in i end;
        fun dt_ (mk_Connection_ x) = let val (_,_,_,i) = x in i end;
        
        fun equ (mk_Connection_ x, mk_Connection_ y) = RT_x_7.equ (x, y);
        
        fun toString (mk_Connection_ x) = "mk_Connection" ^ (RT_x_7.toString (x));
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "Connection";
    end;
    
structure RT_s_4 = RT_Set(structure Elem = RT_u_Connection__3);

structure RT_x_5 =
    struct
        type t = RT_s_2.t * RT_s_4.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_4.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_4.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_8 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_x_5.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_x_5.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_9 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_x_5.equ(#5 x, #5 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_x_5.toString(#5 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_10 =
    struct
        type t = RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_11 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_12 =
    struct
        type t = RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_13 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_4.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_4.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_4.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_4.typeToString ()) ^
                              ")";
    end;
    
structure NET =
    struct
        type Net_ = RT_x_5.t;
        
        type Stop_ = RT_u_Stop__1.t;
        
        type Connection_ = RT_u_Connection__3.t;
        
        type StopId_ = RT_Text.t;
        
        type Capacity_ = RT_Nat.t;
        
        type WaitingTime_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        fun isInConn'2139_ (sId1'21A6_, sId2'21AC_, (stops'21B3_, connections'21BA_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 7)); ((RT_s_4.R_exists (fn (c'220B_:RT_u_Connection__3.t) => (((((RT_Text.equ (((RT_u_Connection__3.id1_) (c'220B_)), sId1'21A6_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 76)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'220B_)), sId2'21AC_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 94)); (((RT_Text.equ (((RT_u_Connection__3.id1_) (c'220B_)), sId2'21AC_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (88, 14)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'220B_)), sId1'21A6_)))))) (connections'21BA_))));
        
        fun stopsConnRecursive'1FA9_ (sId1'2020_, sId2'2026_, stops'202C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (82, 46)); if (((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((stops'202C_)))), sId1'2020_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (82, 75)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((stops'202C_)))), sId2'2026_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (83, 1)); ((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((stops'202C_)))), sId2'2026_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (83, 27)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((stops'202C_)))), sId1'2020_)))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (83, 10)); ((stopsConnRecursive'1FA9_) (sId1'2020_, sId2'2026_, RT_s_4.R_diff (stops'202C_, RT_s_4.R_fromList ([RT_s_4.R_hd((stops'202C_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (83, 67)); RT_s_4.R_hd((stops'202C_))));
        
        fun minDrivingTime'2520_ (sId1'2593_, sId2'2599_, (stops'25A0_, connections'25A7_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 56)); if ((isInConn'2139_) (sId1'2593_, sId2'2599_, (stops'25A0_, connections'25A7_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (97, 7)); ((RT_u_Connection__3.dt_) (((stopsConnRecursive'1FA9_) (sId1'2593_, sId2'2599_, connections'25A7_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (97, 60)); RT_Int.fromLit "0"));
        
        fun stopsRecursive'1C25_ (stopId'1C98_, stops'1CA0_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (73, 38)); if (RSL.C_not RT_Text.equ) (((RT_u_Stop__1.sId_) (RT_s_2.R_hd((stops'1CA0_)))), stopId'1C98_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (73, 71)); ((stopsRecursive'1C25_) (stopId'1C98_, RT_s_2.R_diff (stops'1CA0_, RT_s_2.R_fromList ([RT_s_2.R_hd((stops'1CA0_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (74, 20)); RT_s_2.R_hd((stops'1CA0_))));
        
        fun isIn'151D_ (stopId'1586_, (stops'158F_, connections'1596_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (56, 7)); ((RT_s_2.R_exists (fn (s'15EF_:RT_u_Stop__1.t) => (RT_Text.equ (((RT_u_Stop__1.sId_) (s'15EF_)), stopId'1586_))) (stops'158F_))));
        
        fun minWaitingTime'1E18_ (stopId'1E8B_, (stops'1E94_, connections'1E9B_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 52)); if ((isIn'151D_) (stopId'1E8B_, (stops'1E94_, connections'1E9B_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 95)); ((RT_u_Stop__1.wt_) (((stopsRecursive'1C25_) (stopId'1E8B_, stops'1E94_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 34)); RT_Int.fromLit "0"));
        
        fun areDirectlyConnected'1775_ (id1'17EE_, id2'17F3_, (stops'17F9_, connections'1800_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (62, 5)); ((RT_s_4.R_exists (fn (c'18A8_:RT_u_Connection__3.t) => (RT_Text.equ (id1'17EE_, ((RT_u_Connection__3.id1_) (c'18A8_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (64, 43)); RT_Text.equ (id2'17F3_, ((RT_u_Connection__3.id2_) (c'18A8_))))) (connections'1800_))));
        
        fun addConnection'106C_ (id1'10DE_, id2'10E3_, c'10E8_, dt'10EB_, (stops'10F0_, connections'10F7_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 5)); if not((RT_Nat.R_ge (c'10E8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dt'10EB_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:42:4: Argument of addConnection" ^ RT_x_9.toString (id1'10DE_, id2'10E3_, c'10E8_, dt'10EB_, (stops'10F0_, connections'10F7_)) ^ " not in subtype") else if RT_s_2.equ (stops'10F0_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 24)); (stops'10F0_, connections'10F7_)) else if (((isIn'151D_) (id1'10DE_, (stops'10F0_, connections'10F7_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 46)); (((isIn'151D_) (id2'10E3_, (stops'10F0_, connections'10F7_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (46, 22)); not (((areDirectlyConnected'1775_) (id1'10DE_, id2'10E3_, (stops'10F0_, connections'10F7_)))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (47, 10)); (stops'10F0_, RT_s_4.R_union (connections'10F7_, RT_s_4.R_fromList ([((RT_u_Connection__3.mk_Connection_) (id1'10DE_, id2'10E3_, c'10E8_, dt'10EB_))])))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (48, 10)); (stops'10F0_, connections'10F7_)));
        
        fun capacity'232D_ (sId1'239A_, sId2'23A0_, (stops'23A7_, connections'23AE_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (91, 51)); if ((isInConn'2139_) (sId1'239A_, sId2'23A0_, (stops'23A7_, connections'23AE_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (92, 2)); ((RT_u_Connection__3.c_) (((stopsConnRecursive'1FA9_) (sId1'239A_, sId2'23A0_, connections'23AE_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (92, 54)); RT_Int.fromLit "0"));
        
        fun capacity'1A95_ (stopId'1B02_, (stops'1B0B_, connections'1B12_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 47)); if ((isIn'151D_) (stopId'1B02_, (stops'1B0B_, connections'1B12_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 90)); ((RT_u_Stop__1.c_) (((stopsRecursive'1C25_) (stopId'1B02_, stops'1B0B_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (70, 28)); RT_Int.fromLit "0"));
        
        val empty'B59_ = (RT_s_2.R_fromList [], RT_s_4.R_fromList []);
        
        fun insertStop'C85_ (id'CF4_, c'CF8_, wt'CFB_, (stops'D00_, connections'D07_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (34, 7)); if not((RT_Nat.R_ge (c'CF8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (wt'CFB_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:32:5: Argument of insertStop" ^ RT_x_8.toString (id'CF4_, c'CF8_, wt'CFB_, (stops'D00_, connections'D07_)) ^ " not in subtype") else if RT_s_2.equ (stops'D00_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (34, 26)); (RT_s_2.R_union (stops'D00_, RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'CF4_, c'CF8_, wt'CFB_))])), connections'D07_)) else if ((isIn'151D_) (id'CF4_, (stops'D00_, connections'D07_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 49)); (stops'D00_, connections'D07_)) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (36, 12)); (RT_s_2.R_union (stops'D00_, RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'CF4_, c'CF8_, wt'CFB_))])), connections'D07_)));
        
    end;
    
open NET;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NET.rsl", (36, 12), (37, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (35, 49), (36, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (34, 26), (35, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (34, 7), (37, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (70, 28), (70, 30));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (69, 90), (70, 26));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (69, 47), (70, 33));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (92, 54), (92, 56));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (92, 2), (92, 52));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (91, 51), (92, 59));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (46, 22), (47, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (45, 46), (47, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (48, 10), (49, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (47, 10), (48, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (44, 24), (45, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (44, 5), (52, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (64, 43), (65, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (62, 5), (65, 6));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (79, 34), (79, 36));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (78, 95), (79, 32));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (78, 52), (79, 39));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (56, 7), (56, 61));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (74, 20), (74, 30));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (73, 71), (74, 18));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (73, 38), (74, 33));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (97, 60), (97, 62));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (97, 7), (97, 58));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 56), (103, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (83, 27), (83, 48));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (82, 75), (82, 96));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (83, 1), (83, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (83, 67), (83, 77));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (83, 10), (83, 65));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (82, 46), (83, 80));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (88, 14), (88, 27));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (87, 76), (87, 89));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (87, 94), (88, 28));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (87, 7), (88, 30)));
RSL.print_error_count();
R_coverage.save_marked();
