#*---------------------------------------------------------------------*/
#*    Standard configuration                                           */
#*---------------------------------------------------------------------*/
include ../../../Makefile.buildconfig
include ../../../Makefile.config
include ../../../Makefile.misc

#*---------------------------------------------------------------------*/
#*    Compilers, Tools and Destinations                                */
#*---------------------------------------------------------------------*/
# the library name
TARGETNAME	= jabber
LIBNAME		= bigloo$(TARGETNAME)
# Directories
LIB         	= $(BOOTLIBDIR)
BIGLOO_SRC_DIR 	= Llib
DOTNET_SRC_DIR 	= DotNet
JAVA_SRC_DIR 	= Java
POSIX_SRC_DIR 	= Posix
MISC_SRC_DIR 	= Misc
# The heap file
HEAP_FILE	= $(LIB)/$(TARGETNAME).heap
HEAPJVM_FILE	= $(LIB)/$(TARGETNAME).jheap
# Where to store the library class files
PBASE		= bigloo.$(TARGETNAME)
CLASS_DIR	= objs/class_s/bigloo/$(TARGETNAME)
CLASS_EDIR	= objs/class_e/bigloo/$(TARGETNAME)
DOTNET_OBJ_DIR	= objs/dotnet_s
DOTNET_OBJ_EDIR	= objs/dotnet_e
# Bigloo compilation options
BLFLAGS		= $(BFLAGS) -I Llib -lib-dir $(BOOTLIBDIR)
# Flags to build a heap
BHEAPFLAGS	= -unsafe -q -mkaddheap -mkaddlib -L $(LIB) -I Llib \
                  -heap-library $(TARGETNAME)

#*---------------------------------------------------------------------*/
#*    Scheme extended objects                                          */
#*---------------------------------------------------------------------*/
_BGL_OBJECTS	= digest server-dialog server-param server-request socks tools xml

_OBJECTS	= $(_BGL_OBJECTS)
OBJECTS		= $(_OBJECTS:%=objs/%.o)
EOBJECTS	= objs/make-lib.o

BGL_CLASSES	= $(_OBJECTS:%=$(CLASS_DIR)/%.class)
BGL_ECLASSES	= $(CLASS_EDIR)/make-lib.class

BGL_DOTNET_OBJ	= $(_OBJECTS:%=$(DOTNET_OBJ_DIR)/%.obj)
BGL_DOTNET_EOBJ	= $(DOTNET_OBJ_EDIR)/make-lib.obj

_BGL_SOURCES	= $(_BGL_OBJECTS:%=$(BIGLOO_SRC_DIR)/%.scm)

SOURCES		= $(_BGL_SOURCES)
 
#*---------------------------------------------------------------------*/
#*    Sources                                                          */
#*---------------------------------------------------------------------*/
POPULATION	= $(SOURCES) \
                  $(MISC_SRC_DIR)/make-lib.scm \
                  $(MISC_SRC_DIR)/$(TARGETNAME).init \
                  Makefile

#*---------------------------------------------------------------------*/
#*    all                                                              */
#*---------------------------------------------------------------------*/
.PHONY: c jvm dotnet

all: c
	@ if [ "$(JVMBACKEND)" = "yes" ]; then \
             $(MAKE) jvm; \
	  fi
	@ if [ "$(DOTNETBACKEND)" = "yes" ]; then \
             $(MAKE) dotnet;  \
	  fi

c: init lib-c heap-c
jvm: init lib-jvm heap-jvm
dotnet: init lib-dotnet heap-jvm

#*---------------------------------------------------------------------*/
#*    Init                                                             */
#*---------------------------------------------------------------------*/
init: $(LIB)/$(TARGETNAME).init

$(LIB)/$(TARGETNAME).init: $(MISC_SRC_DIR)/$(TARGETNAME).init
	cp $^ $@

#*---------------------------------------------------------------------*/
#*    Suffixes                                                         */
#*---------------------------------------------------------------------*/
.SUFFIXES:
.SUFFIXES: .scm .bgl .class .java .o .cs .obj

#*---------------------------------------------------------------------*/
#*    The implicit rules                                               */
#*---------------------------------------------------------------------*/
objs/%.o: $(BIGLOO_SRC_DIR)/%.scm
	$(BIGLOO) $(EFLAGS) $(BLFLAGS) -copt $(CPICFLAGS) $< -o $@ -c

objs/%.o: $(MISC_SRC_DIR)/%.scm
	$(BIGLOO) $(EFLAGS) $(BFTFLAGS) -copt $(CPICFLAGS) -copt "-I $(POSIX_SRC_DIR)" $< -o $@ -c

