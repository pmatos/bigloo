;; ==========================================================
;; Class accessors
;; Bigloo (4.5a)
;; Inria -- Sophia Antipolis     Mon Jul 4 03:24:13 PM CEST 2022 
;; (bigloo -classgen SawMill/defs.scm)
;; ==========================================================

;; The directives
(directives

;; rtl_reg
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_reg::rtl_reg type1506::type var1507::obj onexpr?1508::obj name1509::obj key1510::obj hardware1511::obj)
    (inline rtl_reg?::bool ::obj)
    (rtl_reg-nil::rtl_reg)
    (inline rtl_reg-hardware::obj ::rtl_reg)
    (inline rtl_reg-key::obj ::rtl_reg)
    (inline rtl_reg-name::obj ::rtl_reg)
    (inline rtl_reg-onexpr?::obj ::rtl_reg)
    (inline rtl_reg-onexpr?-set! ::rtl_reg ::obj)
    (inline rtl_reg-var::obj ::rtl_reg)
    (inline rtl_reg-var-set! ::rtl_reg ::obj)
    (inline rtl_reg-type::type ::rtl_reg)
    (inline rtl_reg-type-set! ::rtl_reg ::type))))

;; rtl_fun
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_fun::rtl_fun loc1503::obj)
    (inline rtl_fun?::bool ::obj)
    (rtl_fun-nil::rtl_fun)
    (inline rtl_fun-loc::obj ::rtl_fun)
    (inline rtl_fun-loc-set! ::rtl_fun ::obj))))

;; rtl_last
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_last::rtl_last loc1501::obj)
    (inline rtl_last?::bool ::obj)
    (rtl_last-nil::rtl_last)
    (inline rtl_last-loc::obj ::rtl_last)
    (inline rtl_last-loc-set! ::rtl_last ::obj))))

;; rtl_return
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_return::rtl_return loc1498::obj type1499::type)
    (inline rtl_return?::bool ::obj)
    (rtl_return-nil::rtl_return)
    (inline rtl_return-type::type ::rtl_return)
    (inline rtl_return-type-set! ::rtl_return ::type)
    (inline rtl_return-loc::obj ::rtl_return)
    (inline rtl_return-loc-set! ::rtl_return ::obj))))

;; rtl_jumpexit
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_jumpexit::rtl_jumpexit loc1496::obj)
    (inline rtl_jumpexit?::bool ::obj)
    (rtl_jumpexit-nil::rtl_jumpexit)
    (inline rtl_jumpexit-loc::obj ::rtl_jumpexit)
    (inline rtl_jumpexit-loc-set! ::rtl_jumpexit ::obj))))

;; rtl_fail
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_fail::rtl_fail loc1494::obj)
    (inline rtl_fail?::bool ::obj)
    (rtl_fail-nil::rtl_fail)
    (inline rtl_fail-loc::obj ::rtl_fail)
    (inline rtl_fail-loc-set! ::rtl_fail ::obj))))

;; rtl_retblock
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_retblock::rtl_retblock loc1490::obj)
    (inline rtl_retblock?::bool ::obj)
    (rtl_retblock-nil::rtl_retblock)
    (inline rtl_retblock-loc::obj ::rtl_retblock)
    (inline rtl_retblock-loc-set! ::rtl_retblock ::obj))))

;; rtl_ret
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_ret::rtl_ret loc1486::obj to1487::block)
    (inline rtl_ret?::bool ::obj)
    (rtl_ret-nil::rtl_ret)
    (inline rtl_ret-to::block ::rtl_ret)
    (inline rtl_ret-to-set! ::rtl_ret ::block)
    (inline rtl_ret-loc::obj ::rtl_ret)
    (inline rtl_ret-loc-set! ::rtl_ret ::obj))))

;; rtl_notseq
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_notseq::rtl_notseq loc1483::obj)
    (inline rtl_notseq?::bool ::obj)
    (rtl_notseq-nil::rtl_notseq)
    (inline rtl_notseq-loc::obj ::rtl_notseq)
    (inline rtl_notseq-loc-set! ::rtl_notseq ::obj))))

;; rtl_if
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_if::rtl_if loc1481::obj)
    (inline rtl_if?::bool ::obj)
    (rtl_if-nil::rtl_if)
    (inline rtl_if-loc::obj ::rtl_if)
    (inline rtl_if-loc-set! ::rtl_if ::obj))))

;; rtl_select
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_select::rtl_select loc1477::obj type1478::type patterns1479::obj)
    (inline rtl_select?::bool ::obj)
    (rtl_select-nil::rtl_select)
    (inline rtl_select-patterns::obj ::rtl_select)
    (inline rtl_select-patterns-set! ::rtl_select ::obj)
    (inline rtl_select-type::type ::rtl_select)
    (inline rtl_select-type-set! ::rtl_select ::type)
    (inline rtl_select-loc::obj ::rtl_select)
    (inline rtl_select-loc-set! ::rtl_select ::obj))))

;; rtl_switch
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_switch::rtl_switch loc1472::obj type1473::type patterns1474::obj labels1475::obj)
    (inline rtl_switch?::bool ::obj)
    (rtl_switch-nil::rtl_switch)
    (inline rtl_switch-labels::obj ::rtl_switch)
    (inline rtl_switch-labels-set! ::rtl_switch ::obj)
    (inline rtl_switch-patterns::obj ::rtl_switch)
    (inline rtl_switch-patterns-set! ::rtl_switch ::obj)
    (inline rtl_switch-type::type ::rtl_switch)
    (inline rtl_switch-type-set! ::rtl_switch ::type)
    (inline rtl_switch-loc::obj ::rtl_switch)
    (inline rtl_switch-loc-set! ::rtl_switch ::obj))))

;; rtl_ifeq
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_ifeq::rtl_ifeq loc1468::obj then1469::block)
    (inline rtl_ifeq?::bool ::obj)
    (rtl_ifeq-nil::rtl_ifeq)
    (inline rtl_ifeq-then::block ::rtl_ifeq)
    (inline rtl_ifeq-then-set! ::rtl_ifeq ::block)
    (inline rtl_ifeq-loc::obj ::rtl_ifeq)
    (inline rtl_ifeq-loc-set! ::rtl_ifeq ::obj))))

;; rtl_ifne
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_ifne::rtl_ifne loc1465::obj then1466::block)
    (inline rtl_ifne?::bool ::obj)
    (rtl_ifne-nil::rtl_ifne)
    (inline rtl_ifne-then::block ::rtl_ifne)
    (inline rtl_ifne-then-set! ::rtl_ifne ::block)
    (inline rtl_ifne-loc::obj ::rtl_ifne)
    (inline rtl_ifne-loc-set! ::rtl_ifne ::obj))))

;; rtl_go
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_go::rtl_go loc1462::obj to1463::block)
    (inline rtl_go?::bool ::obj)
    (rtl_go-nil::rtl_go)
    (inline rtl_go-to::block ::rtl_go)
    (inline rtl_go-to-set! ::rtl_go ::block)
    (inline rtl_go-loc::obj ::rtl_go)
    (inline rtl_go-loc-set! ::rtl_go ::obj))))

;; rtl_pure
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_pure::rtl_pure loc1459::obj)
    (inline rtl_pure?::bool ::obj)
    (rtl_pure-nil::rtl_pure)
    (inline rtl_pure-loc::obj ::rtl_pure)
    (inline rtl_pure-loc-set! ::rtl_pure ::obj))))

