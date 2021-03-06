;; ==========================================================
;; Class accessors
;; Bigloo (4.3i)
;; Inria -- Sophia Antipolis     Sun 12 Jul 2020 09:58:27 AM CEST 
;; (bigloo -classgen Ast/var.scm)
;; ==========================================================

;; The directives
(directives

;; value
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-value::value)
    (inline value?::bool ::obj)
    (value-nil::value))))

;; variable
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-variable::variable id1273::symbol name1274::obj type1275::type value1276::value access1277::obj fast-alpha1278::obj removable1279::obj occurrence1280::long occurrencew1281::long user?1282::bool)
    (inline variable?::bool ::obj)
    (variable-nil::variable)
    (inline variable-user?::bool ::variable)
    (inline variable-user?-set! ::variable ::bool)
    (inline variable-occurrencew::long ::variable)
    (inline variable-occurrencew-set! ::variable ::long)
    (inline variable-occurrence::long ::variable)
    (inline variable-occurrence-set! ::variable ::long)
    (inline variable-removable::obj ::variable)
    (inline variable-removable-set! ::variable ::obj)
    (inline variable-fast-alpha::obj ::variable)
    (inline variable-fast-alpha-set! ::variable ::obj)
    (inline variable-access::obj ::variable)
    (inline variable-access-set! ::variable ::obj)
    (inline variable-value::value ::variable)
    (inline variable-value-set! ::variable ::value)
    (inline variable-type::type ::variable)
    (inline variable-type-set! ::variable ::type)
    (inline variable-name::obj ::variable)
    (inline variable-name-set! ::variable ::obj)
    (inline variable-id::symbol ::variable))))

;; global
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-global::global id1252::symbol name1253::obj type1254::type value1255::value access1256::obj fast-alpha1257::obj removable1258::obj occurrence1259::long occurrencew1260::long user?1261::bool module1262::symbol import1263::obj evaluable?1264::bool eval?1265::bool library1266::obj pragma1267::obj src1268::obj jvm-type-name1269::bstring init1270::obj alias1271::obj)
    (inline global?::bool ::obj)
    (global-nil::global)
    (inline global-alias::obj ::global)
    (inline global-alias-set! ::global ::obj)
    (inline global-init::obj ::global)
    (inline global-init-set! ::global ::obj)
    (inline global-jvm-type-name::bstring ::global)
    (inline global-jvm-type-name-set! ::global ::bstring)
    (inline global-src::obj ::global)
    (inline global-src-set! ::global ::obj)
    (inline global-pragma::obj ::global)
    (inline global-pragma-set! ::global ::obj)
    (inline global-library::obj ::global)
    (inline global-library-set! ::global ::obj)
    (inline global-eval?::bool ::global)
    (inline global-eval?-set! ::global ::bool)
    (inline global-evaluable?::bool ::global)
    (inline global-evaluable?-set! ::global ::bool)
    (inline global-import::obj ::global)
    (inline global-import-set! ::global ::obj)
    (inline global-module::symbol ::global)
    (inline global-module-set! ::global ::symbol)
    (inline global-user?::bool ::global)
    (inline global-user?-set! ::global ::bool)
    (inline global-occurrencew::long ::global)
    (inline global-occurrencew-set! ::global ::long)
    (inline global-occurrence::long ::global)
    (inline global-occurrence-set! ::global ::long)
    (inline global-removable::obj ::global)
    (inline global-removable-set! ::global ::obj)
    (inline global-fast-alpha::obj ::global)
    (inline global-fast-alpha-set! ::global ::obj)
    (inline global-access::obj ::global)
    (inline global-access-set! ::global ::obj)
    (inline global-value::value ::global)
    (inline global-value-set! ::global ::value)
    (inline global-type::type ::global)
    (inline global-type-set! ::global ::type)
    (inline global-name::obj ::global)
    (inline global-name-set! ::global ::obj)
    (inline global-id::symbol ::global))))

;; local
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-local::local id1240::symbol name1241::obj type1242::type value1243::value access1244::obj fast-alpha1245::obj removable1246::obj occurrence1247::long occurrencew1248::long user?1249::bool key1250::long)
    (inline local?::bool ::obj)
    (local-nil::local)
    (inline local-key::long ::local)
    (inline local-user?::bool ::local)
    (inline local-user?-set! ::local ::bool)
    (inline local-occurrencew::long ::local)
    (inline local-occurrencew-set! ::local ::long)
    (inline local-occurrence::long ::local)
    (inline local-occurrence-set! ::local ::long)
    (inline local-removable::obj ::local)
    (inline local-removable-set! ::local ::obj)
    (inline local-fast-alpha::obj ::local)
    (inline local-fast-alpha-set! ::local ::obj)
    (inline local-access::obj ::local)
    (inline local-access-set! ::local ::obj)
    (inline local-value::value ::local)
    (inline local-value-set! ::local ::value)
    (inline local-type::type ::local)
    (inline local-type-set! ::local ::type)
    (inline local-name::obj ::local)
    (inline local-name-set! ::local ::obj)
    (inline local-id::symbol ::local))))