$(CLASS_DIR)/%.class: $(BIGLOO_SRC_DIR)/%.scm
	$(BIGLOO) -jvm  $(EFLAGS) $(BJVMFLAGS) $(BLFLAGS) -c -jvm-purify $< -o $@

$(CLASS_EDIR)/%.class: $(MISC_SRC_DIR)/%.scm
	$(BIGLOO) -jvm  $(EFLAGS) $(BJVMFLAGS) $(BFTFLAGS) -c -jvm-purify $< -o $@

$(DOTNET_OBJ_DIR)/%.obj: $(BIGLOO_SRC_DIR)/%.scm
	$(BIGLOO) -dotnet \
            -dotnet-mono-workaround -dotnet-pnet-workaround \
             $(EFLAGS) $(BDOTNETFLAGS) $(BLFLAGS) -c -dotnet-managed $< -o $@

$(DOTNET_OBJ_EDIR)/%.obj: $(MISC_SRC_DIR)/%.scm
	$(BIGLOO) -dotnet \
            -dotnet-mono-workaround -dotnet-pnet-workaround \
             $(EFLAGS) $(BDOTNETFLAGS) $(BFTFLAGS) -c -dotnet-managed $< -o $@

#*---------------------------------------------------------------------*/
#*    The heap construction                                            */
#*---------------------------------------------------------------------*/
.PHONY: heap heap-c heap-jvm

heap: heap-c heap-jvm
heap-c: $(HEAP_FILE)
heap-jvm: $(HEAPJVM_FILE)

$(HEAP_FILE): .afile $(MISC_SRC_DIR)/make-lib.scm
	@ $(RM) -f $(HEAP_FILE)
	@ $(BIGLOO) $(EFLAGS) $(BHEAPFLAGS) $(MISC_SRC_DIR)/make-lib.scm -addheap $(HEAP_FILE)
	@ echo "$@ done..."
	@ echo "-------------------------------"

$(HEAPJVM_FILE): .jfile .afile $(MISC_SRC_DIR)/make-lib.scm
	@ $(RM) -f $(HEAPJVM_FILE)
	@ $(BIGLOO) -jvm $(EFLAGS) $(BHEAPFLAGS) $(MISC_SRC_DIR)/make-lib.scm -addheap $(HEAPJVM_FILE)
	@ echo "$@ done..."
	@ echo "-------------------------------"

#*---------------------------------------------------------------------*/
#*    lib                                                              */
#*---------------------------------------------------------------------*/
.PHONY: lib lib-c lib-jvm lib-dotnet

lib: lib-c lib-jvm lib-dotnet

#*--- lib-c -----------------------------------------------------------*/
lib-c: $(TAGS) .afile objs lib-c-static lib-c-shared

objs:
	mkdir -p $@

lib-c-static: $(LIB)/lib$(LIBNAME)_s-$(RELEASE).a \
              $(LIB)/lib$(LIBNAME)_u-$(RELEASE).a

lib-c-shared:
	if [ "$(SHAREDLIBRARYSUPPORT)" = "yes" ]; then \
           $(MAKE) lib-c.$(SHAREDSUFFIX); \
        fi

lib-c.$(SHAREDSUFFIX): $(LIB)/lib$(LIBNAME)_s-$(RELEASE).$(SHAREDSUFFIX) \
                       $(LIB)/lib$(LIBNAME)_u-$(RELEASE).$(SHAREDSUFFIX) \
                       $(LIB)/lib$(LIBNAME)_e-$(RELEASE).$(SHAREDSUFFIX)

$(LIB)/lib$(LIBNAME)_u-$(RELEASE).$(SHAREDSUFFIX): $(LIB)/lib$(LIBNAME)_s-$(RELEASE).$(SHAREDSUFFIX)
	@ cd $(LIB) && \
        $(RM) -f lib$(LIBNAME)_u-$(RELEASE).$(SHAREDSUFFIX) && \
        ln -s lib$(LIBNAME)_s-$(RELEASE).$(SHAREDSUFFIX) \
              lib$(LIBNAME)_u-$(RELEASE).$(SHAREDSUFFIX)

$(LIB)/lib$(LIBNAME)_s-$(RELEASE).$(SHAREDSUFFIX): .afile $(OBJECTS)
	@ $(MAKE) shared-lib \
             FORCELD=true \
             LIBDEST=$@ \
             SONAME=lib$(LIBNAME)_s-$(RELEASE).$(SHAREDSUFFIX) \
             CLOSELIBS="-lbigloo_s-$(RELEASE)"