;; rtl_nop
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_nop::rtl_nop loc1457::obj)
    (inline rtl_nop?::bool ::obj)
    (rtl_nop-nil::rtl_nop)
    (inline rtl_nop-loc::obj ::rtl_nop)
    (inline rtl_nop-loc-set! ::rtl_nop ::obj))))

;; rtl_mov
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_mov::rtl_mov loc1453::obj)
    (inline rtl_mov?::bool ::obj)
    (rtl_mov-nil::rtl_mov)
    (inline rtl_mov-loc::obj ::rtl_mov)
    (inline rtl_mov-loc-set! ::rtl_mov ::obj))))

;; rtl_loadi
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_loadi::rtl_loadi loc1450::obj constant1451::atom)
    (inline rtl_loadi?::bool ::obj)
    (rtl_loadi-nil::rtl_loadi)
    (inline rtl_loadi-constant::atom ::rtl_loadi)
    (inline rtl_loadi-constant-set! ::rtl_loadi ::atom)
    (inline rtl_loadi-loc::obj ::rtl_loadi)
    (inline rtl_loadi-loc-set! ::rtl_loadi ::obj))))

;; rtl_loadg
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_loadg::rtl_loadg loc1445::obj var1447::global)
    (inline rtl_loadg?::bool ::obj)
    (rtl_loadg-nil::rtl_loadg)
    (inline rtl_loadg-var::global ::rtl_loadg)
    (inline rtl_loadg-var-set! ::rtl_loadg ::global)
    (inline rtl_loadg-loc::obj ::rtl_loadg)
    (inline rtl_loadg-loc-set! ::rtl_loadg ::obj))))

;; rtl_loadfun
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_loadfun::rtl_loadfun loc1441::obj var1442::global)
    (inline rtl_loadfun?::bool ::obj)
    (rtl_loadfun-nil::rtl_loadfun)
    (inline rtl_loadfun-var::global ::rtl_loadfun)
    (inline rtl_loadfun-var-set! ::rtl_loadfun ::global)
    (inline rtl_loadfun-loc::obj ::rtl_loadfun)
    (inline rtl_loadfun-loc-set! ::rtl_loadfun ::obj))))

;; rtl_globalref
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_globalref::rtl_globalref loc1437::obj var1438::global)
    (inline rtl_globalref?::bool ::obj)
    (rtl_globalref-nil::rtl_globalref)
    (inline rtl_globalref-var::global ::rtl_globalref)
    (inline rtl_globalref-var-set! ::rtl_globalref ::global)
    (inline rtl_globalref-loc::obj ::rtl_globalref)
    (inline rtl_globalref-loc-set! ::rtl_globalref ::obj))))

;; rtl_getfield
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_getfield::rtl_getfield loc1431::obj name1432::bstring objtype1433::type type1434::type)
    (inline rtl_getfield?::bool ::obj)
    (rtl_getfield-nil::rtl_getfield)
    (inline rtl_getfield-type::type ::rtl_getfield)
    (inline rtl_getfield-type-set! ::rtl_getfield ::type)
    (inline rtl_getfield-objtype::type ::rtl_getfield)
    (inline rtl_getfield-objtype-set! ::rtl_getfield ::type)
    (inline rtl_getfield-name::bstring ::rtl_getfield)
    (inline rtl_getfield-name-set! ::rtl_getfield ::bstring)
    (inline rtl_getfield-loc::obj ::rtl_getfield)
    (inline rtl_getfield-loc-set! ::rtl_getfield ::obj))))

;; rtl_valloc
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_valloc::rtl_valloc loc1426::obj type1428::type vtype1429::type)
    (inline rtl_valloc?::bool ::obj)
    (rtl_valloc-nil::rtl_valloc)
    (inline rtl_valloc-vtype::type ::rtl_valloc)
    (inline rtl_valloc-vtype-set! ::rtl_valloc ::type)
    (inline rtl_valloc-type::type ::rtl_valloc)
    (inline rtl_valloc-type-set! ::rtl_valloc ::type)
    (inline rtl_valloc-loc::obj ::rtl_valloc)
    (inline rtl_valloc-loc-set! ::rtl_valloc ::obj))))

;; rtl_vref
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_vref::rtl_vref loc1422::obj type1423::type vtype1424::type)
    (inline rtl_vref?::bool ::obj)
    (rtl_vref-nil::rtl_vref)
    (inline rtl_vref-vtype::type ::rtl_vref)
    (inline rtl_vref-vtype-set! ::rtl_vref ::type)
    (inline rtl_vref-type::type ::rtl_vref)
    (inline rtl_vref-type-set! ::rtl_vref ::type)
    (inline rtl_vref-loc::obj ::rtl_vref)
    (inline rtl_vref-loc-set! ::rtl_vref ::obj))))

;; rtl_vlength
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_vlength::rtl_vlength loc1418::obj type1419::type vtype1420::type)
    (inline rtl_vlength?::bool ::obj)
    (rtl_vlength-nil::rtl_vlength)
    (inline rtl_vlength-vtype::type ::rtl_vlength)
    (inline rtl_vlength-vtype-set! ::rtl_vlength ::type)
    (inline rtl_vlength-type::type ::rtl_vlength)
    (inline rtl_vlength-type-set! ::rtl_vlength ::type)
    (inline rtl_vlength-loc::obj ::rtl_vlength)
    (inline rtl_vlength-loc-set! ::rtl_vlength ::obj))))

;; rtl_instanceof
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_instanceof::rtl_instanceof loc1415::obj type1416::type)
    (inline rtl_instanceof?::bool ::obj)
    (rtl_instanceof-nil::rtl_instanceof)
    (inline rtl_instanceof-type::type ::rtl_instanceof)
    (inline rtl_instanceof-type-set! ::rtl_instanceof ::type)
    (inline rtl_instanceof-loc::obj ::rtl_instanceof)
    (inline rtl_instanceof-loc-set! ::rtl_instanceof ::obj))))

;; rtl_makebox
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_makebox::rtl_makebox loc1413::obj)
    (inline rtl_makebox?::bool ::obj)
    (rtl_makebox-nil::rtl_makebox)
    (inline rtl_makebox-loc::obj ::rtl_makebox)
    (inline rtl_makebox-loc-set! ::rtl_makebox ::obj))))

;; rtl_boxref
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_boxref::rtl_boxref loc1410::obj)
    (inline rtl_boxref?::bool ::obj)
    (rtl_boxref-nil::rtl_boxref)
    (inline rtl_boxref-loc::obj ::rtl_boxref)
    (inline rtl_boxref-loc-set! ::rtl_boxref ::obj))))

;; rtl_effect
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_effect::rtl_effect loc1407::obj)
    (inline rtl_effect?::bool ::obj)
    (rtl_effect-nil::rtl_effect)
    (inline rtl_effect-loc::obj ::rtl_effect)
    (inline rtl_effect-loc-set! ::rtl_effect ::obj))))

;; rtl_storeg
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_storeg::rtl_storeg loc1404::obj var1405::global)
    (inline rtl_storeg?::bool ::obj)
    (rtl_storeg-nil::rtl_storeg)
    (inline rtl_storeg-var::global ::rtl_storeg)
    (inline rtl_storeg-var-set! ::rtl_storeg ::global)
    (inline rtl_storeg-loc::obj ::rtl_storeg)
    (inline rtl_storeg-loc-set! ::rtl_storeg ::obj))))

