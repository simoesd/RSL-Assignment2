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
    
structure NET =
    struct
        type Net_ = RT_u_Net__6.t;
        
        type Stop_ = RT_u_Stop__1.t;
        
        type Connection_ = RT_u_Connection__3.t;
        
        type StopId_ = RT_Text.t;
        
        type Capacity_ = RT_Nat.t;
        
        type WaitingTime_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        fun connectedBothWays'3073_ (stop1'30E9_, stop2'30F0_, connections'30F7_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (127, 5)); not (((RT_s_4.R_all (fn (c1'320A_:RT_u_Connection__3.t) => ((RT_s_4.R_all (fn (c2'326E_:RT_u_Connection__3.t) => not (((RT_Text.equ (((RT_u_Connection__3.id1_) (c1'320A_)), ((RT_u_Stop__1.sId_) (stop1'30E9_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (130, 32)); (RT_Text.equ (((RT_u_Connection__3.id2_) (c1'320A_)), ((RT_u_Stop__1.sId_) (stop2'30F0_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 7)); (RT_Text.equ (((RT_u_Connection__3.id1_) (c2'326E_)), ((RT_u_Stop__1.sId_) (stop2'30F0_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 31)); RT_Text.equ (((RT_u_Connection__3.id2_) (c2'326E_)), ((RT_u_Stop__1.sId_) (stop1'30E9_))))))))) (connections'30F7_)))) (connections'30F7_)))));
        
        fun isWellformed'37E1_ n'3852_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (146, 5)); ((RT_s_2.R_all (fn (s1'3978_:RT_u_Stop__1.t) => ((RT_s_2.R_all (fn (s2'39DC_:RT_u_Stop__1.t) => not ((((connectedBothWays'3073_) (s1'3978_, s2'39DC_, ((RT_u_Net__6.connections_) (n'3852_))))))) (((RT_u_Net__6.stops_) (n'3852_)))))) (((RT_u_Net__6.stops_) (n'3852_))))));
        
        fun isInConn'2779_ (sId1'27E6_, sId2'27EC_, n'27F2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 7)); ((RT_s_4.R_exists (fn (c'284B_:RT_u_Connection__3.t) => (((((RT_Text.equ (((RT_u_Connection__3.id1_) (c'284B_)), sId1'27E6_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 18)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'284B_)), sId2'27EC_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 36)); (((RT_Text.equ (((RT_u_Connection__3.id1_) (c'284B_)), sId2'27EC_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 56)); RT_Text.equ (((RT_u_Connection__3.id2_) (c'284B_)), sId1'27E6_)))))) (((RT_u_Net__6.connections_) (n'27F2_))))));
        
        fun stopsConnRecursive'2391_ (sId1'2408_, sId2'240E_, connections'2414_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 7)); if RT_s_4.equ (connections'2414_, RT_s_4.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 32)); ((RT_u_Connection__3.mk_Connection_) (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0"))) else if (((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'2414_)))), sId1'2408_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (95, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'2414_)))), sId2'240E_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 13)); ((RT_Text.equ (((RT_u_Connection__3.id1_) (RT_s_4.R_hd((connections'2414_)))), sId2'240E_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 45)); RT_Text.equ (((RT_u_Connection__3.id2_) (RT_s_4.R_hd((connections'2414_)))), sId1'2408_)))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (97, 20)); RT_s_4.R_hd((connections'2414_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (98, 12)); ((stopsConnRecursive'2391_) (sId1'2408_, sId2'240E_, RT_s_4.R_diff (connections'2414_, RT_s_4.R_fromList ([RT_s_4.R_hd((connections'2414_))]))))));
        
        fun minDrivingTime'2D54_ (sId1'2DC7_, sId2'2DCD_, n'2DD3_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 5)); if ((isInConn'2779_) (sId1'2DC7_, sId2'2DCD_, n'2DD3_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 37)); ((RT_u_Connection__3.dt_) (((stopsConnRecursive'2391_) (sId1'2DC7_, sId2'2DCD_, ((RT_u_Net__6.connections_) (n'2DD3_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (120, 10)); RT_Int.fromLit "0"));
        
        fun stopsRecursive'1DB5_ (stopId'1E28_, stops'1E30_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 7)); if (RSL.C_not RT_Text.equ) (((RT_u_Stop__1.sId_) (RT_s_2.R_hd((stops'1E30_)))), stopId'1E28_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (78, 40)); ((stopsRecursive'1DB5_) (stopId'1E28_, RT_s_2.R_diff (stops'1E30_, RT_s_2.R_fromList ([RT_s_2.R_hd((stops'1E30_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 12)); RT_s_2.R_hd((stops'1E30_))));
        
        fun isIn'14B9_ (stopId'1522_, n'152A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (55, 7)); ((RT_s_2.R_exists (fn (s'158B_:RT_u_Stop__1.t) => (RT_Text.equ (((RT_u_Stop__1.sId_) (s'158B_)), stopId'1522_))) (((RT_u_Net__6.stops_) (n'152A_))))));
        
        fun minWaitingTime'20D4_ (stopId'2147_, n'214F_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 5)); if ((isIn'14B9_) (stopId'2147_, n'214F_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (86, 29)); ((RT_u_Stop__1.wt_) (((stopsRecursive'1DB5_) (stopId'2147_, ((RT_u_Net__6.stops_) (n'214F_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (87, 10)); RT_Int.fromLit "0"));
        
        fun areDirectlyConnected'1711_ (sId1'178A_, sId2'1790_, n'1796_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (61, 5)); ((not ((RT_s_4.equ (((RT_u_Net__6.connections_) (n'1796_)), RT_s_4.R_fromList [])))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (62, 5)); ((RT_s_4.R_all (fn (c'18A6_:RT_u_Connection__3.t) => ((((RT_Text.equ (sId1'178A_, ((RT_u_Connection__3.id1_) (c'18A6_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (64, 25)); RT_Text.equ (sId2'1790_, ((RT_u_Connection__3.id2_) (c'18A6_)))))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 7)); ((RT_Text.equ (sId1'178A_, ((RT_u_Connection__3.id2_) (c'18A6_)))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 25)); RT_Text.equ (sId2'1790_, ((RT_u_Connection__3.id1_) (c'18A6_)))))))) (((RT_u_Net__6.connections_) (n'1796_))))))));
        
        fun addConnection'106C_ (sId1'10DE_, sId2'10E4_, c'10EA_, dt'10ED_, n'10F1_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 5)); if not((RT_Nat.R_ge (c'10EA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dt'10ED_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:42:4: Argument of addConnection" ^ RT_x_10.toString (sId1'10DE_, sId2'10E4_, c'10EA_, dt'10ED_, n'10F1_) ^ " not in subtype") else if (RT_s_2.equ (((RT_u_Net__6.stops_) (n'10F1_)), RT_s_2.R_fromList [])) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 25)); RT_Text.equ (sId1'10DE_, sId2'10E4_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (44, 42)); n'10F1_) else if (((isIn'14B9_) (sId1'10DE_, n'10F1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 28)); (((isIn'14B9_) (sId2'10E4_, n'10F1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (45, 45)); not (((areDirectlyConnected'1711_) (sId1'10DE_, sId2'10E4_, n'10F1_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (46, 10)); ((RT_u_Net__6.mk_Net_) (((RT_u_Net__6.stops_) (n'10F1_)), RT_s_4.R_union (((RT_u_Net__6.connections_) (n'10F1_)), RT_s_4.R_fromList ([((RT_u_Connection__3.mk_Connection_) (sId1'10DE_, sId2'10E4_, c'10EA_, dt'10ED_))]))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (47, 10)); n'10F1_));
        
        fun capacity'29D1_ (sId1'2A3E_, sId2'2A44_, n'2A4A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (109, 7)); if ((isInConn'2779_) (sId1'2A3E_, sId2'2A44_, n'2A4A_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (109, 39)); ((RT_u_Connection__3.c_) (((stopsConnRecursive'2391_) (sId1'2A3E_, sId2'2A44_, ((RT_u_Net__6.connections_) (n'2A4A_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (111, 12)); RT_Int.fromLit "0"));
        
        fun capacity'1AF9_ (stopId'1B66_, n'1B6E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 7)); if ((isIn'14B9_) (stopId'1B66_, n'1B6E_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (71, 31)); ((RT_u_Stop__1.c_) (((stopsRecursive'1DB5_) (stopId'1B66_, ((RT_u_Net__6.stops_) (n'1B6E_))))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 12)); RT_Int.fromLit "0"));
        
        val empty'AF5_ = ((RT_u_Net__6.mk_Net_) (RT_s_2.R_fromList [], RT_s_4.R_fromList []));
        
        fun insertStop'C20_ (id'C90_, c'C94_, wt'C97_, n'C9B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 7)); if not((RT_Nat.R_ge (c'C94_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (wt'C97_, RT_Int.fromLit "0"))) then raise RSL.RSL_exception ("NET.rsl:31:4: Argument of insertStop" ^ RT_x_9.toString (id'C90_, c'C94_, wt'C97_, n'C9B_) ^ " not in subtype") else if RT_s_2.equ (((RT_u_Net__6.stops_) (n'C9B_)), RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (33, 29)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'C9B_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'C90_, c'C94_, wt'C97_))])), ((RT_u_Net__6.connections_) (n'C9B_))))) else if ((isIn'14B9_) (id'C90_, n'C9B_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 30)); n'C9B_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (36, 12)); ((RT_u_Net__6.mk_Net_) (RT_s_2.R_union (((RT_u_Net__6.stops_) (n'C9B_)), RT_s_2.R_fromList ([((RT_u_Stop__1.mk_Stop_) (id'C90_, c'C94_, wt'C97_))])), ((RT_u_Net__6.connections_) (n'C9B_))))));
        
    end;
    
open NET;

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
RSL.print_error_count();
R_coverage.save_marked();
