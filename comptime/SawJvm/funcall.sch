;; ==========================================================
;; Class accessors
;; Bigloo (3.7b)
;; Inria -- Sophia Antipolis     Mon Nov 14 19:08:36 CET 2011 
;; (bigloo.new -classgen SawJvm/funcall.scm)
;; ==========================================================

;; The directives
(directives

;; indexed
(cond-expand ((and bigloo-class-sans (not bigloo-class-generate))
  (export
    (inline make-indexed::indexed id1225::symbol name1226::obj type1227::type value1228::value access1229::obj fast-alpha1230::obj removable1231::obj occurrence1232::long occurrencew1233::long user?1234::bool module1235::symbol import1236::obj evaluable?1237::bool eval?1238::bool library1239::obj pragma1240::obj src1241::obj jvm-type-name1242::bstring init1243::obj index1244::int)
    (inline indexed?::bool ::obj)
    (indexed-nil::indexed)
    (inline indexed-index::int ::indexed)
    (inline indexed-index-set! ::indexed ::int)
    (inline indexed-init::obj ::indexed)
    (inline indexed-init-set! ::indexed ::obj)
    (inline indexed-jvm-type-name::bstring ::indexed)
    (inline indexed-jvm-type-name-set! ::indexed ::bstring)
    (inline indexed-src::obj ::indexed)
    (inline indexed-src-set! ::indexed ::obj)
    (inline indexed-pragma::obj ::indexed)
    (inline indexed-pragma-set! ::indexed ::obj)
    (inline indexed-library::obj ::indexed)
    (inline indexed-library-set! ::indexed ::obj)
    (inline indexed-eval?::bool ::indexed)
    (inline indexed-eval?-set! ::indexed ::bool)
    (inline indexed-evaluable?::bool ::indexed)
    (inline indexed-evaluable?-set! ::indexed ::bool)
    (inline indexed-import::obj ::indexed)
    (inline indexed-import-set! ::indexed ::obj)
    (inline indexed-module::symbol ::indexed)
    (inline indexed-module-set! ::indexed ::symbol)
    (inline indexed-user?::bool ::indexed)
    (inline indexed-user?-set! ::indexed ::bool)
    (inline indexed-occurrencew::long ::indexed)
    (inline indexed-occurrencew-set! ::indexed ::long)
    (inline indexed-occurrence::long ::indexed)
    (inline indexed-occurrence-set! ::indexed ::long)
    (inline indexed-removable::obj ::indexed)
    (inline indexed-removable-set! ::indexed ::obj)
    (inline indexed-fast-alpha::obj ::indexed)
    (inline indexed-fast-alpha-set! ::indexed ::obj)
    (inline indexed-access::obj ::indexed)
    (inline indexed-access-set! ::indexed ::obj)
    (inline indexed-value::value ::indexed)
    (inline indexed-value-set! ::indexed ::value)
    (inline indexed-type::type ::indexed)
    (inline indexed-type-set! ::indexed ::type)
    (inline indexed-name::obj ::indexed)
    (inline indexed-name-set! ::indexed ::obj)
    (inline indexed-id::symbol ::indexed)))))