;; rtl_setfield
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_setfield::rtl_setfield loc1399::obj name1400::bstring objtype1401::type type1402::type)
    (inline rtl_setfield?::bool ::obj)
    (rtl_setfield-nil::rtl_setfield)
    (inline rtl_setfield-type::type ::rtl_setfield)
    (inline rtl_setfield-type-set! ::rtl_setfield ::type)
    (inline rtl_setfield-objtype::type ::rtl_setfield)
    (inline rtl_setfield-objtype-set! ::rtl_setfield ::type)
    (inline rtl_setfield-name::bstring ::rtl_setfield)
    (inline rtl_setfield-name-set! ::rtl_setfield ::bstring)
    (inline rtl_setfield-loc::obj ::rtl_setfield)
    (inline rtl_setfield-loc-set! ::rtl_setfield ::obj))))

;; rtl_vset
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_vset::rtl_vset loc1395::obj type1396::type vtype1397::type)
    (inline rtl_vset?::bool ::obj)
    (rtl_vset-nil::rtl_vset)
    (inline rtl_vset-vtype::type ::rtl_vset)
    (inline rtl_vset-vtype-set! ::rtl_vset ::type)
    (inline rtl_vset-type::type ::rtl_vset)
    (inline rtl_vset-type-set! ::rtl_vset ::type)
    (inline rtl_vset-loc::obj ::rtl_vset)
    (inline rtl_vset-loc-set! ::rtl_vset ::obj))))

;; rtl_boxset
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_boxset::rtl_boxset loc1392::obj)
    (inline rtl_boxset?::bool ::obj)
    (rtl_boxset-nil::rtl_boxset)
    (inline rtl_boxset-loc::obj ::rtl_boxset)
    (inline rtl_boxset-loc-set! ::rtl_boxset ::obj))))

;; rtl_new
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_new::rtl_new loc1388::obj type1389::type constr1390::pair-nil)
    (inline rtl_new?::bool ::obj)
    (rtl_new-nil::rtl_new)
    (inline rtl_new-constr::pair-nil ::rtl_new)
    (inline rtl_new-constr-set! ::rtl_new ::pair-nil)
    (inline rtl_new-type::type ::rtl_new)
    (inline rtl_new-type-set! ::rtl_new ::type)
    (inline rtl_new-loc::obj ::rtl_new)
    (inline rtl_new-loc-set! ::rtl_new ::obj))))

;; rtl_call
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_call::rtl_call loc1385::obj var1386::global)
    (inline rtl_call?::bool ::obj)
    (rtl_call-nil::rtl_call)
    (inline rtl_call-var::global ::rtl_call)
    (inline rtl_call-var-set! ::rtl_call ::global)
    (inline rtl_call-loc::obj ::rtl_call)
    (inline rtl_call-loc-set! ::rtl_call ::obj))))

;; rtl_apply
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_apply::rtl_apply loc1382::obj)
    (inline rtl_apply?::bool ::obj)
    (rtl_apply-nil::rtl_apply)
    (inline rtl_apply-loc::obj ::rtl_apply)
    (inline rtl_apply-loc-set! ::rtl_apply ::obj))))

;; rtl_lightfuncall
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_lightfuncall::rtl_lightfuncall loc1377::obj name1378::symbol funs1379::pair-nil rettype1380::obj)
    (inline rtl_lightfuncall?::bool ::obj)
    (rtl_lightfuncall-nil::rtl_lightfuncall)
    (inline rtl_lightfuncall-rettype::obj ::rtl_lightfuncall)
    (inline rtl_lightfuncall-rettype-set! ::rtl_lightfuncall ::obj)
    (inline rtl_lightfuncall-funs::pair-nil ::rtl_lightfuncall)
    (inline rtl_lightfuncall-funs-set! ::rtl_lightfuncall ::pair-nil)
    (inline rtl_lightfuncall-name::symbol ::rtl_lightfuncall)
    (inline rtl_lightfuncall-name-set! ::rtl_lightfuncall ::symbol)
    (inline rtl_lightfuncall-loc::obj ::rtl_lightfuncall)
    (inline rtl_lightfuncall-loc-set! ::rtl_lightfuncall ::obj))))

;; rtl_funcall
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_funcall::rtl_funcall loc1374::obj)
    (inline rtl_funcall?::bool ::obj)
    (rtl_funcall-nil::rtl_funcall)
    (inline rtl_funcall-loc::obj ::rtl_funcall)
    (inline rtl_funcall-loc-set! ::rtl_funcall ::obj))))

;; rtl_pragma
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_pragma::rtl_pragma loc1371::obj format1372::bstring)
    (inline rtl_pragma?::bool ::obj)
    (rtl_pragma-nil::rtl_pragma)
    (inline rtl_pragma-format::bstring ::rtl_pragma)
    (inline rtl_pragma-format-set! ::rtl_pragma ::bstring)
    (inline rtl_pragma-loc::obj ::rtl_pragma)
    (inline rtl_pragma-loc-set! ::rtl_pragma ::obj))))

;; rtl_cast
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_cast::rtl_cast loc1367::obj totype1368::type fromtype1369::type)
    (inline rtl_cast?::bool ::obj)
    (rtl_cast-nil::rtl_cast)
    (inline rtl_cast-fromtype::type ::rtl_cast)
    (inline rtl_cast-fromtype-set! ::rtl_cast ::type)
    (inline rtl_cast-totype::type ::rtl_cast)
    (inline rtl_cast-totype-set! ::rtl_cast ::type)
    (inline rtl_cast-loc::obj ::rtl_cast)
    (inline rtl_cast-loc-set! ::rtl_cast ::obj))))

;; rtl_cast_null
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_cast_null::rtl_cast_null loc1364::obj type1365::type)
    (inline rtl_cast_null?::bool ::obj)
    (rtl_cast_null-nil::rtl_cast_null)
    (inline rtl_cast_null-type::type ::rtl_cast_null)
    (inline rtl_cast_null-type-set! ::rtl_cast_null ::type)
    (inline rtl_cast_null-loc::obj ::rtl_cast_null)
    (inline rtl_cast_null-loc-set! ::rtl_cast_null ::obj))))

;; rtl_protect
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_protect::rtl_protect loc1361::obj)
    (inline rtl_protect?::bool ::obj)
    (rtl_protect-nil::rtl_protect)
    (inline rtl_protect-loc::obj ::rtl_protect)
    (inline rtl_protect-loc-set! ::rtl_protect ::obj))))

;; rtl_protected
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_protected::rtl_protected loc1358::obj)
    (inline rtl_protected?::bool ::obj)
    (rtl_protected-nil::rtl_protected)
    (inline rtl_protected-loc::obj ::rtl_protected)
    (inline rtl_protected-loc-set! ::rtl_protected ::obj))))

