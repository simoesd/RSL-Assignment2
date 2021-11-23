structure RT_Text = RT_Text;

structure RT_Nat = RT_Nat;

structure RT_x_7 =
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
    
structure RT_x_8 =
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
        datatype t = mk_Stop_ of RT_x_7.t;
        
        fun sId_ (mk_Stop_ x) = let val (i,_,_) = x in i end;
        fun c_ (mk_Stop_ x) = let val (_,i,_) = x in i end;
        fun wt_ (mk_Stop_ x) = let val (_,_,i) = x in i end;
        
        fun equ (mk_Stop_ x, mk_Stop_ y) = RT_x_7.equ (x, y);
        
        fun toString (mk_Stop_ x) = "mk_Stop" ^ (RT_x_7.toString (x));
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "Stop";
    end;
    
structure RT_s_2 = RT_Set(structure Elem = RT_u_Stop__1);

structure RT_u_Connection__3 =
    struct
        datatype t = mk_Connection_ of RT_x_8.t;
        
        fun id1_ (mk_Connection_ x) = let val (i,_,_,_) = x in i end;
        fun id2_ (mk_Connection_ x) = let val (_,i,_,_) = x in i end;
        fun c_ (mk_Connection_ x) = let val (_,_,i,_) = x in i end;
        fun dt_ (mk_Connection_ x) = let val (_,_,_,i) = x in i end;
        
        fun equ (mk_Connection_ x, mk_Connection_ y) = RT_x_8.equ (x, y);
        
        fun toString (mk_Connection_ x) = "mk_Connection" ^ (RT_x_8.toString (x));
        
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
    
structure RT_u_Net__6 =
    struct
        datatype t = mk_Net_ of RT_x_5.t;
        
        fun stops_ (mk_Net_ x) = let val (i,_) = x in i end;
        fun connections_ (mk_Net_ x) = let val (_,i) = x in i end;
        
        fun equ (mk_Net_ x, mk_Net_ y) = RT_x_5.equ (x, y);
        
        fun toString (mk_Net_ x) = "mk_Net" ^ (RT_x_5.toString (x));
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "Net";
    end;
    