;; fun
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-fun::fun arity1230::long side-effect1231::obj predicate-of1232::obj stack-allocator1233::obj top?1234::bool the-closure1235::obj effect1236::obj failsafe1237::obj args-noescape1238::obj)
    (inline fun?::bool ::obj)
    (fun-nil::fun)
    (inline fun-args-noescape::obj ::fun)
    (inline fun-args-noescape-set! ::fun ::obj)
    (inline fun-failsafe::obj ::fun)
    (inline fun-failsafe-set! ::fun ::obj)
    (inline fun-effect::obj ::fun)
    (inline fun-effect-set! ::fun ::obj)
    (inline fun-the-closure::obj ::fun)
    (inline fun-the-closure-set! ::fun ::obj)
    (inline fun-top?::bool ::fun)
    (inline fun-top?-set! ::fun ::bool)
    (inline fun-stack-allocator::obj ::fun)
    (inline fun-stack-allocator-set! ::fun ::obj)
    (inline fun-predicate-of::obj ::fun)
    (inline fun-predicate-of-set! ::fun ::obj)
    (inline fun-side-effect::obj ::fun)
    (inline fun-side-effect-set! ::fun ::obj)
    (inline fun-arity::long ::fun))))

;; sfun
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-sfun::sfun arity1208::long side-effect1209::obj predicate-of1210::obj stack-allocator1211::obj top?1212::bool the-closure1213::obj effect1214::obj failsafe1215::obj args-noescape1216::obj property1217::obj args1218::obj args-name1219::obj body1220::obj class1221::obj dsssl-keywords1222::obj loc1223::obj optionals1224::obj keys1225::obj the-closure-global1226::obj strength1227::symbol stackable1228::obj)
    (inline sfun?::bool ::obj)
    (sfun-nil::sfun)
    (inline sfun-stackable::obj ::sfun)
    (inline sfun-stackable-set! ::sfun ::obj)
    (inline sfun-strength::symbol ::sfun)
    (inline sfun-strength-set! ::sfun ::symbol)
    (inline sfun-the-closure-global::obj ::sfun)
    (inline sfun-the-closure-global-set! ::sfun ::obj)
    (inline sfun-keys::obj ::sfun)
    (inline sfun-optionals::obj ::sfun)
    (inline sfun-loc::obj ::sfun)
    (inline sfun-loc-set! ::sfun ::obj)
    (inline sfun-dsssl-keywords::obj ::sfun)
    (inline sfun-dsssl-keywords-set! ::sfun ::obj)
    (inline sfun-class::obj ::sfun)
    (inline sfun-class-set! ::sfun ::obj)
    (inline sfun-body::obj ::sfun)
    (inline sfun-body-set! ::sfun ::obj)
    (inline sfun-args-name::obj ::sfun)
    (inline sfun-args::obj ::sfun)
    (inline sfun-args-set! ::sfun ::obj)
    (inline sfun-property::obj ::sfun)
    (inline sfun-property-set! ::sfun ::obj)
    (inline sfun-args-noescape::obj ::sfun)
    (inline sfun-args-noescape-set! ::sfun ::obj)
    (inline sfun-failsafe::obj ::sfun)
    (inline sfun-failsafe-set! ::sfun ::obj)
    (inline sfun-effect::obj ::sfun)
    (inline sfun-effect-set! ::sfun ::obj)
    (inline sfun-the-closure::obj ::sfun)
    (inline sfun-the-closure-set! ::sfun ::obj)
    (inline sfun-top?::bool ::sfun)
    (inline sfun-top?-set! ::sfun ::bool)
    (inline sfun-stack-allocator::obj ::sfun)
    (inline sfun-stack-allocator-set! ::sfun ::obj)
    (inline sfun-predicate-of::obj ::sfun)
    (inline sfun-predicate-of-set! ::sfun ::obj)
    (inline sfun-side-effect::obj ::sfun)
    (inline sfun-side-effect-set! ::sfun ::obj)
    (inline sfun-arity::long ::sfun))))

