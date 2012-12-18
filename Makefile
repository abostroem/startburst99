#------------------------------------------------------
# Makefile for the code GALAXY
# - version Sun Solaris (1997)
#------------------------------------------------------
SOURCES = galaxy.f

OBJECTS = $(SOURCES:.f=.o)

#INCLUDES = implic.inc \
#consts_iso.inc

#------------------------------------------------------

.KEEP_STATE:
# Some more exotic compiler options:
#  -Nl350 allows for 350 continuation marks 
#  -sb    prepares database for tool SourceBrowser. Try typing 'sbrowser'...
# for debugging:
#FFLAGS = -c -g -C -sb -Nl350
#LFLAGS = -g
# for fast run:
FFLAGS = -c -O -Nl350
LFLAGS = -O

LIBS   = -lV77
LINK   = f77 
.f.o: ; $(LINK) $(FFLAGS) $*.f

#------------------------------------------------------
galaxy: $(OBJECTS) Makefile
	$(LINK) $(LFLAGS) $(OBJECTS) -o galaxy $(LIBS)

$(OBJECTS): $(INCLUDES)
