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
        
        fun connectedBothWays'5B07_ (stop1'5B7D_, stop2'5B84_, connections'5B8B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (127, 5)); not (((RT_s_4.R_all (fn (c1'5C9E_:RT_u_Connection__3.t) => ((RT_s_4.R_all (fn (c2'5D02_:RT_u_Connection__3.t) => not (((RT_Text.equ (((RT_u_Connection__3.id1_) (c1'5C9E_)), ((RT_u_Stop__1.sId_) (stop1'5B7D_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (130, 32)); (RT_Text.equ (((RT_u_Connection__3.id2_) (c1'5C9E_)), ((RT_u_Stop__1.sId_) (stop2'5B84_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 7)); (RT_Text.equ (((RT_u_Connection__3.id1_) (c2'5D02_)), ((RT_u_Stop__1.sId_) (stop2'5B84_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 31)); RT_Text.equ (((RT_u_Connection__3.id2_) (c2'5D02_)), ((RT_u_Stop__1.sId_) (stop1'5B7D_))))))))) (connections'5B8B_)))) (connections'5B8B_)))));
        
        fun isWellformed'6275_ n'62E6_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (146, 5)); ((RT_s_2.R_all (fn (s1'640C_:RT_u_Stop__1.t) => ((RT_s_2.R_all (fn (s2'6470_:RT_u_Stop__1.t) => not ((((connectedBothWays'5B07_) (s1'640C_, s2'6470_, ((RT_u_Net__6.connections_) (n'62E6_))))))) (((RT_u_Net__6.stops_) (n'62E6_)))))) (((RT_u_Net__6.stops_) (n'62E6_))))));
        
        fun isInConn'520D_ (sId1'527A_, sId2'5280_, n'5286_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 7)); ((RT_s_4.R_exists (fn (c'52DF_:RT_u_Connection__3.t) => (((((RT_Text.equ (((RT_u_Connection__3.id1_) (c'52DF_)), sId1'527A_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 18)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'52DF_)), sId2'5280_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 36)); (((RT_Text.equ (((RT_u_Connection__3.id1_) (c'52DF_)), sId2'5280_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 56)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'52DF_)), sId1'527A_)))))) (((RT_u_Net__6.connections_) (n'5286_))))));
        
        fun stopsConnRecursive'4E25_ (sId1'4E9C_, sId2'4EA2_, connections'4EA8_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 7)); if RT_s_4.equ (connections'4EA8_, RT_s_4.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 32)); ((RT_u_Connection__3.mk_Connection_) (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0"))) else if (((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'4EA8_)))), sId1'4E9C_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (95, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'4EA8_)))), sId2'4EA2_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 13)); ((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'4EA8_)))), sId2'4EA2_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'4EA8_)))), sId1'4E9C_)))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (97, 20)); RT_s_4.R_hd((connections'4EA8_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (98, 12)); ((stopsConnRecursive'4E25_) (sId1'4E9C_, sId2'4EA2_, RT_s_4.R_diff (connections'4EA8_, RT_s_4.R_fromList ([RT_s_4.R_hd((connections'4EA8_))]))))));
        
        fun minDrivingTime'57E8_ (sId1'585B_, sId2'5861_, n'5867_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 5)); if ((isInConn'520D_) (sId1'585B_, sId2'5861_, n'5867_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 37)); ((RT_u_Connection__3.dt_) (((stopsConnRecursive'4E25_) (sId1'585B_, sId2'5861_, ((RT_u_Net__6.connections_) (n'5867_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (120, 10)); RT_Int.fromLit "0"));
        
        fun stopsRecursive'4849_ (stopId'48BC_, stops'48C4_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 7)); if (RSL.C_not RT_Text.equ) (((RT_u_Stop__1.sId_) (RT_s_2.R_hd((stops'48C4_)))), stopId'48BC_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 40)); ((stopsRecursive'4849_) (stopId'48BC_, RT_s_2.R_diff (stops'48C4_, RT_s_2.R_fromList ([RT_s_2.R_hd((stops'48C4_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 12)); RT_s_2.R_hd((stops'48C4_))));
        
        fun isIn'3F4D_ (stopId'3FB6_, n'3FBE_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (55, 7)); ((RT_s_2.R_exists (fn (s'401F_:RT_u_Stop__1.t) => (RT_Text.equ (((RT_u_Stop__1.sId_) (s'401F_)), stopId'3FB6_))) (((RT_u_Net__6.stops_) (n'3FBE_))))));
        
        fun minWaitingTime'4B68_ (stopId'4BDB_, n'4BE3_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 5)); if ((isIn'3F4D_) (stopId'4BDB_, n'4BE3_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 29)); ((RT_u_Stop__1.wt_) (((stopsRecursive'4849_) (stopId'4BDB_, ((RT_u_Net__6.stops_) (n'4BE3_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 10)); RT_Int.fromLit "0"));
        
        fun areDirectlyConnected'41A5_ (sId1'421E_, sId2'4224_, n'422A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (61, 5)); ((not ((RT_s_4.equ (((RT_u_Net__6.connections_) (n'422A_)), RT_s_4.R_fromList [])))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (62, 5)); ((RT_s_4.R_all (fn (c'433A_:RT_u_Connection__3.t) => ((((RT_Text.equ (sId1'421E_, ((RT_u_Connection__3.id1_) (c'433A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (64, 25)); RT_Text.equ (sId2'4224_, ((RT_u_Connection__3.id2_) (c'433A_)))))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 7)); ((RT_Text.equ (sId1'421E_, ((RT_u_Connection__3.id2_) (c'433A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 25)); RT_Text.equ (sId2'4224_, ((RT_u_Connection__3.id1_) (c'433A_)))))))) (((RT_u_Net__6.connections_) (n'422A_))))))));
        
        fun addConnection'3B00_ (sId1'3B72_, sId2'3B78_, c'3B7E_, dt'3B81_, n'3B85_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 5)); if not((RT_Nat.R_ge (c'3B7E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dt'3B81_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:42:4: Argument of addConnection" ^ RT_x_10.toString (sId1'3B72_, sId2'3B78_, c'3B7E_, dt'3B81_, n'3B85_) ^ " not in subtype") else if (RT_s_2.equ (((RT_u_Net__6.stops_) (n'3B85_)), RT_s_2.R_fromList [])) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 25)); RT_Text.equ (sId1'3B72_, sId2'3B78_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 42)); n'3B85_) else if (((isIn'3F4D_) (sId1'3B72_, n'3B85_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 28)); (((isIn'3F4D_) (sId2'3B78_, n'3B85_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 45)); not (((areDirectlyConnected'41A5_) (sId1'3B72_, sId2'3B78_, n'3B85_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (46, 10)); ((RT_u_Net__6.mk_Net_) (((RT_u_Net__6.stops_) (n'3B85_)), RT_s_4.R_union (((RT_u_Net__6.connections_) (n'3B85_)), RT_s_4.R_fromList ([((RT_u_Connection__3.mk_Connection_) (sId1'3B72_, sId2'3B78_, c'3B7E_, dt'3B81_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (47, 10)); n'3B85_));
        
        fun capacity'5465_ (sId1'54D2_, sId2'54D8_, n'54DE_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (109, 7)); if ((isInConn'520D_) (sId1'54D2_, sId2'54D8_, n'54DE_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (109, 39)); ((RT_u_Connection__3.c_) (((stopsConnRecursive'4E25_) (sId1'54D2_, sId2'54D8_, ((RT_u_Net__6.connections_) (n'54DE_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (111, 12)); RT_Int.fromLit "0"));
        
        fun capacity'458D_ (stopId'45FA_, n'4602_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 7)); if ((isIn'3F4D_) (stopId'45FA_, n'4602_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 31)); ((RT_u_Stop__1.c_) (((stopsRecursive'4849_) (stopId'45FA_, ((RT_u_Net__6.stops_) (n'4602_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 12)); RT_Int.fromLit "0"));
        
        val empty'3589_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList []));
        
        fun insertStop'36B4_ (id'3724_, c'3728_, wt'372B_, n'372F_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 7)); if not((RT_Nat.R_ge (c'3728_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (wt'372B_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:31:4: Argument of insertStop" ^ RT_x_9.toString (id'3724_, c'3728_, wt'372B_, n'372F_) ^ " not in subtype") else if RT_s_2.equ (((RT_u_Net__6.stops_) (n'372F_)), RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 29)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'372F_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'3724_, c'3728_, wt'372B_))])), ((RT_u_Net__6.connections_) (n'372F_))))) else if ((isIn'3F4D_) (id'3724_, n'372F_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 30)); n'372F_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (36, 12)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'372F_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'3724_, c'3728_, wt'372B_))])), ((RT_u_Net__6.connections_) (n'372F_))))));
        
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
R_coverage.mark(RT_Text.fromLit "NET.rsl", (111, 12), (112, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (109, 39), (111, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (109, 7), (112, 8));
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
R_coverage.mark(RT_Text.fromLit "NET.rsl", (120, 10), (121, 4));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (118, 37), (120, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (118, 5), (121, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 45), (96, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (95, 45), (95, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 13), (97, 18));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (98, 12), (99, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (97, 20), (98, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (94, 32), (95, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (94, 7), (99, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (104, 56), (104, 69));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (104, 18), (104, 31));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (104, 36), (104, 70));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (103, 7), (104, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (146, 5), (150, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (131, 31), (132, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (131, 7), (132, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (130, 32), (132, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (127, 5), (132, 8)));
(RSL.C_output "[t_insert_new_stop_valid] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'36B4_) (RT_Text.fromLit "b", RT_Int.fromLit "1", RT_Int.fromLit "1", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_insert_stop_empty_net] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'36B4_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "1", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_insert_stop_with_same_name] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((insertStop'36B4_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "2", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_valid_add_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'3B00_) (((RT_u_Stop__1.sId_) (s1'25D_)), ((RT_u_Stop__1.sId_) (s2'2C1_)), RT_Int.fromLit "2", RT_Int.fromLit "3", n_no_connections'6A9_)), n1'70D_)));

(RSL.C_output "[t_add_nonexisted_stopId_to_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'3B00_) (RT_Text.fromLit "a", RT_Text.fromLit "b", RT_Int.fromLit "3", RT_Int.fromLit "3", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_add_same_stopId_connection] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'3B00_) (RT_Text.fromLit "a", RT_Text.fromLit "a", RT_Int.fromLit "3", RT_Int.fromLit "3", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))));

(RSL.C_output "[t_add_flipped_stopIds] " RT_Bool.toStringSafe (fn _ => RT_u_Net__6.equ (((addConnection'3B00_) (RT_Text.fromLit "b", RT_Text.fromLit "a", RT_Int.fromLit "2", RT_Int.fromLit "3", n1'70D_)), n1'70D_)));

(RSL.C_output "[t_isin_valid] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList [])))), true)));

(RSL.C_output "[t_isin_valid_nonempty] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (RT_Text.fromLit "b", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s1'25D_, s2'2C1_]), RT_s_4.R_fromList [])))), true)));

(RSL.C_output "[t_isin_empty] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList [])))), false)));

(RSL.C_output "[t_isin_nonempty_b_not_in_stops] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (RT_Text.fromLit "a", ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList ([s2'2C1_]), RT_s_4.R_fromList [])))), false)));

(RSL.C_output "[t_are_directly_connected_a_to_b] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'41A5_) (RT_Text.fromLit "a", RT_Text.fromLit "b", n_valid_connected'901_)), true)));

(RSL.C_output "[t_are_directly_connected_b_a] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'41A5_) (RT_Text.fromLit "b", RT_Text.fromLit "a", n_valid_connected'901_)), true)));

(RSL.C_output "[t_are_directly_connected_a_to_b_to_c] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'41A5_) (RT_Text.fromLit "a", RT_Text.fromLit "c", n_valid_connected'901_)), false)));

(RSL.C_output "[t_are_directly_connected_a_to_nonexistent] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'41A5_) (RT_Text.fromLit "a", RT_Text.fromLit "h", n_valid_connected'901_)), false)));

(RSL.C_output "[t_are_directly_connected_a_to_a] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'41A5_) (RT_Text.fromLit "a", RT_Text.fromLit "a", n_valid_connected'901_)), false)));

(RSL.C_output "[t_connected_both_ways1] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((connectedBothWays'5B07_) (s1'25D_, s2'2C1_, ((RT_u_Net__6.connections_) (n_connected_both_ways'839_)))), true)));

(RSL.C_output "[t_connected_both_ways2] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((connectedBothWays'5B07_) (s1'25D_, s2'2C1_, ((RT_u_Net__6.connections_) (n2'771_)))), false)));

(RSL.C_output "[t_is_wellformed_valid] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6275_) (n2'771_)), true)));

(RSL.C_output "[t_is_wellformed_connected_both_ways] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6275_) (n_connected_both_ways'839_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