;; The definitions
(cond-expand (bigloo-class-sans
;; indexed
(define-inline (make-indexed::indexed id1225::symbol name1226::obj type1227::type value1228::value access1229::obj fast-alpha1230::obj removable1231::obj occurrence1232::long occurrencew1233::long user?1234::bool module1235::symbol import1236::obj evaluable?1237::bool eval?1238::bool library1239::obj pragma1240::obj src1241::obj jvm-type-name1242::bstring init1243::obj index1244::int) (instantiate::indexed (id id1225) (name name1226) (type type1227) (value value1228) (access access1229) (fast-alpha fast-alpha1230) (removable removable1231) (occurrence occurrence1232) (occurrencew occurrencew1233) (user? user?1234) (module module1235) (import import1236) (evaluable? evaluable?1237) (eval? eval?1238) (library library1239) (pragma pragma1240) (src src1241) (jvm-type-name jvm-type-name1242) (init init1243) (index index1244)))
(define-inline (indexed?::bool obj::obj) ((@ isa? __object) obj (@ indexed saw_jvm_funcall)))
(define (indexed-nil::indexed) (class-nil (@ indexed saw_jvm_funcall)))
(define-inline (indexed-index::int o::indexed) (with-access::indexed o (index) index))
(define-inline (indexed-index-set! o::indexed v::int) (with-access::indexed o (index) (set! index v)))
(define-inline (indexed-init::obj o::indexed) (with-access::indexed o (init) init))
(define-inline (indexed-init-set! o::indexed v::obj) (with-access::indexed o (init) (set! init v)))
(define-inline (indexed-jvm-type-name::bstring o::indexed) (with-access::indexed o (jvm-type-name) jvm-type-name))
(define-inline (indexed-jvm-type-name-set! o::indexed v::bstring) (with-access::indexed o (jvm-type-name) (set! jvm-type-name v)))
(define-inline (indexed-src::obj o::indexed) (with-access::indexed o (src) src))
(define-inline (indexed-src-set! o::indexed v::obj) (with-access::indexed o (src) (set! src v)))
(define-inline (indexed-pragma::obj o::indexed) (with-access::indexed o (pragma) pragma))
(define-inline (indexed-pragma-set! o::indexed v::obj) (with-access::indexed o (pragma) (set! pragma v)))
(define-inline (indexed-library::obj o::indexed) (with-access::indexed o (library) library))
(define-inline (indexed-library-set! o::indexed v::obj) (with-access::indexed o (library) (set! library v)))
(define-inline (indexed-eval?::bool o::indexed) (with-access::indexed o (eval?) eval?))
(define-inline (indexed-eval?-set! o::indexed v::bool) (with-access::indexed o (eval?) (set! eval? v)))
(define-inline (indexed-evaluable?::bool o::indexed) (with-access::indexed o (evaluable?) evaluable?))
(define-inline (indexed-evaluable?-set! o::indexed v::bool) (with-access::indexed o (evaluable?) (set! evaluable? v)))
(define-inline (indexed-import::obj o::indexed) (with-access::indexed o (import) import))
(define-inline (indexed-import-set! o::indexed v::obj) (with-access::indexed o (import) (set! import v)))
(define-inline (indexed-module::symbol o::indexed) (with-access::indexed o (module) module))
(define-inline (indexed-module-set! o::indexed v::symbol) (with-access::indexed o (module) (set! module v)))
(define-inline (indexed-user?::bool o::indexed) (with-access::indexed o (user?) user?))
(define-inline (indexed-user?-set! o::indexed v::bool) (with-access::indexed o (user?) (set! user? v)))
(define-inline (indexed-occurrencew::long o::indexed) (with-access::indexed o (occurrencew) occurrencew))
(define-inline (indexed-occurrencew-set! o::indexed v::long) (with-access::indexed o (occurrencew) (set! occurrencew v)))
(define-inline (indexed-occurrence::long o::indexed) (with-access::indexed o (occurrence) occurrence))
(define-inline (indexed-occurrence-set! o::indexed v::long) (with-access::indexed o (occurrence) (set! occurrence v)))
(define-inline (indexed-removable::obj o::indexed) (with-access::indexed o (removable) removable))
(define-inline (indexed-removable-set! o::indexed v::obj) (with-access::indexed o (removable) (set! removable v)))
(define-inline (indexed-fast-alpha::obj o::indexed) (with-access::indexed o (fast-alpha) fast-alpha))
(define-inline (indexed-fast-alpha-set! o::indexed v::obj) (with-access::indexed o (fast-alpha) (set! fast-alpha v)))
(define-inline (indexed-access::obj o::indexed) (with-access::indexed o (access) access))
(define-inline (indexed-access-set! o::indexed v::obj) (with-access::indexed o (access) (set! access v)))
(define-inline (indexed-value::value o::indexed) (with-access::indexed o (value) value))
(define-inline (indexed-value-set! o::indexed v::value) (with-access::indexed o (value) (set! value v)))
(define-inline (indexed-type::type o::indexed) (with-access::indexed o (type) type))
(define-inline (indexed-type-set! o::indexed v::type) (with-access::indexed o (type) (set! type v)))
(define-inline (indexed-name::obj o::indexed) (with-access::indexed o (name) name))
(define-inline (indexed-name-set! o::indexed v::obj) (with-access::indexed o (name) (set! name v)))
(define-inline (indexed-id::symbol o::indexed) (with-access::indexed o (id) id))
(define-inline (indexed-id-set! o::indexed v::symbol) (with-access::indexed o (id) (set! id v)))
))