$(LIB)/lib$(LIBNAME)_e-$(RELEASE).$(SHAREDSUFFIX): .afile $(EOBJECTS)
	@ $(MAKE) shared-lib \
             OBJECTS=$(EOBJECTS) \
             FORCELD=true \
             LIBDEST=$@ \
             SONAME=lib$(LIBNAME)_e-$(RELEASE).$(SHAREDSUFFIX) \
             LDLIBS="-l$(LIBNAME)_s-$(RELEASE) $(LDLIBS)" \
             CLOSELIBS="-l$(LIBNAME)_s-$(RELEASE) -lbigloo_s-$(RELEASE)"

$(LIB)/lib$(LIBNAME)_u-$(RELEASE).a: $(LIB)/lib$(LIBNAME)_s-$(RELEASE).a
	@ cd $(LIB) && \
        $(RM) -f lib$(LIBNAME)_u-$(RELEASE).a && \
        ln -s lib$(LIBNAME)_s-$(RELEASE).a lib$(LIBNAME)_u-$(RELEASE).a

$(LIB)/lib$(LIBNAME)_s-$(RELEASE).a: .afile $(OBJECTS)
	@ $(RM) -f $(LIB)/lib$(LIBNAME)_s-$(RELEASE).a
	@ $(AR) $(ARFLAGS) $(LIB)/lib$(LIBNAME)_s-$(RELEASE).a $(OBJECTS)
	@ $(RANLIB) $(LIB)/lib$(LIBNAME)_s-$(RELEASE).a
	@ echo "$@ done..."
	@ echo "-------------------------------"

#*--- lib-jvm ---------------------------------------------------------*/
lib-jvm: $(TAGS) $(CLASS_DIR) $(CLASS_EDIR) lib.zip

$(CLASS_DIR): 
	mkdir -p $(CLASS_DIR)

$(CLASS_EDIR): 
	mkdir -p $(CLASS_EDIR)

lib.zip: $(LIB)/bigloo$(TARGETNAME)_s-$(RELEASE).zip \
         $(LIB)/bigloo$(TARGETNAME)_e-$(RELEASE).zip

