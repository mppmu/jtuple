# Makefile to compile library libjtuple containing
# Jade ntuple code

# Fix PWD:
        PWD = $(shell pwd)

# IBM Fortran compiler/linker and other tools:
         FC = /usr/bin/xlf
     FFLAGS = -qsigtrap -g -qsave -qrndsngl -qmaxmem=-1 -qextname -qfloat=fltint:hsflt:hssngl:nans:rndsngl -qcharlen=32767 -qxlf77=leadzero -qfullpath -qctyplss -qintlog

         LD = $(FC)
    LDFLAGS = -g -Wl,-m,-bloadmap:MAIN.map,-bnoquiet

        AWK = /usr/local/bin/gawk

        GCC = /usr/local/bin/gcc

# Location of JADE libraries:
       JADE = /remote/pcl246/skluth/jade/test/jadesoft
   JADELIBS = interface jadegs boslib source zlib

# CERNLIB:
   CERNROOT = /cern/98
    CERNLIB = $(CERNROOT)/lib
   CERNLIBS = kernlib packlib mathlib graflib grafX11 X11

# Targets of libray with and without include files:
 LIBINCOBJS = jtevnt.o jtfnsh.o jtinit.o jtsetr.o
    LIBOBJS = casso.o cinfo.o cnass.o cnone.o cyjet.o \
              qqcone.o qqjets.o caxes.o ckern.o \
              cncnt.o cwrit.o qqangl.o \
              qqevsh.o cdble.o cksord.o cnjet.o cyget.o \
              qqckbk.o qqform.o px116.o

# Main target:
all : jtjob

# Link jtjob application:
jtjob : jtjob.o libjtlib.a
	$(LD) $(LDFLAGS) -o $@ $< $(JADE)/main/superv/showb.o \
	-L$(PWD) -ljtlib -L$(JADE)/lib $(patsubst %,-l%,$(JADELIBS)) \
	-L$(CERNLIB) $(patsubst %,-l%,$(CERNLIBS)) -lcurses >> MAIN.map

# Library depends on temporay .o files:
libjtlib.a : libjtlib.a( $(LIBOBJS) $(LIBINCOBJS) )

# Generate a .d dependency make file fragment for each .o in
# the list:
$(LIBINCOBJS:.o=.d) : %.d : %.F
	$(GCC) -M $< | $(AWK) '{ sub(":","",$$1); sub(".F.o",".o",$$1); printf "libjtlib.a("$$1"):"; i=1; while( i++<NF) printf " "$$i; printf "\n" }' > $@
-include $(LIBINCOBJS:.o=.d)
jtjob.d : jtjob.F
	$(GCC) -M $< | $(AWK) '{ sub(".F.o",".o",$$1); print }' > $@
-include jtjob.d

# Fortran with and without CPP:
%.o : %.f
	$(FC) $(FFLAGS) -o $@ -c $<
%.o : %.F
	$(FC) $(FFLAGS) -o $@ -c $<

# Clean up:
clean :
	rm -f libjtlib.a *.d jtjob jtjob.o MAIN.map
