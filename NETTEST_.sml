structure RT_Text = RT_Text;

structure RT_Nat = RT_Nat;

structure RT_x_1 =
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
    
structure RT_s_2 = RT_Set(structure Elem = RT_x_1);

structure RT_x_3 =
    struct
        type t = RT_x_1.t * RT_x_1.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_x_1.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_x_1.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_4 = RT_Set(structure Elem = RT_x_3);

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
    
structure RT_x_6 =
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
    
structure RT_Bool = RT_Bool;

structure RT_s_7 = RT_Set(structure Elem = RT_Text);

structure NETTEST =
    struct
        type Net_ = RT_x_5.t;
        
        type Stop_ = RT_x_1.t;
        
        type Connection_ = RT_x_3.t;
        
        type StopId_ = RT_Text.t;
        
        type Capacity_ = RT_Nat.t;
        
        type WaitingTime_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        fun insertStop'CE9_ (id'D58_, c'D5C_, wt'D5F_, (stops'D64_, connections'D6B_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (19, 7)); if not((RT_Nat.R_ge (c'D5C_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (wt'D5F_, RT_Int.fromLit "0")) andalso (((RT_s_2.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x1_'0_, x2_'0_, x3_'0_) = ((x_'0_):RT_x_1.t)
        in
            (RT_Nat.R_ge (x2_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0"))
        end) (stops'D64_))) andalso ((RT_s_4.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x4_'0_, x5_'0_, x6_'0_, x7_'0_) = ((x_'0_):RT_x_3.t)
        in
            (let
                val (x8_'0_, x9_'0_, x10_'0_) = ((x4_'0_):RT_x_1.t)
            in
                (RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0"))
            end) andalso ((let
                val (x11_'0_, x12_'0_, x13_'0_) = ((x5_'0_):RT_x_1.t)
            in
                (RT_Nat.R_ge (x12_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0"))
            end) andalso ((RT_Nat.R_ge (x6_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x7_'0_, RT_Int.fromLit "0"))))
        end) (connections'D6B_)))))) then raise RSL.RSL_exception ("NET.rsl:17:5: Argument of insertStop" ^ RT_x_6.toString (id'D58_, c'D5C_, wt'D5F_, (stops'D64_, connections'D6B_)) ^ " not in subtype") else if RT_s_2.equ (stops'D64_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (19, 26)); (RT_s_2.R_union (stops'D64_, RT_s_2.R_fromList ([(id'D58_, c'D5C_, wt'D5F_)])), connections'D6B_)) else if RT_s_7.R_mem (id'D58_, (RT_s_7.R_compss (fn ((stopId'E30_, sc'E38_, sw'E3C_):RT_x_1.t) => stopId'E30_) (fn ((stopId'E30_, sc'E38_, sw'E3C_):RT_x_1.t) => (RT_Nat.R_ge (sc'E38_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (sw'E3C_, RT_Int.fromLit "0"))) (stops'D64_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (20, 91)); (stops'D64_, connections'D6B_)) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (21, 12)); (RT_s_2.R_union (stops'D64_, RT_s_2.R_fromList ([(id'D58_, c'D5C_, wt'D5F_)])), connections'D6B_)));
        
        val empty'BBD_ = (RT_s_2.R_fromList [], RT_s_4.R_fromList []);
        
        val s3'325_ = (RT_Text.fromLit "a", RT_Int.fromLit "2", RT_Int.fromLit "1");
        
        val s1'25D_ = (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "1");
        
        val s2'2C1_ = (RT_Text.fromLit "b", RT_Int.fromLit "1", RT_Int.fromLit "1");
        
    end;
    
open NETTEST;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NET.rsl", (21, 12), (22, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (20, 91), (21, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (19, 26), (20, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (19, 7), (52, 3)));
(RSL.C_output "[t001] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'CE9_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "1", (RT_s_2.R_fromList [], RT_s_4.R_fromList []))), (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList []))));

(RSL.C_output "[t002] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'CE9_) (RT_Text.fromLit "a", RT_Int.fromLit "1", RT_Int.fromLit "2", (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList []))), (RT_s_2.R_fromList ([s1'25D_]), RT_s_4.R_fromList []))));

RSL.print_error_count();
R_coverage.save_marked();