$(LIB)/bigloo$(TARGETNAME)_s-$(RELEASE).zip: .afile .jfile $(BGL_CLASSES)
	@ $(RM) -f $@
	@ (cd objs/class_s && \
	  $(ZIP) -q $(ZFLAGS) $@ $(CLASS_DIR:objs/class_s/%=%)/*.class)
	@ echo "$@ done..."
	@ echo "-------------------------------"

$(LIB)/bigloo$(TARGETNAME)_e-$(RELEASE).zip: .afile .jfile $(BGL_ECLASSES)
	@ $(RM) -f $@
	@ (cd objs/class_e && \
	  $(ZIP) -q $(ZFLAGS) $@ $(CLASS_EDIR:objs/class_e/%=%)/*.class)
	@ echo "$@ done..."
	@ echo "-------------------------------"

#*--- lib-dotnet ---------------------------------------------------------*/
lib-dotnet: $(TAGS) $(DOTNET_OBJ_DIR) $(DOTNET_OBJ_EDIR) lib.dll

$(DOTNET_OBJ_DIR):
	mkdir -p $(DOTNET_OBJ_DIR)

$(DOTNET_OBJ_EDIR):
	mkdir -p $(DOTNET_OBJ_EDIR)

lib.dll: $(LIB)/$(LIBNAME)_u-$(RELEASE).dll \
         $(LIB)/$(LIBNAME)_e-$(RELEASE).dll

$(LIB)/$(LIBNAME)_u-$(RELEASE).dll: .afile $(BGL_DOTNET_OBJ) $(DOTNET_OBJ_SRC)
	@ $(RM) -f $(LIB)/$(LIBNAME)_s-$(RELEASE).dll
	@ $(RM) -f $(LIB)/$(LIBNAME)_u-$(RELEASE).dll
	@ (cd $(DOTNET_OBJ_DIR) && \
	  $(DOTNETCSCC) \
		$(DOTNETFTDLLPATH) $(DOTNETLINKBIGLOODLL) \
                -shared -o $(LIB)/$(LIBNAME)_s-$(RELEASE).dll \
                $(DOTNET_OBJ_SRC:$(DOTNET_OBJ_DIR)/%=%) \
		$(BGL_DOTNET_OBJ:$(DOTNET_OBJ_DIR)/%=%))
	@ echo "$@ done..."
	 (cd objs/dotnet_s && \
	  $(DOTNETCSCC) \
		$(DOTNETFTDLLPATH) $(DOTNETLINKBIGLOODLL) \
                -shared -o $(LIB)/$(LIBNAME)_u-$(RELEASE).dll \
                $(DOTNET_OBJ_SRC:$(DOTNET_OBJ_DIR)/%=%) \
		$(BGL_DOTNET_OBJ:$(DOTNET_OBJ_DIR)/%=%))
	@ echo "$@ done..."
	@ echo "-------------------------------"

$(LIB)/$(LIBNAME)_e-$(RELEASE).dll: .afile $(BGL_DOTNET_EOBJ)
	@ $(RM) -f $(LIB)/$(LIBNAME)_e-$(RELEASE).dll
	@ (cd $(DOTNET_OBJ_EDIR) && \
	  $(DOTNETCSCC) \
		$(DOTNETFTDLLPATH) $(DOTNETLINKBIGLOODLL) \
                 -shared -o $(LIB)/$(LIBNAME)_e-$(RELEASE).dll \
                            $(LIB)/$(LIBNAME)_u-$(RELEASE).dll \
		$(BGL_DOTNET_EOBJ:$(DOTNET_OBJ_EDIR)/%=%))
	@ echo "$@ done..."
	@ echo "-------------------------------"

#*---------------------------------------------------------------------*/
#*    ude                                                              */
#*---------------------------------------------------------------------*/
.PHONY: ude
ude:
	@ $(MAKE) -f Makefile .afile .etags .jfile

.afile: $(SOURCES)
	@ $(BGLAFILE) -o .afile $(_BGL_SOURCES) 

.jfile: $(SOURCES)
	@ $(BGLJFILE) -o .jfile \
                   -I $(BIGLOO_SRC_DIR) -I $(MISC_SRC_DIR) \
                   -pbase $(PBASE) \
                   $(_BGL_OBJECTS:%=%.scm) make-lib.scm

.etags: $(SOURCES)
	@ $(BGLTAGS) -o .etags $(_BGL_SOURCES)

#*---------------------------------------------------------------------*/
#*    dep                                                              */
#*---------------------------------------------------------------------*/
.PHONY: dep
dep: 
	@(num=`grep -n '^#bdepend start' Makefile | awk -F: '{ print $$1}' -`;\
          head -n `expr $$num - 1` Makefile > /tmp/Makefile.aux)
	@ $(BGLDEPEND) -fno-mco \
                    -search-path $(BIGLOO_SRC_DIR) \
                    -strict-obj-dir objs \
                    $(_BGL_SOURCES) >> /tmp/Makefile.aux
	@ mv /tmp/Makefile.aux Makefile

#*---------------------------------------------------------------------*/
#*    stdclean                                                         */
#*---------------------------------------------------------------------*/
stdclean:
	$(RM) -f $(OBJECTS) $(_BGL_OBJECTS:%=%.c)
	$(RM) -f $(LIB)/lib$(LIBNAME)_s.$(SHAREDSUFFIX)
	$(RM) -f $(LIB)/lib$(LIBNAME)_u.$(SHAREDSUFFIX)
	$(RM) -f $(LIB)/lib$(LIBNAME)_e.$(SHAREDSUFFIX)
	$(RM) -f $(LIB)/bigloo$(TARGETNAME)_s-$(RELEASE).zip
	$(RM) -f $(LIB)/bigloo$(TARGETNAME)_u-$(RELEASE).zip
	$(RM) -f $(LIB)/bigloo$(TARGETNAME)_e-$(RELEASE).zip
	$(RM) -f $(LIB)/$(LIBNAME)_s-$(RELEASE).dll
	$(RM) -f $(LIB)/$(LIBNAME)_u-$(RELEASE).dll
	$(RM) -f $(LIB)/$(LIBNAME)_e-$(RELEASE).dll
	$(RM) -f $(LIB)/$(TARGETNAME).jheap $(LIB)/$(TARGETNAME).heap
	$(RM) -rf $(CLASS_DIR)
	$(RM) -rf $(DOTNET_OBJ_DIR)
	$(RM) -f *~
	$(RM) -f *.mco
	$(RM) -f *.ast

udeclean:
	$(RM) -f .afile .etags .jfile

cleanall: stdclean
	$(RM) -f $(LIB)/$(TARGETNAME).init

#*---------------------------------------------------------------------*/
#*    clean                                                            */
#*---------------------------------------------------------------------*/
clean: stdclean
	$(RM) -rf objs

cleanall: stdclean udeclean

distclean: cleanall