;; rtl_ins
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-rtl_ins::rtl_ins loc1352::obj %spill1353::pair-nil dest1354::obj fun1355::rtl_fun args1356::pair-nil)
    (inline rtl_ins?::bool ::obj)
    (rtl_ins-nil::rtl_ins)
    (inline rtl_ins-args::pair-nil ::rtl_ins)
    (inline rtl_ins-args-set! ::rtl_ins ::pair-nil)
    (inline rtl_ins-fun::rtl_fun ::rtl_ins)
    (inline rtl_ins-fun-set! ::rtl_ins ::rtl_fun)
    (inline rtl_ins-dest::obj ::rtl_ins)
    (inline rtl_ins-dest-set! ::rtl_ins ::obj)
    (inline rtl_ins-%spill::pair-nil ::rtl_ins)
    (inline rtl_ins-%spill-set! ::rtl_ins ::pair-nil)
    (inline rtl_ins-loc::obj ::rtl_ins)
    (inline rtl_ins-loc-set! ::rtl_ins ::obj))))

;; block
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-block::block label1347::int preds1348::pair-nil succs1349::pair-nil first1350::pair-nil)
    (inline block?::bool ::obj)
    (block-nil::block)
    (inline block-first::pair-nil ::block)
    (inline block-first-set! ::block ::pair-nil)
    (inline block-succs::pair-nil ::block)
    (inline block-succs-set! ::block ::pair-nil)
    (inline block-preds::pair-nil ::block)
    (inline block-preds-set! ::block ::pair-nil)
    (inline block-label::int ::block)
    (inline block-label-set! ::block ::int)))))