structure RT_x_9 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_u_Net__6.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_u_Net__6.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_u_Net__6.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_u_Net__6.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_10 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_u_Net__6.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_u_Net__6.equ(#5 x, #5 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_u_Net__6.toString(#5 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_u_Net__6.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_11 =
    struct
        type t = RT_Text.t * RT_u_Net__6.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_u_Net__6.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_u_Net__6.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_u_Net__6.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_12 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_u_Net__6.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_u_Net__6.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_u_Net__6.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_u_Net__6.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_13 =
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
    
structure RT_x_14 =
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
    
structure RT_x_15 =
    struct
        type t = RT_u_Stop__1.t * RT_u_Stop__1.t * RT_s_4.t;
        
        fun equ (x:t, y:t) = RT_u_Stop__1.equ(#1 x, #1 y) andalso 
                             RT_u_Stop__1.equ(#2 x, #2 y) andalso 
                             RT_s_4.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_u_Stop__1.toString(#1 x )) ^ "," ^
                             (RT_u_Stop__1.toString(#2 x )) ^ "," ^
                             (RT_s_4.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_u_Stop__1.typeToString ()) ^ " >< " ^
                              (RT_u_Stop__1.typeToString ()) ^ " >< " ^
                              (RT_s_4.typeToString ()) ^
                              ")";
    end;
    
structure NETTEST =
    struct
        type Net_ = RT_u_Net__6.t;
        
        type Stop_ = RT_u_Stop__1.t;
        
        type Connection_ = RT_u_Connection__3.t;
        
        type StopId_ = RT_Text.t;
        
        type Capacity_ = RT_Nat.t;
        
        type WaitingTime_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        fun connectedBothWays'7213_ (stop1'7289_, stop2'7290_, connections'7297_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (128, 5)); not (((RT_s_4.R_all (fn (c1'73AA_:RT_u_Connection__3.t) => ((RT_s_4.R_all (fn (c2'740E_:RT_u_Connection__3.t) => not (((RT_Text.equ (((RT_u_Connection__3.id1_) (c1'73AA_)), ((RT_u_Stop__1.sId_) (stop1'7289_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 32)); (RT_Text.equ (((RT_u_Connection__3.id2_) (c1'73AA_)), ((RT_u_Stop__1.sId_) (stop2'7290_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (132, 7)); (RT_Text.equ (((RT_u_Connection__3.id1_) (c2'740E_)), ((RT_u_Stop__1.sId_) (stop2'7290_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (132, 31)); RT_Text.equ (((RT_u_Connection__3.id2_) (c2'740E_)), ((RT_u_Stop__1.sId_) (stop1'7289_))))))))) (connections'7297_)))) (connections'7297_)))));
        
        fun isWellformed'7981_ n'79F2_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (147, 5)); ((RT_s_2.R_all (fn (s1'7B18_:RT_u_Stop__1.t) => ((RT_s_2.R_all (fn (s2'7B7C_:RT_u_Stop__1.t) => not ((((connectedBothWays'7213_) (s1'7B18_, s2'7B7C_, ((RT_u_Net__6.connections_) (n'79F2_))))))) (((RT_u_Net__6.stops_) (n'79F2_)))))) (((RT_u_Net__6.stops_) (n'79F2_))))));
        
        fun isInConn'6919_ (sId1'6986_, sId2'698C_, n'6992_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 7)); ((RT_s_4.R_exists (fn (c'69EB_:RT_u_Connection__3.t) => (((((RT_Text.equ (((RT_u_Connection__3.id1_) (c'69EB_)), sId1'6986_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (105, 18)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'69EB_)), sId2'698C_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (105, 36)); (((RT_Text.equ (((RT_u_Connection__3.id1_) (c'69EB_)), sId2'698C_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (105, 56)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'69EB_)), sId1'6986_)))))) (((RT_u_Net__6.connections_) (n'6992_))))));
        
        fun stopsConnRecursive'64CD_ (sId1'6544_, sId2'654A_, connections'6550_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 7)); if RT_s_4.equ (connections'6550_, RT_s_4.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 32)); ((RT_u_Connection__3.mk_Connection_) (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0"))) else if (((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'6550_)))), sId1'6544_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (95, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'6550_)))), sId2'654A_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 13)); ((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'6550_)))), sId2'654A_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'6550_)))), sId1'6544_)))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (97, 20)); RT_s_4.R_hd((connections'6550_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (98, 12)); ((stopsConnRecursive'64CD_) (sId1'6544_, sId2'654A_, RT_s_4.R_diff (connections'6550_, RT_s_4.R_fromList ([RT_s_4.R_hd((connections'6550_))]))))));
        
        fun minDrivingTime'6EF4_ (sId1'6F67_, sId2'6F6D_, n'6F73_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (119, 5)); if ((isInConn'6919_) (sId1'6F67_, sId2'6F6D_, n'6F73_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (119, 37)); ((RT_u_Connection__3.dt_) (((stopsConnRecursive'64CD_) (sId1'6F67_, sId2'6F6D_, ((RT_u_Net__6.connections_) (n'6F73_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (121, 10)); RT_Int.fromLit "0"));
        
        fun stopsRecursive'5EF1_ (stopId'5F64_, stops'5F6C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 7)); if (RSL.C_not RT_Text.equ) (((RT_u_Stop__1.sId_) (RT_s_2.R_hd((stops'5F6C_)))), stopId'5F64_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 40)); ((stopsRecursive'5EF1_) (stopId'5F64_, RT_s_2.R_diff (stops'5F6C_, RT_s_2.R_fromList ([RT_s_2.R_hd((stops'5F6C_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 12)); RT_s_2.R_hd((stops'5F6C_))));
        
        fun isIn'55F5_ (stopId'565E_, n'5666_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (55, 7)); ((RT_s_2.R_exists (fn (s'56C7_:RT_u_Stop__1.t) => (RT_Text.equ (((RT_u_Stop__1.sId_) (s'56C7_)), stopId'565E_))) (((RT_u_Net__6.stops_) (n'5666_))))));
        
        fun minWaitingTime'6210_ (stopId'6283_, n'628B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 5)); if ((isIn'55F5_) (stopId'6283_, n'628B_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 29)); ((RT_u_Stop__1.wt_) (((stopsRecursive'5EF1_) (stopId'6283_, ((RT_u_Net__6.stops_) (n'628B_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 10)); RT_Int.fromLit "0"));
        
        fun areDirectlyConnected'584D_ (sId1'58C6_, sId2'58CC_, n'58D2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (61, 5)); ((not ((RT_s_4.equ (((RT_u_Net__6.connections_) (n'58D2_)), RT_s_4.R_fromList [])))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (62, 5)); ((RT_s_4.R_all (fn (c'59E2_:RT_u_Connection__3.t) => ((((RT_Text.equ (sId1'58C6_, ((RT_u_Connection__3.id1_) (c'59E2_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (64, 25)); RT_Text.equ (sId2'58CC_, ((RT_u_Connection__3.id2_) (c'59E2_)))))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 7)); ((RT_Text.equ (sId1'58C6_, ((RT_u_Connection__3.id2_) (c'59E2_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 25)); RT_Text.equ (sId2'58CC_, ((RT_u_Connection__3.id1_) (c'59E2_)))))))) (((RT_u_Net__6.connections_) (n'58D2_))))))));
        
        fun addConnection'51A8_ (sId1'521A_, sId2'5220_, c'5226_, dt'5229_, n'522D_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 5)); if not((RT_Nat.R_ge (c'5226_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dt'5229_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:42:4: Argument of addConnection" ^ RT_x_10.toString (sId1'521A_, sId2'5220_, c'5226_, dt'5229_, n'522D_) ^ " not in subtype") else if (RT_s_2.equ (((RT_u_Net__6.stops_) (n'522D_)), RT_s_2.R_fromList [])) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 25)); RT_Text.equ (sId1'521A_, sId2'5220_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 42)); n'522D_) else if (((isIn'55F5_) (sId1'521A_, n'522D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 28)); (((isIn'55F5_) (sId2'5220_, n'522D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 45)); not (((areDirectlyConnected'584D_) (sId1'521A_, sId2'5220_, n'522D_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (46, 10)); ((RT_u_Net__6.mk_Net_) (((RT_u_Net__6.stops_) (n'522D_)), RT_s_4.R_union (((RT_u_Net__6.connections_) (n'522D_)), RT_s_4.R_fromList ([((RT_u_Connection__3.mk_Connection_) (sId1'521A_, sId2'5220_, c'5226_, dt'5229_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (47, 10)); n'522D_));
        
        fun capacity'6B71_ (sId1'6BDE_, sId2'6BE4_, n'6BEA_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (110, 7)); if ((isInConn'6919_) (sId1'6BDE_, sId2'6BE4_, n'6BEA_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (110, 39)); ((RT_u_Connection__3.c_) (((stopsConnRecursive'64CD_) (sId1'6BDE_, sId2'6BE4_, ((RT_u_Net__6.connections_) (n'6BEA_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (112, 12)); RT_Int.fromLit "0"));
        
        fun capacity'5C35_ (stopId'5CA2_, n'5CAA_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 7)); if ((isIn'55F5_) (stopId'5CA2_, n'5CAA_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 31)); ((RT_u_Stop__1.c_) (((stopsRecursive'5EF1_) (stopId'5CA2_, ((RT_u_Net__6.stops_) (n'5CAA_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 12)); RT_Int.fromLit "0"));
        
        val empty'4C31_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList []));
        
        fun insertStop'4D5C_ (id'4DCC_, c'4DD0_, wt'4DD3_, n'4DD7_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 7)); if not((RT_Nat.R_ge (c'4DD0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (wt'4DD3_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:31:4: Argument of insertStop" ^ RT_x_9.toString (id'4DCC_, c'4DD0_, wt'4DD3_, n'4DD7_) ^ " not in subtype") else if RT_s_2.equ (((RT_u_Net__6.stops_) (n'4DD7_)), RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 29)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'4DD7_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'4DCC_, c'4DD0_, wt'4DD3_))])), ((RT_u_Net__6.connections_) (n'4DD7_))))) else if ((isIn'55F5_) (id'4DCC_, n'4DD7_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 30)); n'4DD7_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (36, 12)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'4DD7_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'4DCC_, c'4DD0_, wt'4DD3_))])), ((RT_u_Net__6.connections_) (n'4DD7_))))));
        
        val s3'325_ = ((RT_u_Stop__1.mk_Stop_) (RT_Text.fromLit "c", RT_Int.fromLit "1", RT_Int.fromLit "1"));
        
        val s2'2C1_ = ((RT_u_Stop__1.mk_Stop_) (RT_Text.fromLit "b", RT_Int.fromLit "1", RT_Int.fromLit "1"));
        
        val c4'5E1_ = ((RT_u_Connection__3.mk_Connection_) (((RT_u_Stop__1.sId_) (s2'2C1_)), ((RT_u_Stop__1.sId_) (s3'325_)), RT_Int.fromLit "2", RT_Int.fromLit "2"));
        
        val s1'25D_ = ((RT_u_Stop__1.mk_Stop_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "1"));
        
        val c1'4B5_ = ((RT_u_Connection__3.mk_Connection_) (((RT_u_Stop__1.sId_) (s1'25D_)), ((RT_u_Stop__1.sId_) (s2'2C1_)), RT_Int.fromLit "2", RT_Int.fromLit "3"));
        
        val n_valid_connected'901_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_, s3'325_]), RT_s_4.R_fromList ([c1'4B5_, c4'5E1_])));
        
        val s3_inv_same_s1'389_ = ((RT_u_Stop__1.mk_Stop_) (RT_Text.fromLit "a", RT_Int.fromLit "2", RT_Int.fromLit "1"));
        
        val n_no_connections'6A9_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList []));
        
        val c2'519_ = ((RT_u_Connection__3.mk_Connection_) (((RT_u_Stop__1.sId_) (s2'2C1_)), ((RT_u_Stop__1.sId_) (s1'25D_)), RT_Int.fromLit "3", RT_Int.fromLit "3"));
        
        val n1'70D_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList ([c1'4B5_])));
        
        val c3'57D_ = ((RT_u_Connection__3.mk_Connection_) (((RT_u_Stop__1.sId_) (s1'25D_)), ((RT_u_Stop__1.sId_) (s3'325_)), RT_Int.fromLit "2", RT_Int.fromLit "2"));
        
        val n2'771_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_, s3'325_]), RT_s_4.R_fromList ([c1'4B5_, c3'57D_])));
        
        val n_connected_both_ways'839_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList ([c1'4B5_, c2'519_])));
        
    end;
    