;; cfun
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-cfun::cfun arity1194::long side-effect1195::obj predicate-of1196::obj stack-allocator1197::obj top?1198::bool the-closure1199::obj effect1200::obj failsafe1201::obj args-noescape1202::obj args-type1203::obj macro?1204::bool infix?1205::bool method1206::pair-nil)
    (inline cfun?::bool ::obj)
    (cfun-nil::cfun)
    (inline cfun-method::pair-nil ::cfun)
    (inline cfun-method-set! ::cfun ::pair-nil)
    (inline cfun-infix?::bool ::cfun)
    (inline cfun-infix?-set! ::cfun ::bool)
    (inline cfun-macro?::bool ::cfun)
    (inline cfun-args-type::obj ::cfun)
    (inline cfun-args-noescape::obj ::cfun)
    (inline cfun-args-noescape-set! ::cfun ::obj)
    (inline cfun-failsafe::obj ::cfun)
    (inline cfun-failsafe-set! ::cfun ::obj)
    (inline cfun-effect::obj ::cfun)
    (inline cfun-effect-set! ::cfun ::obj)
    (inline cfun-the-closure::obj ::cfun)
    (inline cfun-the-closure-set! ::cfun ::obj)
    (inline cfun-top?::bool ::cfun)
    (inline cfun-top?-set! ::cfun ::bool)
    (inline cfun-stack-allocator::obj ::cfun)
    (inline cfun-stack-allocator-set! ::cfun ::obj)
    (inline cfun-predicate-of::obj ::cfun)
    (inline cfun-predicate-of-set! ::cfun ::obj)
    (inline cfun-side-effect::obj ::cfun)
    (inline cfun-side-effect-set! ::cfun ::obj)
    (inline cfun-arity::long ::cfun))))

;; svar
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-svar::svar loc1192::obj)
    (inline svar?::bool ::obj)
    (svar-nil::svar)
    (inline svar-loc::obj ::svar)
    (inline svar-loc-set! ::svar ::obj))))

;; scnst
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-scnst::scnst node1187::obj class1188::obj loc1190::obj)
    (inline scnst?::bool ::obj)
    (scnst-nil::scnst)
    (inline scnst-loc::obj ::scnst)
    (inline scnst-loc-set! ::scnst ::obj)
    (inline scnst-class::obj ::scnst)
    (inline scnst-class-set! ::scnst ::obj)
    (inline scnst-node::obj ::scnst))))

;; cvar
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-cvar::cvar macro?1185::bool)
    (inline cvar?::bool ::obj)
    (cvar-nil::cvar)
    (inline cvar-macro?::bool ::cvar))))

;; sexit
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-sexit::sexit handler1181::obj detached?1182::bool)
    (inline sexit?::bool ::obj)
    (sexit-nil::sexit)
    (inline sexit-detached?::bool ::sexit)
    (inline sexit-detached?-set! ::sexit ::bool)
    (inline sexit-handler::obj ::sexit)
    (inline sexit-handler-set! ::sexit ::obj))))

;; feffect
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-feffect::feffect read1178::obj write1179::obj)
    (inline feffect?::bool ::obj)
    (feffect-nil::feffect)
    (inline feffect-write::obj ::feffect)
    (inline feffect-write-set! ::feffect ::obj)
    (inline feffect-read::obj ::feffect)
    (inline feffect-read-set! ::feffect ::obj)))))