;; The definitions
(cond-expand (bigloo-class-sans
;; rtl_reg
(define-inline (make-rtl_reg::rtl_reg type1506::type var1507::obj onexpr?1508::obj name1509::obj key1510::obj hardware1511::obj) (instantiate::rtl_reg (type type1506) (var var1507) (onexpr? onexpr?1508) (name name1509) (key key1510) (hardware hardware1511)))
(define-inline (rtl_reg?::bool obj::obj) ((@ isa? __object) obj (@ rtl_reg saw_defs)))
(define (rtl_reg-nil::rtl_reg) (class-nil (@ rtl_reg saw_defs)))
(define-inline (rtl_reg-hardware::obj o::rtl_reg) (-> |#!bigloo_wallow| o hardware))
(define-inline (rtl_reg-hardware-set! o::rtl_reg v::obj) (set! (-> |#!bigloo_wallow| o hardware) v))
(define-inline (rtl_reg-key::obj o::rtl_reg) (-> |#!bigloo_wallow| o key))
(define-inline (rtl_reg-key-set! o::rtl_reg v::obj) (set! (-> |#!bigloo_wallow| o key) v))
(define-inline (rtl_reg-name::obj o::rtl_reg) (-> |#!bigloo_wallow| o name))
(define-inline (rtl_reg-name-set! o::rtl_reg v::obj) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (rtl_reg-onexpr?::obj o::rtl_reg) (-> |#!bigloo_wallow| o onexpr?))
(define-inline (rtl_reg-onexpr?-set! o::rtl_reg v::obj) (set! (-> |#!bigloo_wallow| o onexpr?) v))
(define-inline (rtl_reg-var::obj o::rtl_reg) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_reg-var-set! o::rtl_reg v::obj) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_reg-type::type o::rtl_reg) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_reg-type-set! o::rtl_reg v::type) (set! (-> |#!bigloo_wallow| o type) v))

;; rtl_fun
(define-inline (make-rtl_fun::rtl_fun loc1503::obj) (instantiate::rtl_fun (loc loc1503)))
(define-inline (rtl_fun?::bool obj::obj) ((@ isa? __object) obj (@ rtl_fun saw_defs)))
(define (rtl_fun-nil::rtl_fun) (class-nil (@ rtl_fun saw_defs)))
(define-inline (rtl_fun-loc::obj o::rtl_fun) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_fun-loc-set! o::rtl_fun v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_last
(define-inline (make-rtl_last::rtl_last loc1501::obj) (instantiate::rtl_last (loc loc1501)))
(define-inline (rtl_last?::bool obj::obj) ((@ isa? __object) obj (@ rtl_last saw_defs)))
(define (rtl_last-nil::rtl_last) (class-nil (@ rtl_last saw_defs)))
(define-inline (rtl_last-loc::obj o::rtl_last) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_last-loc-set! o::rtl_last v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_return
(define-inline (make-rtl_return::rtl_return loc1498::obj type1499::type) (instantiate::rtl_return (loc loc1498) (type type1499)))
(define-inline (rtl_return?::bool obj::obj) ((@ isa? __object) obj (@ rtl_return saw_defs)))
(define (rtl_return-nil::rtl_return) (class-nil (@ rtl_return saw_defs)))
(define-inline (rtl_return-type::type o::rtl_return) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_return-type-set! o::rtl_return v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_return-loc::obj o::rtl_return) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_return-loc-set! o::rtl_return v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_jumpexit
(define-inline (make-rtl_jumpexit::rtl_jumpexit loc1496::obj) (instantiate::rtl_jumpexit (loc loc1496)))
(define-inline (rtl_jumpexit?::bool obj::obj) ((@ isa? __object) obj (@ rtl_jumpexit saw_defs)))
(define (rtl_jumpexit-nil::rtl_jumpexit) (class-nil (@ rtl_jumpexit saw_defs)))
(define-inline (rtl_jumpexit-loc::obj o::rtl_jumpexit) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_jumpexit-loc-set! o::rtl_jumpexit v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_fail
(define-inline (make-rtl_fail::rtl_fail loc1494::obj) (instantiate::rtl_fail (loc loc1494)))
(define-inline (rtl_fail?::bool obj::obj) ((@ isa? __object) obj (@ rtl_fail saw_defs)))
(define (rtl_fail-nil::rtl_fail) (class-nil (@ rtl_fail saw_defs)))
(define-inline (rtl_fail-loc::obj o::rtl_fail) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_fail-loc-set! o::rtl_fail v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_retblock
(define-inline (make-rtl_retblock::rtl_retblock loc1490::obj) (instantiate::rtl_retblock (loc loc1490)))
(define-inline (rtl_retblock?::bool obj::obj) ((@ isa? __object) obj (@ rtl_retblock saw_defs)))
(define (rtl_retblock-nil::rtl_retblock) (class-nil (@ rtl_retblock saw_defs)))
(define-inline (rtl_retblock-loc::obj o::rtl_retblock) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_retblock-loc-set! o::rtl_retblock v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_ret
(define-inline (make-rtl_ret::rtl_ret loc1486::obj to1487::block) (instantiate::rtl_ret (loc loc1486) (to to1487)))
(define-inline (rtl_ret?::bool obj::obj) ((@ isa? __object) obj (@ rtl_ret saw_defs)))
(define (rtl_ret-nil::rtl_ret) (class-nil (@ rtl_ret saw_defs)))
(define-inline (rtl_ret-to::block o::rtl_ret) (-> |#!bigloo_wallow| o to))
(define-inline (rtl_ret-to-set! o::rtl_ret v::block) (set! (-> |#!bigloo_wallow| o to) v))
(define-inline (rtl_ret-loc::obj o::rtl_ret) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_ret-loc-set! o::rtl_ret v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_notseq
(define-inline (make-rtl_notseq::rtl_notseq loc1483::obj) (instantiate::rtl_notseq (loc loc1483)))
(define-inline (rtl_notseq?::bool obj::obj) ((@ isa? __object) obj (@ rtl_notseq saw_defs)))
(define (rtl_notseq-nil::rtl_notseq) (class-nil (@ rtl_notseq saw_defs)))
(define-inline (rtl_notseq-loc::obj o::rtl_notseq) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_notseq-loc-set! o::rtl_notseq v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_if
(define-inline (make-rtl_if::rtl_if loc1481::obj) (instantiate::rtl_if (loc loc1481)))
(define-inline (rtl_if?::bool obj::obj) ((@ isa? __object) obj (@ rtl_if saw_defs)))
(define (rtl_if-nil::rtl_if) (class-nil (@ rtl_if saw_defs)))
(define-inline (rtl_if-loc::obj o::rtl_if) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_if-loc-set! o::rtl_if v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_select
(define-inline (make-rtl_select::rtl_select loc1477::obj type1478::type patterns1479::obj) (instantiate::rtl_select (loc loc1477) (type type1478) (patterns patterns1479)))
(define-inline (rtl_select?::bool obj::obj) ((@ isa? __object) obj (@ rtl_select saw_defs)))
(define (rtl_select-nil::rtl_select) (class-nil (@ rtl_select saw_defs)))
(define-inline (rtl_select-patterns::obj o::rtl_select) (-> |#!bigloo_wallow| o patterns))
(define-inline (rtl_select-patterns-set! o::rtl_select v::obj) (set! (-> |#!bigloo_wallow| o patterns) v))
(define-inline (rtl_select-type::type o::rtl_select) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_select-type-set! o::rtl_select v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_select-loc::obj o::rtl_select) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_select-loc-set! o::rtl_select v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_switch
(define-inline (make-rtl_switch::rtl_switch loc1472::obj type1473::type patterns1474::obj labels1475::obj) (instantiate::rtl_switch (loc loc1472) (type type1473) (patterns patterns1474) (labels labels1475)))
(define-inline (rtl_switch?::bool obj::obj) ((@ isa? __object) obj (@ rtl_switch saw_defs)))
(define (rtl_switch-nil::rtl_switch) (class-nil (@ rtl_switch saw_defs)))
(define-inline (rtl_switch-labels::obj o::rtl_switch) (-> |#!bigloo_wallow| o labels))
(define-inline (rtl_switch-labels-set! o::rtl_switch v::obj) (set! (-> |#!bigloo_wallow| o labels) v))
(define-inline (rtl_switch-patterns::obj o::rtl_switch) (-> |#!bigloo_wallow| o patterns))
(define-inline (rtl_switch-patterns-set! o::rtl_switch v::obj) (set! (-> |#!bigloo_wallow| o patterns) v))
(define-inline (rtl_switch-type::type o::rtl_switch) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_switch-type-set! o::rtl_switch v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_switch-loc::obj o::rtl_switch) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_switch-loc-set! o::rtl_switch v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_ifeq
(define-inline (make-rtl_ifeq::rtl_ifeq loc1468::obj then1469::block) (instantiate::rtl_ifeq (loc loc1468) (then then1469)))
(define-inline (rtl_ifeq?::bool obj::obj) ((@ isa? __object) obj (@ rtl_ifeq saw_defs)))
(define (rtl_ifeq-nil::rtl_ifeq) (class-nil (@ rtl_ifeq saw_defs)))
(define-inline (rtl_ifeq-then::block o::rtl_ifeq) (-> |#!bigloo_wallow| o then))
(define-inline (rtl_ifeq-then-set! o::rtl_ifeq v::block) (set! (-> |#!bigloo_wallow| o then) v))
(define-inline (rtl_ifeq-loc::obj o::rtl_ifeq) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_ifeq-loc-set! o::rtl_ifeq v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_ifne
(define-inline (make-rtl_ifne::rtl_ifne loc1465::obj then1466::block) (instantiate::rtl_ifne (loc loc1465) (then then1466)))
(define-inline (rtl_ifne?::bool obj::obj) ((@ isa? __object) obj (@ rtl_ifne saw_defs)))
(define (rtl_ifne-nil::rtl_ifne) (class-nil (@ rtl_ifne saw_defs)))
(define-inline (rtl_ifne-then::block o::rtl_ifne) (-> |#!bigloo_wallow| o then))
(define-inline (rtl_ifne-then-set! o::rtl_ifne v::block) (set! (-> |#!bigloo_wallow| o then) v))
(define-inline (rtl_ifne-loc::obj o::rtl_ifne) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_ifne-loc-set! o::rtl_ifne v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_go
(define-inline (make-rtl_go::rtl_go loc1462::obj to1463::block) (instantiate::rtl_go (loc loc1462) (to to1463)))
(define-inline (rtl_go?::bool obj::obj) ((@ isa? __object) obj (@ rtl_go saw_defs)))
(define (rtl_go-nil::rtl_go) (class-nil (@ rtl_go saw_defs)))
(define-inline (rtl_go-to::block o::rtl_go) (-> |#!bigloo_wallow| o to))
(define-inline (rtl_go-to-set! o::rtl_go v::block) (set! (-> |#!bigloo_wallow| o to) v))
(define-inline (rtl_go-loc::obj o::rtl_go) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_go-loc-set! o::rtl_go v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_pure
(define-inline (make-rtl_pure::rtl_pure loc1459::obj) (instantiate::rtl_pure (loc loc1459)))
(define-inline (rtl_pure?::bool obj::obj) ((@ isa? __object) obj (@ rtl_pure saw_defs)))
(define (rtl_pure-nil::rtl_pure) (class-nil (@ rtl_pure saw_defs)))
(define-inline (rtl_pure-loc::obj o::rtl_pure) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_pure-loc-set! o::rtl_pure v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_nop
(define-inline (make-rtl_nop::rtl_nop loc1457::obj) (instantiate::rtl_nop (loc loc1457)))
(define-inline (rtl_nop?::bool obj::obj) ((@ isa? __object) obj (@ rtl_nop saw_defs)))
(define (rtl_nop-nil::rtl_nop) (class-nil (@ rtl_nop saw_defs)))
(define-inline (rtl_nop-loc::obj o::rtl_nop) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_nop-loc-set! o::rtl_nop v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_mov
(define-inline (make-rtl_mov::rtl_mov loc1453::obj) (instantiate::rtl_mov (loc loc1453)))
(define-inline (rtl_mov?::bool obj::obj) ((@ isa? __object) obj (@ rtl_mov saw_defs)))
(define (rtl_mov-nil::rtl_mov) (class-nil (@ rtl_mov saw_defs)))
(define-inline (rtl_mov-loc::obj o::rtl_mov) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_mov-loc-set! o::rtl_mov v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_loadi
(define-inline (make-rtl_loadi::rtl_loadi loc1450::obj constant1451::atom) (instantiate::rtl_loadi (loc loc1450) (constant constant1451)))
(define-inline (rtl_loadi?::bool obj::obj) ((@ isa? __object) obj (@ rtl_loadi saw_defs)))
(define (rtl_loadi-nil::rtl_loadi) (class-nil (@ rtl_loadi saw_defs)))
(define-inline (rtl_loadi-constant::atom o::rtl_loadi) (-> |#!bigloo_wallow| o constant))
(define-inline (rtl_loadi-constant-set! o::rtl_loadi v::atom) (set! (-> |#!bigloo_wallow| o constant) v))
(define-inline (rtl_loadi-loc::obj o::rtl_loadi) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_loadi-loc-set! o::rtl_loadi v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_loadg
(define-inline (make-rtl_loadg::rtl_loadg loc1445::obj var1447::global) (instantiate::rtl_loadg (loc loc1445) (var var1447)))
(define-inline (rtl_loadg?::bool obj::obj) ((@ isa? __object) obj (@ rtl_loadg saw_defs)))
(define (rtl_loadg-nil::rtl_loadg) (class-nil (@ rtl_loadg saw_defs)))
(define-inline (rtl_loadg-var::global o::rtl_loadg) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_loadg-var-set! o::rtl_loadg v::global) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_loadg-loc::obj o::rtl_loadg) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_loadg-loc-set! o::rtl_loadg v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_loadfun
(define-inline (make-rtl_loadfun::rtl_loadfun loc1441::obj var1442::global) (instantiate::rtl_loadfun (loc loc1441) (var var1442)))
(define-inline (rtl_loadfun?::bool obj::obj) ((@ isa? __object) obj (@ rtl_loadfun saw_defs)))
(define (rtl_loadfun-nil::rtl_loadfun) (class-nil (@ rtl_loadfun saw_defs)))
(define-inline (rtl_loadfun-var::global o::rtl_loadfun) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_loadfun-var-set! o::rtl_loadfun v::global) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_loadfun-loc::obj o::rtl_loadfun) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_loadfun-loc-set! o::rtl_loadfun v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_globalref
(define-inline (make-rtl_globalref::rtl_globalref loc1437::obj var1438::global) (instantiate::rtl_globalref (loc loc1437) (var var1438)))
(define-inline (rtl_globalref?::bool obj::obj) ((@ isa? __object) obj (@ rtl_globalref saw_defs)))
(define (rtl_globalref-nil::rtl_globalref) (class-nil (@ rtl_globalref saw_defs)))
(define-inline (rtl_globalref-var::global o::rtl_globalref) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_globalref-var-set! o::rtl_globalref v::global) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_globalref-loc::obj o::rtl_globalref) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_globalref-loc-set! o::rtl_globalref v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_getfield
(define-inline (make-rtl_getfield::rtl_getfield loc1431::obj name1432::bstring objtype1433::type type1434::type) (instantiate::rtl_getfield (loc loc1431) (name name1432) (objtype objtype1433) (type type1434)))
(define-inline (rtl_getfield?::bool obj::obj) ((@ isa? __object) obj (@ rtl_getfield saw_defs)))
(define (rtl_getfield-nil::rtl_getfield) (class-nil (@ rtl_getfield saw_defs)))
(define-inline (rtl_getfield-type::type o::rtl_getfield) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_getfield-type-set! o::rtl_getfield v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_getfield-objtype::type o::rtl_getfield) (-> |#!bigloo_wallow| o objtype))
(define-inline (rtl_getfield-objtype-set! o::rtl_getfield v::type) (set! (-> |#!bigloo_wallow| o objtype) v))
(define-inline (rtl_getfield-name::bstring o::rtl_getfield) (-> |#!bigloo_wallow| o name))
(define-inline (rtl_getfield-name-set! o::rtl_getfield v::bstring) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (rtl_getfield-loc::obj o::rtl_getfield) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_getfield-loc-set! o::rtl_getfield v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_valloc
(define-inline (make-rtl_valloc::rtl_valloc loc1426::obj type1428::type vtype1429::type) (instantiate::rtl_valloc (loc loc1426) (type type1428) (vtype vtype1429)))
(define-inline (rtl_valloc?::bool obj::obj) ((@ isa? __object) obj (@ rtl_valloc saw_defs)))
(define (rtl_valloc-nil::rtl_valloc) (class-nil (@ rtl_valloc saw_defs)))
(define-inline (rtl_valloc-vtype::type o::rtl_valloc) (-> |#!bigloo_wallow| o vtype))
(define-inline (rtl_valloc-vtype-set! o::rtl_valloc v::type) (set! (-> |#!bigloo_wallow| o vtype) v))
(define-inline (rtl_valloc-type::type o::rtl_valloc) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_valloc-type-set! o::rtl_valloc v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_valloc-loc::obj o::rtl_valloc) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_valloc-loc-set! o::rtl_valloc v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_vref
(define-inline (make-rtl_vref::rtl_vref loc1422::obj type1423::type vtype1424::type) (instantiate::rtl_vref (loc loc1422) (type type1423) (vtype vtype1424)))
(define-inline (rtl_vref?::bool obj::obj) ((@ isa? __object) obj (@ rtl_vref saw_defs)))
(define (rtl_vref-nil::rtl_vref) (class-nil (@ rtl_vref saw_defs)))
(define-inline (rtl_vref-vtype::type o::rtl_vref) (-> |#!bigloo_wallow| o vtype))
(define-inline (rtl_vref-vtype-set! o::rtl_vref v::type) (set! (-> |#!bigloo_wallow| o vtype) v))
(define-inline (rtl_vref-type::type o::rtl_vref) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_vref-type-set! o::rtl_vref v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_vref-loc::obj o::rtl_vref) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_vref-loc-set! o::rtl_vref v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_vlength
(define-inline (make-rtl_vlength::rtl_vlength loc1418::obj type1419::type vtype1420::type) (instantiate::rtl_vlength (loc loc1418) (type type1419) (vtype vtype1420)))
(define-inline (rtl_vlength?::bool obj::obj) ((@ isa? __object) obj (@ rtl_vlength saw_defs)))
(define (rtl_vlength-nil::rtl_vlength) (class-nil (@ rtl_vlength saw_defs)))
(define-inline (rtl_vlength-vtype::type o::rtl_vlength) (-> |#!bigloo_wallow| o vtype))
(define-inline (rtl_vlength-vtype-set! o::rtl_vlength v::type) (set! (-> |#!bigloo_wallow| o vtype) v))
(define-inline (rtl_vlength-type::type o::rtl_vlength) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_vlength-type-set! o::rtl_vlength v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_vlength-loc::obj o::rtl_vlength) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_vlength-loc-set! o::rtl_vlength v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_instanceof
(define-inline (make-rtl_instanceof::rtl_instanceof loc1415::obj type1416::type) (instantiate::rtl_instanceof (loc loc1415) (type type1416)))
(define-inline (rtl_instanceof?::bool obj::obj) ((@ isa? __object) obj (@ rtl_instanceof saw_defs)))
(define (rtl_instanceof-nil::rtl_instanceof) (class-nil (@ rtl_instanceof saw_defs)))
(define-inline (rtl_instanceof-type::type o::rtl_instanceof) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_instanceof-type-set! o::rtl_instanceof v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_instanceof-loc::obj o::rtl_instanceof) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_instanceof-loc-set! o::rtl_instanceof v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_makebox
(define-inline (make-rtl_makebox::rtl_makebox loc1413::obj) (instantiate::rtl_makebox (loc loc1413)))
(define-inline (rtl_makebox?::bool obj::obj) ((@ isa? __object) obj (@ rtl_makebox saw_defs)))
(define (rtl_makebox-nil::rtl_makebox) (class-nil (@ rtl_makebox saw_defs)))
(define-inline (rtl_makebox-loc::obj o::rtl_makebox) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_makebox-loc-set! o::rtl_makebox v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_boxref
(define-inline (make-rtl_boxref::rtl_boxref loc1410::obj) (instantiate::rtl_boxref (loc loc1410)))
(define-inline (rtl_boxref?::bool obj::obj) ((@ isa? __object) obj (@ rtl_boxref saw_defs)))
(define (rtl_boxref-nil::rtl_boxref) (class-nil (@ rtl_boxref saw_defs)))
(define-inline (rtl_boxref-loc::obj o::rtl_boxref) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_boxref-loc-set! o::rtl_boxref v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_effect
(define-inline (make-rtl_effect::rtl_effect loc1407::obj) (instantiate::rtl_effect (loc loc1407)))
(define-inline (rtl_effect?::bool obj::obj) ((@ isa? __object) obj (@ rtl_effect saw_defs)))
(define (rtl_effect-nil::rtl_effect) (class-nil (@ rtl_effect saw_defs)))
(define-inline (rtl_effect-loc::obj o::rtl_effect) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_effect-loc-set! o::rtl_effect v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_storeg
(define-inline (make-rtl_storeg::rtl_storeg loc1404::obj var1405::global) (instantiate::rtl_storeg (loc loc1404) (var var1405)))
(define-inline (rtl_storeg?::bool obj::obj) ((@ isa? __object) obj (@ rtl_storeg saw_defs)))
(define (rtl_storeg-nil::rtl_storeg) (class-nil (@ rtl_storeg saw_defs)))
(define-inline (rtl_storeg-var::global o::rtl_storeg) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_storeg-var-set! o::rtl_storeg v::global) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_storeg-loc::obj o::rtl_storeg) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_storeg-loc-set! o::rtl_storeg v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_setfield
(define-inline (make-rtl_setfield::rtl_setfield loc1399::obj name1400::bstring objtype1401::type type1402::type) (instantiate::rtl_setfield (loc loc1399) (name name1400) (objtype objtype1401) (type type1402)))
(define-inline (rtl_setfield?::bool obj::obj) ((@ isa? __object) obj (@ rtl_setfield saw_defs)))
(define (rtl_setfield-nil::rtl_setfield) (class-nil (@ rtl_setfield saw_defs)))
(define-inline (rtl_setfield-type::type o::rtl_setfield) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_setfield-type-set! o::rtl_setfield v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_setfield-objtype::type o::rtl_setfield) (-> |#!bigloo_wallow| o objtype))
(define-inline (rtl_setfield-objtype-set! o::rtl_setfield v::type) (set! (-> |#!bigloo_wallow| o objtype) v))
(define-inline (rtl_setfield-name::bstring o::rtl_setfield) (-> |#!bigloo_wallow| o name))
(define-inline (rtl_setfield-name-set! o::rtl_setfield v::bstring) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (rtl_setfield-loc::obj o::rtl_setfield) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_setfield-loc-set! o::rtl_setfield v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_vset
(define-inline (make-rtl_vset::rtl_vset loc1395::obj type1396::type vtype1397::type) (instantiate::rtl_vset (loc loc1395) (type type1396) (vtype vtype1397)))
(define-inline (rtl_vset?::bool obj::obj) ((@ isa? __object) obj (@ rtl_vset saw_defs)))
(define (rtl_vset-nil::rtl_vset) (class-nil (@ rtl_vset saw_defs)))
(define-inline (rtl_vset-vtype::type o::rtl_vset) (-> |#!bigloo_wallow| o vtype))
(define-inline (rtl_vset-vtype-set! o::rtl_vset v::type) (set! (-> |#!bigloo_wallow| o vtype) v))
(define-inline (rtl_vset-type::type o::rtl_vset) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_vset-type-set! o::rtl_vset v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_vset-loc::obj o::rtl_vset) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_vset-loc-set! o::rtl_vset v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_boxset
(define-inline (make-rtl_boxset::rtl_boxset loc1392::obj) (instantiate::rtl_boxset (loc loc1392)))
(define-inline (rtl_boxset?::bool obj::obj) ((@ isa? __object) obj (@ rtl_boxset saw_defs)))
(define (rtl_boxset-nil::rtl_boxset) (class-nil (@ rtl_boxset saw_defs)))
(define-inline (rtl_boxset-loc::obj o::rtl_boxset) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_boxset-loc-set! o::rtl_boxset v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_new
(define-inline (make-rtl_new::rtl_new loc1388::obj type1389::type constr1390::pair-nil) (instantiate::rtl_new (loc loc1388) (type type1389) (constr constr1390)))
(define-inline (rtl_new?::bool obj::obj) ((@ isa? __object) obj (@ rtl_new saw_defs)))
(define (rtl_new-nil::rtl_new) (class-nil (@ rtl_new saw_defs)))
(define-inline (rtl_new-constr::pair-nil o::rtl_new) (-> |#!bigloo_wallow| o constr))
(define-inline (rtl_new-constr-set! o::rtl_new v::pair-nil) (set! (-> |#!bigloo_wallow| o constr) v))
(define-inline (rtl_new-type::type o::rtl_new) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_new-type-set! o::rtl_new v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_new-loc::obj o::rtl_new) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_new-loc-set! o::rtl_new v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_call
(define-inline (make-rtl_call::rtl_call loc1385::obj var1386::global) (instantiate::rtl_call (loc loc1385) (var var1386)))
(define-inline (rtl_call?::bool obj::obj) ((@ isa? __object) obj (@ rtl_call saw_defs)))
(define (rtl_call-nil::rtl_call) (class-nil (@ rtl_call saw_defs)))
(define-inline (rtl_call-var::global o::rtl_call) (-> |#!bigloo_wallow| o var))
(define-inline (rtl_call-var-set! o::rtl_call v::global) (set! (-> |#!bigloo_wallow| o var) v))
(define-inline (rtl_call-loc::obj o::rtl_call) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_call-loc-set! o::rtl_call v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_apply
(define-inline (make-rtl_apply::rtl_apply loc1382::obj) (instantiate::rtl_apply (loc loc1382)))
(define-inline (rtl_apply?::bool obj::obj) ((@ isa? __object) obj (@ rtl_apply saw_defs)))
(define (rtl_apply-nil::rtl_apply) (class-nil (@ rtl_apply saw_defs)))
(define-inline (rtl_apply-loc::obj o::rtl_apply) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_apply-loc-set! o::rtl_apply v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_lightfuncall
(define-inline (make-rtl_lightfuncall::rtl_lightfuncall loc1377::obj name1378::symbol funs1379::pair-nil rettype1380::obj) (instantiate::rtl_lightfuncall (loc loc1377) (name name1378) (funs funs1379) (rettype rettype1380)))
(define-inline (rtl_lightfuncall?::bool obj::obj) ((@ isa? __object) obj (@ rtl_lightfuncall saw_defs)))
(define (rtl_lightfuncall-nil::rtl_lightfuncall) (class-nil (@ rtl_lightfuncall saw_defs)))
(define-inline (rtl_lightfuncall-rettype::obj o::rtl_lightfuncall) (-> |#!bigloo_wallow| o rettype))
(define-inline (rtl_lightfuncall-rettype-set! o::rtl_lightfuncall v::obj) (set! (-> |#!bigloo_wallow| o rettype) v))
(define-inline (rtl_lightfuncall-funs::pair-nil o::rtl_lightfuncall) (-> |#!bigloo_wallow| o funs))
(define-inline (rtl_lightfuncall-funs-set! o::rtl_lightfuncall v::pair-nil) (set! (-> |#!bigloo_wallow| o funs) v))
(define-inline (rtl_lightfuncall-name::symbol o::rtl_lightfuncall) (-> |#!bigloo_wallow| o name))
(define-inline (rtl_lightfuncall-name-set! o::rtl_lightfuncall v::symbol) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (rtl_lightfuncall-loc::obj o::rtl_lightfuncall) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_lightfuncall-loc-set! o::rtl_lightfuncall v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_funcall
(define-inline (make-rtl_funcall::rtl_funcall loc1374::obj) (instantiate::rtl_funcall (loc loc1374)))
(define-inline (rtl_funcall?::bool obj::obj) ((@ isa? __object) obj (@ rtl_funcall saw_defs)))
(define (rtl_funcall-nil::rtl_funcall) (class-nil (@ rtl_funcall saw_defs)))
(define-inline (rtl_funcall-loc::obj o::rtl_funcall) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_funcall-loc-set! o::rtl_funcall v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_pragma
(define-inline (make-rtl_pragma::rtl_pragma loc1371::obj format1372::bstring) (instantiate::rtl_pragma (loc loc1371) (format format1372)))
(define-inline (rtl_pragma?::bool obj::obj) ((@ isa? __object) obj (@ rtl_pragma saw_defs)))
(define (rtl_pragma-nil::rtl_pragma) (class-nil (@ rtl_pragma saw_defs)))
(define-inline (rtl_pragma-format::bstring o::rtl_pragma) (-> |#!bigloo_wallow| o format))
(define-inline (rtl_pragma-format-set! o::rtl_pragma v::bstring) (set! (-> |#!bigloo_wallow| o format) v))
(define-inline (rtl_pragma-loc::obj o::rtl_pragma) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_pragma-loc-set! o::rtl_pragma v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_cast
(define-inline (make-rtl_cast::rtl_cast loc1367::obj totype1368::type fromtype1369::type) (instantiate::rtl_cast (loc loc1367) (totype totype1368) (fromtype fromtype1369)))
(define-inline (rtl_cast?::bool obj::obj) ((@ isa? __object) obj (@ rtl_cast saw_defs)))
(define (rtl_cast-nil::rtl_cast) (class-nil (@ rtl_cast saw_defs)))
(define-inline (rtl_cast-fromtype::type o::rtl_cast) (-> |#!bigloo_wallow| o fromtype))
(define-inline (rtl_cast-fromtype-set! o::rtl_cast v::type) (set! (-> |#!bigloo_wallow| o fromtype) v))
(define-inline (rtl_cast-totype::type o::rtl_cast) (-> |#!bigloo_wallow| o totype))
(define-inline (rtl_cast-totype-set! o::rtl_cast v::type) (set! (-> |#!bigloo_wallow| o totype) v))
(define-inline (rtl_cast-loc::obj o::rtl_cast) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_cast-loc-set! o::rtl_cast v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_cast_null
(define-inline (make-rtl_cast_null::rtl_cast_null loc1364::obj type1365::type) (instantiate::rtl_cast_null (loc loc1364) (type type1365)))
(define-inline (rtl_cast_null?::bool obj::obj) ((@ isa? __object) obj (@ rtl_cast_null saw_defs)))
(define (rtl_cast_null-nil::rtl_cast_null) (class-nil (@ rtl_cast_null saw_defs)))
(define-inline (rtl_cast_null-type::type o::rtl_cast_null) (-> |#!bigloo_wallow| o type))
(define-inline (rtl_cast_null-type-set! o::rtl_cast_null v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (rtl_cast_null-loc::obj o::rtl_cast_null) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_cast_null-loc-set! o::rtl_cast_null v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_protect
(define-inline (make-rtl_protect::rtl_protect loc1361::obj) (instantiate::rtl_protect (loc loc1361)))
(define-inline (rtl_protect?::bool obj::obj) ((@ isa? __object) obj (@ rtl_protect saw_defs)))
(define (rtl_protect-nil::rtl_protect) (class-nil (@ rtl_protect saw_defs)))
(define-inline (rtl_protect-loc::obj o::rtl_protect) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_protect-loc-set! o::rtl_protect v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_protected
(define-inline (make-rtl_protected::rtl_protected loc1358::obj) (instantiate::rtl_protected (loc loc1358)))
(define-inline (rtl_protected?::bool obj::obj) ((@ isa? __object) obj (@ rtl_protected saw_defs)))
(define (rtl_protected-nil::rtl_protected) (class-nil (@ rtl_protected saw_defs)))
(define-inline (rtl_protected-loc::obj o::rtl_protected) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_protected-loc-set! o::rtl_protected v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; rtl_ins
(define-inline (make-rtl_ins::rtl_ins loc1352::obj %spill1353::pair-nil dest1354::obj fun1355::rtl_fun args1356::pair-nil) (instantiate::rtl_ins (loc loc1352) (%spill %spill1353) (dest dest1354) (fun fun1355) (args args1356)))
(define-inline (rtl_ins?::bool obj::obj) ((@ isa? __object) obj (@ rtl_ins saw_defs)))
(define (rtl_ins-nil::rtl_ins) (class-nil (@ rtl_ins saw_defs)))
(define-inline (rtl_ins-args::pair-nil o::rtl_ins) (-> |#!bigloo_wallow| o args))
(define-inline (rtl_ins-args-set! o::rtl_ins v::pair-nil) (set! (-> |#!bigloo_wallow| o args) v))
(define-inline (rtl_ins-fun::rtl_fun o::rtl_ins) (-> |#!bigloo_wallow| o fun))
(define-inline (rtl_ins-fun-set! o::rtl_ins v::rtl_fun) (set! (-> |#!bigloo_wallow| o fun) v))
(define-inline (rtl_ins-dest::obj o::rtl_ins) (-> |#!bigloo_wallow| o dest))
(define-inline (rtl_ins-dest-set! o::rtl_ins v::obj) (set! (-> |#!bigloo_wallow| o dest) v))
(define-inline (rtl_ins-%spill::pair-nil o::rtl_ins) (-> |#!bigloo_wallow| o %spill))
(define-inline (rtl_ins-%spill-set! o::rtl_ins v::pair-nil) (set! (-> |#!bigloo_wallow| o %spill) v))
(define-inline (rtl_ins-loc::obj o::rtl_ins) (-> |#!bigloo_wallow| o loc))
(define-inline (rtl_ins-loc-set! o::rtl_ins v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; block
(define-inline (make-block::block label1347::int preds1348::pair-nil succs1349::pair-nil first1350::pair-nil) (instantiate::block (label label1347) (preds preds1348) (succs succs1349) (first first1350)))
(define-inline (block?::bool obj::obj) ((@ isa? __object) obj (@ block saw_defs)))
(define (block-nil::block) (class-nil (@ block saw_defs)))
(define-inline (block-first::pair-nil o::block) (-> |#!bigloo_wallow| o first))
(define-inline (block-first-set! o::block v::pair-nil) (set! (-> |#!bigloo_wallow| o first) v))
(define-inline (block-succs::pair-nil o::block) (-> |#!bigloo_wallow| o succs))
(define-inline (block-succs-set! o::block v::pair-nil) (set! (-> |#!bigloo_wallow| o succs) v))
(define-inline (block-preds::pair-nil o::block) (-> |#!bigloo_wallow| o preds))
(define-inline (block-preds-set! o::block v::pair-nil) (set! (-> |#!bigloo_wallow| o preds) v))
(define-inline (block-label::int o::block) (-> |#!bigloo_wallow| o label))
(define-inline (block-label-set! o::block v::int) (set! (-> |#!bigloo_wallow| o label) v))
))