open NETTEST;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NET.rsl", (36, 12), (37, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (35, 30), (36, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (33, 29), (35, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (33, 7), (37, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (72, 12), (73, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (71, 31), (72, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (71, 7), (73, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (112, 12), (113, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (110, 39), (112, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (110, 7), (113, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (45, 45), (46, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (45, 28), (46, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (44, 25), (44, 40));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (47, 10), (48, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (46, 10), (47, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (44, 42), (45, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (44, 5), (51, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (65, 25), (65, 38));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (64, 25), (64, 38));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (65, 7), (65, 39));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (62, 5), (66, 6));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (61, 5), (66, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (87, 10), (88, 4));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (86, 29), (87, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (86, 5), (88, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (55, 7), (55, 64));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (79, 12), (80, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (78, 40), (79, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (78, 7), (80, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (121, 10), (122, 4));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (119, 37), (121, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (119, 5), (122, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 45), (96, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (95, 45), (95, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 13), (97, 18));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (98, 12), (99, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (97, 20), (98, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (94, 32), (95, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (94, 7), (99, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (105, 56), (105, 69));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (105, 18), (105, 31));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (105, 36), (105, 70));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (104, 7), (105, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (147, 5), (151, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (132, 31), (133, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (132, 7), (133, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (131, 32), (133, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (128, 5), (133, 8)));
(RSL.C_output "[t_insert_new_stop_valid] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'4D5C_) (RT_Text.fromLit "b", RT_Int.fromLit "1", RT_Int.fromLit "1", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_insert_stop_empty_net] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'4D5C_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "1", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_insert_stop_with_same_name] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'4D5C_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "2", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_valid_add_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'51A8_) (((RT_u_Stop__1.sId_) (s1'25D_)), ((RT_u_Stop__1.sId_) (s2'2C1_)), RT_Int.fromLit "2", RT_Int.fromLit "3", n_no_connections'6A9_)), n1'70D_)));

(RSL.C_output "[t_add_nonexisted_stopId_to_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'51A8_) (RT_Text.fromLit "a", RT_Text.fromLit "b", RT_Int.fromLit "3", RT_Int.fromLit "3", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_add_same_stopId_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'51A8_) (RT_Text.fromLit "a", RT_Text.fromLit "a", RT_Int.fromLit "3", RT_Int.fromLit "3", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_add_flipped_stopIds] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'51A8_) (RT_Text.fromLit "b", RT_Text.fromLit "a", RT_Int.fromLit "2", RT_Int.fromLit "3", n1'70D_)), n1'70D_)));

(RSL.C_output "[t_isin_valid] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'55F5_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), true)));

(RSL.C_output "[t_isin_valid_nonempty] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'55F5_) (RT_Text.fromLit "b", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList [])))), true)));

(RSL.C_output "[t_isin_empty] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'55F5_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList [])))), false)));

(RSL.C_output "[t_isin_nonempty_b_not_in_stops] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'55F5_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s2'2C1_]), RT_s_4.R_fromList [])))), false)));

(RSL.C_output "[t_are_directly_connected_a_to_b] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'584D_) (RT_Text.fromLit "a", RT_Text.fromLit "b", n_valid_connected'901_)), true)));

(RSL.C_output "[t_are_directly_connected_b_a] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'584D_) (RT_Text.fromLit "b", RT_Text.fromLit "a", n_valid_connected'901_)), true)));

(RSL.C_output "[t_are_directly_connected_a_to_b_to_c] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'584D_) (RT_Text.fromLit "a", RT_Text.fromLit "c", n_valid_connected'901_)), false)));

(RSL.C_output "[t_are_directly_connected_a_to_nonexistent] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'584D_) (RT_Text.fromLit "a", RT_Text.fromLit "h", n_valid_connected'901_)), false)));

(RSL.C_output "[t_are_directly_connected_a_to_a] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'584D_) (RT_Text.fromLit "a", RT_Text.fromLit "a", n_valid_connected'901_)), false)));

(RSL.C_output "[valid_capacity_a] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'5C35_) (RT_Text.fromLit "a", n_valid_connected'901_)), RT_Int.fromLit "1")));

(RSL.C_output "[valid_capacity_c] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'5C35_) (RT_Text.fromLit "c", n_valid_connected'901_)), RT_Int.fromLit "1")));

(RSL.C_output "[capacity_non_existent] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'5C35_) (RT_Text.fromLit "h", n_valid_connected'901_)), RT_Int.fromLit "0")));

(RSL.C_output "[valid_minWaitingTime_a] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minWaitingTime'6210_) (RT_Text.fromLit "a", n_valid_connected'901_)), RT_Int.fromLit "1")));

(RSL.C_output "[valid_minWaitingTime_c] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minWaitingTime'6210_) (RT_Text.fromLit "c", n_valid_connected'901_)), RT_Int.fromLit "1")));

(RSL.C_output "[minWaitingTime_non_existent] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minWaitingTime'6210_) (RT_Text.fromLit "h", n_valid_connected'901_)), RT_Int.fromLit "0")));

(RSL.C_output "[t_isInConn_valid] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isInConn'6919_) (RT_Text.fromLit "a", RT_Text.fromLit "b", n_valid_connected'901_)), true)));

(RSL.C_output "[t_isInConn_valid_reverse] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isInConn'6919_) (RT_Text.fromLit "b", RT_Text.fromLit "a", n_valid_connected'901_)), true)));

(RSL.C_output "[t_isInConn_invalid_a_non_existing] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isInConn'6919_) (RT_Text.fromLit "a", RT_Text.fromLit "h", n_valid_connected'901_)), false)));

(RSL.C_output "[t_valid_capacity_a_b] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'6B71_) (RT_Text.fromLit "a", RT_Text.fromLit "b", n_valid_connected'901_)), RT_Int.fromLit "2")));

(RSL.C_output "[t_valid_capacity_b_a] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'6B71_) (RT_Text.fromLit "b", RT_Text.fromLit "a", n_valid_connected'901_)), RT_Int.fromLit "2")));

(RSL.C_output "[t_valid_capacity_b_c] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'6B71_) (RT_Text.fromLit "b", RT_Text.fromLit "c", n_valid_connected'901_)), RT_Int.fromLit "2")));

(RSL.C_output "[t_capacity_a_non_existent] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'6B71_) (RT_Text.fromLit "a", RT_Text.fromLit "h", n_valid_connected'901_)), RT_Int.fromLit "0")));

(RSL.C_output "[t_valid_minDrivingTime_a_b] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'6EF4_) (RT_Text.fromLit "a", RT_Text.fromLit "b", n_valid_connected'901_)), RT_Int.fromLit "3")));

(RSL.C_output "[t_valid_minDrivingTime_b_a] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'6EF4_) (RT_Text.fromLit "b", RT_Text.fromLit "a", n_valid_connected'901_)), RT_Int.fromLit "3")));

(RSL.C_output "[t_valid_minDrivingTime_b_c] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'6EF4_) (RT_Text.fromLit "b", RT_Text.fromLit "c", n_valid_connected'901_)), RT_Int.fromLit "2")));

(RSL.C_output "[t_minDrivingTime_a_non_existent] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'6EF4_) (RT_Text.fromLit "a", RT_Text.fromLit "h", n_valid_connected'901_)), RT_Int.fromLit "0")));

(RSL.C_output "[t_connected_both_ways1] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((connectedBothWays'7213_) (s1'25D_, s2'2C1_, ((RT_u_Net__6.connections_) (n_connected_both_ways'839_)))), true)));

(RSL.C_output "[t_connected_both_ways2] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((connectedBothWays'7213_) (s1'25D_, s2'2C1_, ((RT_u_Net__6.connections_) (n2'771_)))), false)));

(RSL.C_output "[t_is_wellformed_valid] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'7981_) (n2'771_)), true)));

(RSL.C_output "[t_is_wellformed_connected_both_ways] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'7981_) (n_connected_both_ways'839_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