;; The definitions
(cond-expand (bigloo-class-sans
;; value
(define-inline (make-value::value) (instantiate::value))
(define-inline (value?::bool obj::obj) ((@ isa? __object) obj (@ value ast_var)))
(define (value-nil::value) (class-nil (@ value ast_var)))

;; variable
(define-inline (make-variable::variable id1273::symbol name1274::obj type1275::type value1276::value access1277::obj fast-alpha1278::obj removable1279::obj occurrence1280::long occurrencew1281::long user?1282::bool) (instantiate::variable (id id1273) (name name1274) (type type1275) (value value1276) (access access1277) (fast-alpha fast-alpha1278) (removable removable1279) (occurrence occurrence1280) (occurrencew occurrencew1281) (user? user?1282)))
(define-inline (variable?::bool obj::obj) ((@ isa? __object) obj (@ variable ast_var)))
(define (variable-nil::variable) (class-nil (@ variable ast_var)))
(define-inline (variable-user?::bool o::variable) (-> |#!bigloo_wallow| o user?))
(define-inline (variable-user?-set! o::variable v::bool) (set! (-> |#!bigloo_wallow| o user?) v))
(define-inline (variable-occurrencew::long o::variable) (-> |#!bigloo_wallow| o occurrencew))
(define-inline (variable-occurrencew-set! o::variable v::long) (set! (-> |#!bigloo_wallow| o occurrencew) v))
(define-inline (variable-occurrence::long o::variable) (-> |#!bigloo_wallow| o occurrence))
(define-inline (variable-occurrence-set! o::variable v::long) (set! (-> |#!bigloo_wallow| o occurrence) v))
(define-inline (variable-removable::obj o::variable) (-> |#!bigloo_wallow| o removable))
(define-inline (variable-removable-set! o::variable v::obj) (set! (-> |#!bigloo_wallow| o removable) v))
(define-inline (variable-fast-alpha::obj o::variable) (-> |#!bigloo_wallow| o fast-alpha))
(define-inline (variable-fast-alpha-set! o::variable v::obj) (set! (-> |#!bigloo_wallow| o fast-alpha) v))
(define-inline (variable-access::obj o::variable) (-> |#!bigloo_wallow| o access))
(define-inline (variable-access-set! o::variable v::obj) (set! (-> |#!bigloo_wallow| o access) v))
(define-inline (variable-value::value o::variable) (-> |#!bigloo_wallow| o value))
(define-inline (variable-value-set! o::variable v::value) (set! (-> |#!bigloo_wallow| o value) v))
(define-inline (variable-type::type o::variable) (-> |#!bigloo_wallow| o type))
(define-inline (variable-type-set! o::variable v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (variable-name::obj o::variable) (-> |#!bigloo_wallow| o name))
(define-inline (variable-name-set! o::variable v::obj) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (variable-id::symbol o::variable) (-> |#!bigloo_wallow| o id))
(define-inline (variable-id-set! o::variable v::symbol) (set! (-> |#!bigloo_wallow| o id) v))

;; global
(define-inline (make-global::global id1252::symbol name1253::obj type1254::type value1255::value access1256::obj fast-alpha1257::obj removable1258::obj occurrence1259::long occurrencew1260::long user?1261::bool module1262::symbol import1263::obj evaluable?1264::bool eval?1265::bool library1266::obj pragma1267::obj src1268::obj jvm-type-name1269::bstring init1270::obj alias1271::obj) (instantiate::global (id id1252) (name name1253) (type type1254) (value value1255) (access access1256) (fast-alpha fast-alpha1257) (removable removable1258) (occurrence occurrence1259) (occurrencew occurrencew1260) (user? user?1261) (module module1262) (import import1263) (evaluable? evaluable?1264) (eval? eval?1265) (library library1266) (pragma pragma1267) (src src1268) (jvm-type-name jvm-type-name1269) (init init1270) (alias alias1271)))
(define-inline (global?::bool obj::obj) ((@ isa? __object) obj (@ global ast_var)))
(define (global-nil::global) (class-nil (@ global ast_var)))
(define-inline (global-alias::obj o::global) (-> |#!bigloo_wallow| o alias))
(define-inline (global-alias-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o alias) v))
(define-inline (global-init::obj o::global) (-> |#!bigloo_wallow| o init))
(define-inline (global-init-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o init) v))
(define-inline (global-jvm-type-name::bstring o::global) (-> |#!bigloo_wallow| o jvm-type-name))
(define-inline (global-jvm-type-name-set! o::global v::bstring) (set! (-> |#!bigloo_wallow| o jvm-type-name) v))
(define-inline (global-src::obj o::global) (-> |#!bigloo_wallow| o src))
(define-inline (global-src-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o src) v))
(define-inline (global-pragma::obj o::global) (-> |#!bigloo_wallow| o pragma))
(define-inline (global-pragma-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o pragma) v))
(define-inline (global-library::obj o::global) (-> |#!bigloo_wallow| o library))
(define-inline (global-library-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o library) v))
(define-inline (global-eval?::bool o::global) (-> |#!bigloo_wallow| o eval?))
(define-inline (global-eval?-set! o::global v::bool) (set! (-> |#!bigloo_wallow| o eval?) v))
(define-inline (global-evaluable?::bool o::global) (-> |#!bigloo_wallow| o evaluable?))
(define-inline (global-evaluable?-set! o::global v::bool) (set! (-> |#!bigloo_wallow| o evaluable?) v))
(define-inline (global-import::obj o::global) (-> |#!bigloo_wallow| o import))
(define-inline (global-import-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o import) v))
(define-inline (global-module::symbol o::global) (-> |#!bigloo_wallow| o module))
(define-inline (global-module-set! o::global v::symbol) (set! (-> |#!bigloo_wallow| o module) v))
(define-inline (global-user?::bool o::global) (-> |#!bigloo_wallow| o user?))
(define-inline (global-user?-set! o::global v::bool) (set! (-> |#!bigloo_wallow| o user?) v))
(define-inline (global-occurrencew::long o::global) (-> |#!bigloo_wallow| o occurrencew))
(define-inline (global-occurrencew-set! o::global v::long) (set! (-> |#!bigloo_wallow| o occurrencew) v))
(define-inline (global-occurrence::long o::global) (-> |#!bigloo_wallow| o occurrence))
(define-inline (global-occurrence-set! o::global v::long) (set! (-> |#!bigloo_wallow| o occurrence) v))
(define-inline (global-removable::obj o::global) (-> |#!bigloo_wallow| o removable))
(define-inline (global-removable-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o removable) v))
(define-inline (global-fast-alpha::obj o::global) (-> |#!bigloo_wallow| o fast-alpha))
(define-inline (global-fast-alpha-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o fast-alpha) v))
(define-inline (global-access::obj o::global) (-> |#!bigloo_wallow| o access))
(define-inline (global-access-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o access) v))
(define-inline (global-value::value o::global) (-> |#!bigloo_wallow| o value))
(define-inline (global-value-set! o::global v::value) (set! (-> |#!bigloo_wallow| o value) v))
(define-inline (global-type::type o::global) (-> |#!bigloo_wallow| o type))
(define-inline (global-type-set! o::global v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (global-name::obj o::global) (-> |#!bigloo_wallow| o name))
(define-inline (global-name-set! o::global v::obj) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (global-id::symbol o::global) (-> |#!bigloo_wallow| o id))
(define-inline (global-id-set! o::global v::symbol) (set! (-> |#!bigloo_wallow| o id) v))

;; local
(define-inline (make-local::local id1240::symbol name1241::obj type1242::type value1243::value access1244::obj fast-alpha1245::obj removable1246::obj occurrence1247::long occurrencew1248::long user?1249::bool key1250::long) (instantiate::local (id id1240) (name name1241) (type type1242) (value value1243) (access access1244) (fast-alpha fast-alpha1245) (removable removable1246) (occurrence occurrence1247) (occurrencew occurrencew1248) (user? user?1249) (key key1250)))
(define-inline (local?::bool obj::obj) ((@ isa? __object) obj (@ local ast_var)))
(define (local-nil::local) (class-nil (@ local ast_var)))
(define-inline (local-key::long o::local) (-> |#!bigloo_wallow| o key))
(define-inline (local-key-set! o::local v::long) (set! (-> |#!bigloo_wallow| o key) v))
(define-inline (local-user?::bool o::local) (-> |#!bigloo_wallow| o user?))
(define-inline (local-user?-set! o::local v::bool) (set! (-> |#!bigloo_wallow| o user?) v))
(define-inline (local-occurrencew::long o::local) (-> |#!bigloo_wallow| o occurrencew))
(define-inline (local-occurrencew-set! o::local v::long) (set! (-> |#!bigloo_wallow| o occurrencew) v))
(define-inline (local-occurrence::long o::local) (-> |#!bigloo_wallow| o occurrence))
(define-inline (local-occurrence-set! o::local v::long) (set! (-> |#!bigloo_wallow| o occurrence) v))
(define-inline (local-removable::obj o::local) (-> |#!bigloo_wallow| o removable))
(define-inline (local-removable-set! o::local v::obj) (set! (-> |#!bigloo_wallow| o removable) v))
(define-inline (local-fast-alpha::obj o::local) (-> |#!bigloo_wallow| o fast-alpha))
(define-inline (local-fast-alpha-set! o::local v::obj) (set! (-> |#!bigloo_wallow| o fast-alpha) v))
(define-inline (local-access::obj o::local) (-> |#!bigloo_wallow| o access))
(define-inline (local-access-set! o::local v::obj) (set! (-> |#!bigloo_wallow| o access) v))
(define-inline (local-value::value o::local) (-> |#!bigloo_wallow| o value))
(define-inline (local-value-set! o::local v::value) (set! (-> |#!bigloo_wallow| o value) v))
(define-inline (local-type::type o::local) (-> |#!bigloo_wallow| o type))
(define-inline (local-type-set! o::local v::type) (set! (-> |#!bigloo_wallow| o type) v))
(define-inline (local-name::obj o::local) (-> |#!bigloo_wallow| o name))
(define-inline (local-name-set! o::local v::obj) (set! (-> |#!bigloo_wallow| o name) v))
(define-inline (local-id::symbol o::local) (-> |#!bigloo_wallow| o id))
(define-inline (local-id-set! o::local v::symbol) (set! (-> |#!bigloo_wallow| o id) v))

;; fun
(define-inline (make-fun::fun arity1230::long side-effect1231::obj predicate-of1232::obj stack-allocator1233::obj top?1234::bool the-closure1235::obj effect1236::obj failsafe1237::obj args-noescape1238::obj) (instantiate::fun (arity arity1230) (side-effect side-effect1231) (predicate-of predicate-of1232) (stack-allocator stack-allocator1233) (top? top?1234) (the-closure the-closure1235) (effect effect1236) (failsafe failsafe1237) (args-noescape args-noescape1238)))
(define-inline (fun?::bool obj::obj) ((@ isa? __object) obj (@ fun ast_var)))
(define (fun-nil::fun) (class-nil (@ fun ast_var)))
(define-inline (fun-args-noescape::obj o::fun) (-> |#!bigloo_wallow| o args-noescape))
(define-inline (fun-args-noescape-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o args-noescape) v))
(define-inline (fun-failsafe::obj o::fun) (-> |#!bigloo_wallow| o failsafe))
(define-inline (fun-failsafe-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o failsafe) v))
(define-inline (fun-effect::obj o::fun) (-> |#!bigloo_wallow| o effect))
(define-inline (fun-effect-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o effect) v))
(define-inline (fun-the-closure::obj o::fun) (-> |#!bigloo_wallow| o the-closure))
(define-inline (fun-the-closure-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o the-closure) v))
(define-inline (fun-top?::bool o::fun) (-> |#!bigloo_wallow| o top?))
(define-inline (fun-top?-set! o::fun v::bool) (set! (-> |#!bigloo_wallow| o top?) v))
(define-inline (fun-stack-allocator::obj o::fun) (-> |#!bigloo_wallow| o stack-allocator))
(define-inline (fun-stack-allocator-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o stack-allocator) v))
(define-inline (fun-predicate-of::obj o::fun) (-> |#!bigloo_wallow| o predicate-of))
(define-inline (fun-predicate-of-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o predicate-of) v))
(define-inline (fun-side-effect::obj o::fun) (-> |#!bigloo_wallow| o side-effect))
(define-inline (fun-side-effect-set! o::fun v::obj) (set! (-> |#!bigloo_wallow| o side-effect) v))
(define-inline (fun-arity::long o::fun) (-> |#!bigloo_wallow| o arity))
(define-inline (fun-arity-set! o::fun v::long) (set! (-> |#!bigloo_wallow| o arity) v))

;; sfun
(define-inline (make-sfun::sfun arity1208::long side-effect1209::obj predicate-of1210::obj stack-allocator1211::obj top?1212::bool the-closure1213::obj effect1214::obj failsafe1215::obj args-noescape1216::obj property1217::obj args1218::obj args-name1219::obj body1220::obj class1221::obj dsssl-keywords1222::obj loc1223::obj optionals1224::obj keys1225::obj the-closure-global1226::obj strength1227::symbol stackable1228::obj) (instantiate::sfun (arity arity1208) (side-effect side-effect1209) (predicate-of predicate-of1210) (stack-allocator stack-allocator1211) (top? top?1212) (the-closure the-closure1213) (effect effect1214) (failsafe failsafe1215) (args-noescape args-noescape1216) (property property1217) (args args1218) (args-name args-name1219) (body body1220) (class class1221) (dsssl-keywords dsssl-keywords1222) (loc loc1223) (optionals optionals1224) (keys keys1225) (the-closure-global the-closure-global1226) (strength strength1227) (stackable stackable1228)))
(define-inline (sfun?::bool obj::obj) ((@ isa? __object) obj (@ sfun ast_var)))
(define (sfun-nil::sfun) (class-nil (@ sfun ast_var)))
(define-inline (sfun-stackable::obj o::sfun) (-> |#!bigloo_wallow| o stackable))
(define-inline (sfun-stackable-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o stackable) v))
(define-inline (sfun-strength::symbol o::sfun) (-> |#!bigloo_wallow| o strength))
(define-inline (sfun-strength-set! o::sfun v::symbol) (set! (-> |#!bigloo_wallow| o strength) v))
(define-inline (sfun-the-closure-global::obj o::sfun) (-> |#!bigloo_wallow| o the-closure-global))
(define-inline (sfun-the-closure-global-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o the-closure-global) v))
(define-inline (sfun-keys::obj o::sfun) (-> |#!bigloo_wallow| o keys))
(define-inline (sfun-keys-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o keys) v))
(define-inline (sfun-optionals::obj o::sfun) (-> |#!bigloo_wallow| o optionals))
(define-inline (sfun-optionals-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o optionals) v))
(define-inline (sfun-loc::obj o::sfun) (-> |#!bigloo_wallow| o loc))
(define-inline (sfun-loc-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o loc) v))
(define-inline (sfun-dsssl-keywords::obj o::sfun) (-> |#!bigloo_wallow| o dsssl-keywords))
(define-inline (sfun-dsssl-keywords-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o dsssl-keywords) v))
(define-inline (sfun-class::obj o::sfun) (-> |#!bigloo_wallow| o class))
(define-inline (sfun-class-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o class) v))
(define-inline (sfun-body::obj o::sfun) (-> |#!bigloo_wallow| o body))
(define-inline (sfun-body-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o body) v))
(define-inline (sfun-args-name::obj o::sfun) (-> |#!bigloo_wallow| o args-name))
(define-inline (sfun-args-name-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o args-name) v))
(define-inline (sfun-args::obj o::sfun) (-> |#!bigloo_wallow| o args))
(define-inline (sfun-args-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o args) v))
(define-inline (sfun-property::obj o::sfun) (-> |#!bigloo_wallow| o property))
(define-inline (sfun-property-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o property) v))
(define-inline (sfun-args-noescape::obj o::sfun) (-> |#!bigloo_wallow| o args-noescape))
(define-inline (sfun-args-noescape-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o args-noescape) v))
(define-inline (sfun-failsafe::obj o::sfun) (-> |#!bigloo_wallow| o failsafe))
(define-inline (sfun-failsafe-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o failsafe) v))
(define-inline (sfun-effect::obj o::sfun) (-> |#!bigloo_wallow| o effect))
(define-inline (sfun-effect-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o effect) v))
(define-inline (sfun-the-closure::obj o::sfun) (-> |#!bigloo_wallow| o the-closure))
(define-inline (sfun-the-closure-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o the-closure) v))
(define-inline (sfun-top?::bool o::sfun) (-> |#!bigloo_wallow| o top?))
(define-inline (sfun-top?-set! o::sfun v::bool) (set! (-> |#!bigloo_wallow| o top?) v))
(define-inline (sfun-stack-allocator::obj o::sfun) (-> |#!bigloo_wallow| o stack-allocator))
(define-inline (sfun-stack-allocator-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o stack-allocator) v))
(define-inline (sfun-predicate-of::obj o::sfun) (-> |#!bigloo_wallow| o predicate-of))
(define-inline (sfun-predicate-of-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o predicate-of) v))
(define-inline (sfun-side-effect::obj o::sfun) (-> |#!bigloo_wallow| o side-effect))
(define-inline (sfun-side-effect-set! o::sfun v::obj) (set! (-> |#!bigloo_wallow| o side-effect) v))
(define-inline (sfun-arity::long o::sfun) (-> |#!bigloo_wallow| o arity))
(define-inline (sfun-arity-set! o::sfun v::long) (set! (-> |#!bigloo_wallow| o arity) v))

;; cfun
(define-inline (make-cfun::cfun arity1194::long side-effect1195::obj predicate-of1196::obj stack-allocator1197::obj top?1198::bool the-closure1199::obj effect1200::obj failsafe1201::obj args-noescape1202::obj args-type1203::obj macro?1204::bool infix?1205::bool method1206::pair-nil) (instantiate::cfun (arity arity1194) (side-effect side-effect1195) (predicate-of predicate-of1196) (stack-allocator stack-allocator1197) (top? top?1198) (the-closure the-closure1199) (effect effect1200) (failsafe failsafe1201) (args-noescape args-noescape1202) (args-type args-type1203) (macro? macro?1204) (infix? infix?1205) (method method1206)))
(define-inline (cfun?::bool obj::obj) ((@ isa? __object) obj (@ cfun ast_var)))
(define (cfun-nil::cfun) (class-nil (@ cfun ast_var)))
(define-inline (cfun-method::pair-nil o::cfun) (-> |#!bigloo_wallow| o method))
(define-inline (cfun-method-set! o::cfun v::pair-nil) (set! (-> |#!bigloo_wallow| o method) v))
(define-inline (cfun-infix?::bool o::cfun) (-> |#!bigloo_wallow| o infix?))
(define-inline (cfun-infix?-set! o::cfun v::bool) (set! (-> |#!bigloo_wallow| o infix?) v))
(define-inline (cfun-macro?::bool o::cfun) (-> |#!bigloo_wallow| o macro?))
(define-inline (cfun-macro?-set! o::cfun v::bool) (set! (-> |#!bigloo_wallow| o macro?) v))
(define-inline (cfun-args-type::obj o::cfun) (-> |#!bigloo_wallow| o args-type))
(define-inline (cfun-args-type-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o args-type) v))
(define-inline (cfun-args-noescape::obj o::cfun) (-> |#!bigloo_wallow| o args-noescape))
(define-inline (cfun-args-noescape-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o args-noescape) v))
(define-inline (cfun-failsafe::obj o::cfun) (-> |#!bigloo_wallow| o failsafe))
(define-inline (cfun-failsafe-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o failsafe) v))
(define-inline (cfun-effect::obj o::cfun) (-> |#!bigloo_wallow| o effect))
(define-inline (cfun-effect-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o effect) v))
(define-inline (cfun-the-closure::obj o::cfun) (-> |#!bigloo_wallow| o the-closure))
(define-inline (cfun-the-closure-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o the-closure) v))
(define-inline (cfun-top?::bool o::cfun) (-> |#!bigloo_wallow| o top?))
(define-inline (cfun-top?-set! o::cfun v::bool) (set! (-> |#!bigloo_wallow| o top?) v))
(define-inline (cfun-stack-allocator::obj o::cfun) (-> |#!bigloo_wallow| o stack-allocator))
(define-inline (cfun-stack-allocator-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o stack-allocator) v))
(define-inline (cfun-predicate-of::obj o::cfun) (-> |#!bigloo_wallow| o predicate-of))
(define-inline (cfun-predicate-of-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o predicate-of) v))
(define-inline (cfun-side-effect::obj o::cfun) (-> |#!bigloo_wallow| o side-effect))
(define-inline (cfun-side-effect-set! o::cfun v::obj) (set! (-> |#!bigloo_wallow| o side-effect) v))
(define-inline (cfun-arity::long o::cfun) (-> |#!bigloo_wallow| o arity))
(define-inline (cfun-arity-set! o::cfun v::long) (set! (-> |#!bigloo_wallow| o arity) v))

;; svar
(define-inline (make-svar::svar loc1192::obj) (instantiate::svar (loc loc1192)))
(define-inline (svar?::bool obj::obj) ((@ isa? __object) obj (@ svar ast_var)))
(define (svar-nil::svar) (class-nil (@ svar ast_var)))
(define-inline (svar-loc::obj o::svar) (-> |#!bigloo_wallow| o loc))
(define-inline (svar-loc-set! o::svar v::obj) (set! (-> |#!bigloo_wallow| o loc) v))

;; scnst
(define-inline (make-scnst::scnst node1187::obj class1188::obj loc1190::obj) (instantiate::scnst (node node1187) (class class1188) (loc loc1190)))
(define-inline (scnst?::bool obj::obj) ((@ isa? __object) obj (@ scnst ast_var)))
(define (scnst-nil::scnst) (class-nil (@ scnst ast_var)))
(define-inline (scnst-loc::obj o::scnst) (-> |#!bigloo_wallow| o loc))
(define-inline (scnst-loc-set! o::scnst v::obj) (set! (-> |#!bigloo_wallow| o loc) v))
(define-inline (scnst-class::obj o::scnst) (-> |#!bigloo_wallow| o class))
(define-inline (scnst-class-set! o::scnst v::obj) (set! (-> |#!bigloo_wallow| o class) v))
(define-inline (scnst-node::obj o::scnst) (-> |#!bigloo_wallow| o node))
(define-inline (scnst-node-set! o::scnst v::obj) (set! (-> |#!bigloo_wallow| o node) v))

;; cvar
(define-inline (make-cvar::cvar macro?1185::bool) (instantiate::cvar (macro? macro?1185)))
(define-inline (cvar?::bool obj::obj) ((@ isa? __object) obj (@ cvar ast_var)))
(define (cvar-nil::cvar) (class-nil (@ cvar ast_var)))
(define-inline (cvar-macro?::bool o::cvar) (-> |#!bigloo_wallow| o macro?))
(define-inline (cvar-macro?-set! o::cvar v::bool) (set! (-> |#!bigloo_wallow| o macro?) v))

;; sexit
(define-inline (make-sexit::sexit handler1181::obj detached?1182::bool) (instantiate::sexit (handler handler1181) (detached? detached?1182)))
(define-inline (sexit?::bool obj::obj) ((@ isa? __object) obj (@ sexit ast_var)))
(define (sexit-nil::sexit) (class-nil (@ sexit ast_var)))
(define-inline (sexit-detached?::bool o::sexit) (-> |#!bigloo_wallow| o detached?))
(define-inline (sexit-detached?-set! o::sexit v::bool) (set! (-> |#!bigloo_wallow| o detached?) v))
(define-inline (sexit-handler::obj o::sexit) (-> |#!bigloo_wallow| o handler))
(define-inline (sexit-handler-set! o::sexit v::obj) (set! (-> |#!bigloo_wallow| o handler) v))

;; feffect
(define-inline (make-feffect::feffect read1178::obj write1179::obj) (instantiate::feffect (read read1178) (write write1179)))
(define-inline (feffect?::bool obj::obj) ((@ isa? __object) obj (@ feffect ast_var)))
(define (feffect-nil::feffect) (class-nil (@ feffect ast_var)))
(define-inline (feffect-write::obj o::feffect) (-> |#!bigloo_wallow| o write))
(define-inline (feffect-write-set! o::feffect v::obj) (set! (-> |#!bigloo_wallow| o write) v))
(define-inline (feffect-read::obj o::feffect) (-> |#!bigloo_wallow| o read))
(define-inline (feffect-read-set! o::feffect v::obj) (set! (-> |#!bigloo_wallow| o read) v))
))
