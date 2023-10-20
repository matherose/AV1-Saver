# This Makefile is for the Finance::Quote extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.66 (Revision: 66600) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Get stock and mutual fund quotes from various exchanges]
#     AUTHOR => [q[Dj Padzensky <djpadz@padz.net>, PadzNet, Inc., Linas Vepstas <linas@linas.org>, Yannick LE NY <y-le-ny@ifrance.com>, Paul Fenwick <pjf@cpan.org>, Brent Neal <brentn@users.sourceforge.net>, Volker Stuerzl <volker.stuerzl@gmx.de>, Keith Refson <Keith.Refson#earth.ox.ac.uk>, Rob Sessink <rob_ses@users.sourceforge.net>, Leigh Wedding <leigh.wedding@telstra.com>, Tobias Vancura <tvancura@altavista.net>, James Treacy <treacy@debian.org>, Bradley Dean <bjdean@bjdean.id.au>, Erik Colson <eco@ecocode.net>]]
#     BUILD_REQUIRES => {  }
#     CONFIGURE_REQUIRES => { ExtUtils::MakeMaker=>q[0] }
#     DISTNAME => q[Finance-Quote]
#     LICENSE => q[gpl]
#     MIN_PERL_VERSION => q[5.010]
#     NAME => q[Finance::Quote]
#     PREREQ_PM => { HTML::Parser=>q[0], LWP::UserAgent=>q[0], CGI=>q[0], HTTP::Status=>q[0], LWP::Protocol::https=>q[0], base=>q[0], utf8=>q[0], HTTP::Request::Common=>q[0], HTML::TableExtract=>q[0], POSIX=>q[0], Encode=>q[0], Test::More=>q[0], Carp=>q[0], constant=>q[0], Time::Piece=>q[0], Mozilla::CA=>q[0], File::Spec=>q[0], LWP::Simple=>q[0], Data::Dumper=>q[0], DateTime=>q[0], URI=>q[0], HTML::TreeBuilder=>q[0], vars=>q[0], HTTP::Cookies=>q[0], HTML::TokeParser=>q[0], HTTP::Headers=>q[0], URI::QueryParam=>q[0], strict=>q[0], Exporter=>q[0], JSON=>q[0], warnings=>q[0] }
#     TEST_REQUIRES => { Test::More=>q[0], Data::Dumper=>q[0], File::Spec=>q[0] }
#     VERSION => q[1.47]
#     test => { TESTS=>q[t/*.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /System/Library/Perl/5.18/darwin-thread-multi-2level/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = bundle
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS =  -bundle -undefined dynamic_lookup -fstack-protector
LDFLAGS =  -fstack-protector
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = darwin
OSVERS = 18.0
RANLIB = /usr/bin/ar s
SITELIBEXP = /Library/Perl/5.18
SITEARCHEXP = /Library/Perl/5.18/darwin-thread-multi-2level
SO = dylib
VENDORARCHEXP = /Network/Library/Perl/5.18/darwin-thread-multi-2level
VENDORLIBEXP = /Network/Library/Perl/5.18


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Finance::Quote
NAME_SYM = Finance_Quote
VERSION = 1.47
VERSION_MACRO = VERSION
VERSION_SYM = 1_47
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.47
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /
SITEPREFIX = /usr/local
VENDORPREFIX = /usr/local
INSTALLPRIVLIB = /Library/Perl/Updates/5.18.2
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /Library/Perl/5.18
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /Network/Library/Perl/5.18
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /Library/Perl/Updates/5.18.2/darwin-thread-multi-2level
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /Library/Perl/5.18/darwin-thread-multi-2level
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /Network/Library/Perl/5.18/darwin-thread-multi-2level
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/local/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/local/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/local/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/local/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /System/Library/Perl/5.18
PERL_ARCHLIB = /System/Library/Perl/5.18/darwin-thread-multi-2level
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /System/Library/Perl/5.18/darwin-thread-multi-2level/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /System/Library/Perl/5.18/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.66
MM_REVISION = 66600

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Finance/Quote
BASEEXT = Quote
PARENT_NAME = Finance
DLBASE = $(BASEEXT)
VERSION_FROM = 
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/Finance/Quote.pm \
	lib/Finance/Quote/AEX.pm \
	lib/Finance/Quote/AIAHK.pm \
	lib/Finance/Quote/ASEGR.pm \
	lib/Finance/Quote/ASX.pm \
	lib/Finance/Quote/BMONesbittBurns.pm \
	lib/Finance/Quote/BSERO.pm \
	lib/Finance/Quote/Bourso.pm \
	lib/Finance/Quote/CSE.pm \
	lib/Finance/Quote/Cdnfundlibrary.pm \
	lib/Finance/Quote/Citywire.pm \
	lib/Finance/Quote/Cominvest.pm \
	lib/Finance/Quote/Currencies.pm \
	lib/Finance/Quote/DWS.pm \
	lib/Finance/Quote/Deka.pm \
	lib/Finance/Quote/FTPortfolios.pm \
	lib/Finance/Quote/FTfunds.pm \
	lib/Finance/Quote/Fidelity.pm \
	lib/Finance/Quote/FidelityFixed.pm \
	lib/Finance/Quote/FinanceCanada.pm \
	lib/Finance/Quote/Finanzpartner.pm \
	lib/Finance/Quote/Fool.pm \
	lib/Finance/Quote/GoldMoney.pm \
	lib/Finance/Quote/HEX.pm \
	lib/Finance/Quote/HU.pm \
	lib/Finance/Quote/IndiaMutual.pm \
	lib/Finance/Quote/LeRevenu.pm \
	lib/Finance/Quote/MStaruk.pm \
	lib/Finance/Quote/ManInvestments.pm \
	lib/Finance/Quote/Morningstar.pm \
	lib/Finance/Quote/MorningstarJP.pm \
	lib/Finance/Quote/NZX.pm \
	lib/Finance/Quote/Platinum.pm \
	lib/Finance/Quote/SEB.pm \
	lib/Finance/Quote/TNetuk.pm \
	lib/Finance/Quote/TSP.pm \
	lib/Finance/Quote/TSX.pm \
	lib/Finance/Quote/Tdefunds.pm \
	lib/Finance/Quote/Tdwaterhouse.pm \
	lib/Finance/Quote/Tiaacref.pm \
	lib/Finance/Quote/Troweprice.pm \
	lib/Finance/Quote/Trustnet.pm \
	lib/Finance/Quote/USFedBonds.pm \
	lib/Finance/Quote/Union.pm \
	lib/Finance/Quote/VWD.pm \
	lib/Finance/Quote/Yahoo/Asia.pm \
	lib/Finance/Quote/Yahoo/Australia.pm \
	lib/Finance/Quote/Yahoo/Base.pm \
	lib/Finance/Quote/Yahoo/Brasil.pm \
	lib/Finance/Quote/Yahoo/Europe.pm \
	lib/Finance/Quote/Yahoo/NZ.pm \
	lib/Finance/Quote/Yahoo/USA.pm \
	lib/Finance/Quote/YahooJSON.pm \
	lib/Finance/Quote/YahooYQL.pm \
	lib/Finance/Quote/ZA.pm \
	lib/Finance/Quote/ZA_UnitTrusts.pm

SDKROOT := $(shell xcrun --show-sdk-path)
PERL_SYSROOT = $(SDKROOT)

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_SYSROOT)$(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Finance
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Finance

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Finance/Quote.pm \
	lib/Finance/Quote/AEX.pm \
	lib/Finance/Quote/AIAHK.pm \
	lib/Finance/Quote/ASEGR.pm \
	lib/Finance/Quote/ASX.pm \
	lib/Finance/Quote/AlphaVantage.pm \
	lib/Finance/Quote/BMONesbittBurns.pm \
	lib/Finance/Quote/BSERO.pm \
	lib/Finance/Quote/Bourso.pm \
	lib/Finance/Quote/CSE.pm \
	lib/Finance/Quote/Cdnfundlibrary.pm \
	lib/Finance/Quote/Citywire.pm \
	lib/Finance/Quote/Cominvest.pm \
	lib/Finance/Quote/Currencies.pm \
	lib/Finance/Quote/DWS.pm \
	lib/Finance/Quote/Deka.pm \
	lib/Finance/Quote/FTPortfolios.pm \
	lib/Finance/Quote/FTfunds.pm \
	lib/Finance/Quote/Fidelity.pm \
	lib/Finance/Quote/FidelityFixed.pm \
	lib/Finance/Quote/FinanceCanada.pm \
	lib/Finance/Quote/Finanzpartner.pm \
	lib/Finance/Quote/Fool.pm \
	lib/Finance/Quote/GoldMoney.pm \
	lib/Finance/Quote/HEX.pm \
	lib/Finance/Quote/HU.pm \
	lib/Finance/Quote/IndiaMutual.pm \
	lib/Finance/Quote/LeRevenu.pm \
	lib/Finance/Quote/MStaruk.pm \
	lib/Finance/Quote/ManInvestments.pm \
	lib/Finance/Quote/Morningstar.pm \
	lib/Finance/Quote/MorningstarJP.pm \
	lib/Finance/Quote/NZX.pm \
	lib/Finance/Quote/Platinum.pm \
	lib/Finance/Quote/SEB.pm \
	lib/Finance/Quote/SIXfunds.pm \
	lib/Finance/Quote/SIXshares.pm \
	lib/Finance/Quote/StockHouseCanada.pm \
	lib/Finance/Quote/TNetuk.pm \
	lib/Finance/Quote/TSP.pm \
	lib/Finance/Quote/TSX.pm \
	lib/Finance/Quote/Tdefunds.pm \
	lib/Finance/Quote/Tdwaterhouse.pm \
	lib/Finance/Quote/Tiaacref.pm \
	lib/Finance/Quote/Troweprice.pm \
	lib/Finance/Quote/Trustnet.pm \
	lib/Finance/Quote/USFedBonds.pm \
	lib/Finance/Quote/Union.pm \
	lib/Finance/Quote/UserAgent.pm \
	lib/Finance/Quote/VWD.pm \
	lib/Finance/Quote/Yahoo/Asia.pm \
	lib/Finance/Quote/Yahoo/Australia.pm \
	lib/Finance/Quote/Yahoo/Base.pm \
	lib/Finance/Quote/Yahoo/Brasil.pm \
	lib/Finance/Quote/Yahoo/Europe.pm \
	lib/Finance/Quote/Yahoo/NZ.pm \
	lib/Finance/Quote/Yahoo/USA.pm \
	lib/Finance/Quote/YahooJSON.pm \
	lib/Finance/Quote/YahooYQL.pm \
	lib/Finance/Quote/ZA.pm \
	lib/Finance/Quote/ZA_UnitTrusts.pm

PM_TO_BLIB = lib/Finance/Quote/AEX.pm \
	blib/lib/Finance/Quote/AEX.pm \
	lib/Finance/Quote/Platinum.pm \
	blib/lib/Finance/Quote/Platinum.pm \
	lib/Finance/Quote/Cominvest.pm \
	blib/lib/Finance/Quote/Cominvest.pm \
	lib/Finance/Quote/StockHouseCanada.pm \
	blib/lib/Finance/Quote/StockHouseCanada.pm \
	lib/Finance/Quote.pm \
	blib/lib/Finance/Quote.pm \
	lib/Finance/Quote/BSERO.pm \
	blib/lib/Finance/Quote/BSERO.pm \
	lib/Finance/Quote/ASX.pm \
	blib/lib/Finance/Quote/ASX.pm \
	lib/Finance/Quote/AIAHK.pm \
	blib/lib/Finance/Quote/AIAHK.pm \
	lib/Finance/Quote/HEX.pm \
	blib/lib/Finance/Quote/HEX.pm \
	lib/Finance/Quote/TSX.pm \
	blib/lib/Finance/Quote/TSX.pm \
	lib/Finance/Quote/TNetuk.pm \
	blib/lib/Finance/Quote/TNetuk.pm \
	lib/Finance/Quote/Yahoo/USA.pm \
	blib/lib/Finance/Quote/Yahoo/USA.pm \
	lib/Finance/Quote/Citywire.pm \
	blib/lib/Finance/Quote/Citywire.pm \
	lib/Finance/Quote/Morningstar.pm \
	blib/lib/Finance/Quote/Morningstar.pm \
	lib/Finance/Quote/SEB.pm \
	blib/lib/Finance/Quote/SEB.pm \
	lib/Finance/Quote/FinanceCanada.pm \
	blib/lib/Finance/Quote/FinanceCanada.pm \
	lib/Finance/Quote/Fidelity.pm \
	blib/lib/Finance/Quote/Fidelity.pm \
	lib/Finance/Quote/UserAgent.pm \
	blib/lib/Finance/Quote/UserAgent.pm \
	lib/Finance/Quote/Deka.pm \
	blib/lib/Finance/Quote/Deka.pm \
	lib/Finance/Quote/MStaruk.pm \
	blib/lib/Finance/Quote/MStaruk.pm \
	lib/Finance/Quote/FTPortfolios.pm \
	blib/lib/Finance/Quote/FTPortfolios.pm \
	lib/Finance/Quote/Union.pm \
	blib/lib/Finance/Quote/Union.pm \
	lib/Finance/Quote/Finanzpartner.pm \
	blib/lib/Finance/Quote/Finanzpartner.pm \
	lib/Finance/Quote/SIXshares.pm \
	blib/lib/Finance/Quote/SIXshares.pm \
	lib/Finance/Quote/AlphaVantage.pm \
	blib/lib/Finance/Quote/AlphaVantage.pm \
	lib/Finance/Quote/Yahoo/Europe.pm \
	blib/lib/Finance/Quote/Yahoo/Europe.pm \
	lib/Finance/Quote/HU.pm \
	blib/lib/Finance/Quote/HU.pm \
	lib/Finance/Quote/ZA.pm \
	blib/lib/Finance/Quote/ZA.pm \
	lib/Finance/Quote/NZX.pm \
	blib/lib/Finance/Quote/NZX.pm \
	lib/Finance/Quote/ManInvestments.pm \
	blib/lib/Finance/Quote/ManInvestments.pm \
	lib/Finance/Quote/Tiaacref.pm \
	blib/lib/Finance/Quote/Tiaacref.pm \
	lib/Finance/Quote/FidelityFixed.pm \
	blib/lib/Finance/Quote/FidelityFixed.pm \
	lib/Finance/Quote/IndiaMutual.pm \
	blib/lib/Finance/Quote/IndiaMutual.pm \
	lib/Finance/Quote/YahooJSON.pm \
	blib/lib/Finance/Quote/YahooJSON.pm \
	lib/Finance/Quote/Fool.pm \
	blib/lib/Finance/Quote/Fool.pm \
	lib/Finance/Quote/Yahoo/Base.pm \
	blib/lib/Finance/Quote/Yahoo/Base.pm \
	lib/Finance/Quote/ASEGR.pm \
	blib/lib/Finance/Quote/ASEGR.pm \
	lib/Finance/Quote/Yahoo/Asia.pm \
	blib/lib/Finance/Quote/Yahoo/Asia.pm \
	lib/Finance/Quote/GoldMoney.pm \
	blib/lib/Finance/Quote/GoldMoney.pm \
	lib/Finance/Quote/Yahoo/Brasil.pm \
	blib/lib/Finance/Quote/Yahoo/Brasil.pm \
	lib/Finance/Quote/DWS.pm \
	blib/lib/Finance/Quote/DWS.pm \
	lib/Finance/Quote/Troweprice.pm \
	blib/lib/Finance/Quote/Troweprice.pm \
	lib/Finance/Quote/LeRevenu.pm \
	blib/lib/Finance/Quote/LeRevenu.pm \
	lib/Finance/Quote/USFedBonds.pm \
	blib/lib/Finance/Quote/USFedBonds.pm \
	lib/Finance/Quote/Currencies.pm \
	blib/lib/Finance/Quote/Currencies.pm \
	lib/Finance/Quote/Cdnfundlibrary.pm \
	blib/lib/Finance/Quote/Cdnfundlibrary.pm \
	lib/Finance/Quote/BMONesbittBurns.pm \
	blib/lib/Finance/Quote/BMONesbittBurns.pm \
	lib/Finance/Quote/FTfunds.pm \
	blib/lib/Finance/Quote/FTfunds.pm \
	lib/Finance/Quote/VWD.pm \
	blib/lib/Finance/Quote/VWD.pm \
	lib/Finance/Quote/Yahoo/NZ.pm \
	blib/lib/Finance/Quote/Yahoo/NZ.pm \
	lib/Finance/Quote/Tdwaterhouse.pm \
	blib/lib/Finance/Quote/Tdwaterhouse.pm \
	lib/Finance/Quote/SIXfunds.pm \
	blib/lib/Finance/Quote/SIXfunds.pm \
	lib/Finance/Quote/Tdefunds.pm \
	blib/lib/Finance/Quote/Tdefunds.pm \
	lib/Finance/Quote/ZA_UnitTrusts.pm \
	blib/lib/Finance/Quote/ZA_UnitTrusts.pm \
	lib/Finance/Quote/MorningstarJP.pm \
	blib/lib/Finance/Quote/MorningstarJP.pm \
	lib/Finance/Quote/Yahoo/Australia.pm \
	blib/lib/Finance/Quote/Yahoo/Australia.pm \
	lib/Finance/Quote/TSP.pm \
	blib/lib/Finance/Quote/TSP.pm \
	lib/Finance/Quote/CSE.pm \
	blib/lib/Finance/Quote/CSE.pm \
	lib/Finance/Quote/YahooYQL.pm \
	blib/lib/Finance/Quote/YahooYQL.pm \
	lib/Finance/Quote/Trustnet.pm \
	blib/lib/Finance/Quote/Trustnet.pm \
	lib/Finance/Quote/Bourso.pm \
	blib/lib/Finance/Quote/Bourso.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.66
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = COPY_EXTENDED_ATTRIBUTES_DISABLE=1 COPYFILE_DISABLE=1 tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Finance-Quote
DISTVNAME = Finance-Quote-1.47


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/Finance/Quote/Finanzpartner.pm \
	lib/Finance/Quote/Union.pm \
	lib/Finance/Quote/IndiaMutual.pm \
	lib/Finance/Quote/Tiaacref.pm \
	lib/Finance/Quote/FidelityFixed.pm \
	lib/Finance/Quote/NZX.pm \
	lib/Finance/Quote/ManInvestments.pm \
	lib/Finance/Quote/ZA.pm \
	lib/Finance/Quote/Yahoo/Europe.pm \
	lib/Finance/Quote/HU.pm \
	lib/Finance/Quote/TNetuk.pm \
	lib/Finance/Quote/AIAHK.pm \
	lib/Finance/Quote/HEX.pm \
	lib/Finance/Quote/TSX.pm \
	lib/Finance/Quote/ASX.pm \
	lib/Finance/Quote/BSERO.pm \
	lib/Finance/Quote.pm \
	lib/Finance/Quote/Cominvest.pm \
	lib/Finance/Quote/Platinum.pm \
	lib/Finance/Quote/AEX.pm \
	lib/Finance/Quote/Deka.pm \
	lib/Finance/Quote/FTPortfolios.pm \
	lib/Finance/Quote/MStaruk.pm \
	lib/Finance/Quote/Fidelity.pm \
	lib/Finance/Quote/FinanceCanada.pm \
	lib/Finance/Quote/SEB.pm \
	lib/Finance/Quote/Morningstar.pm \
	lib/Finance/Quote/Citywire.pm \
	lib/Finance/Quote/Yahoo/USA.pm \
	lib/Finance/Quote/ZA_UnitTrusts.pm \
	lib/Finance/Quote/MorningstarJP.pm \
	lib/Finance/Quote/Tdwaterhouse.pm \
	lib/Finance/Quote/Tdefunds.pm \
	lib/Finance/Quote/VWD.pm \
	lib/Finance/Quote/Yahoo/NZ.pm \
	lib/Finance/Quote/FTfunds.pm \
	lib/Finance/Quote/BMONesbittBurns.pm \
	lib/Finance/Quote/Currencies.pm \
	lib/Finance/Quote/Cdnfundlibrary.pm \
	lib/Finance/Quote/Bourso.pm \
	lib/Finance/Quote/Trustnet.pm \
	lib/Finance/Quote/YahooYQL.pm \
	lib/Finance/Quote/TSP.pm \
	lib/Finance/Quote/CSE.pm \
	lib/Finance/Quote/Yahoo/Australia.pm \
	lib/Finance/Quote/GoldMoney.pm \
	lib/Finance/Quote/ASEGR.pm \
	lib/Finance/Quote/Yahoo/Base.pm \
	lib/Finance/Quote/Yahoo/Asia.pm \
	lib/Finance/Quote/YahooJSON.pm \
	lib/Finance/Quote/Fool.pm \
	lib/Finance/Quote/USFedBonds.pm \
	lib/Finance/Quote/LeRevenu.pm \
	lib/Finance/Quote/Troweprice.pm \
	lib/Finance/Quote/DWS.pm \
	lib/Finance/Quote/Yahoo/Brasil.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Finance/Quote/Finanzpartner.pm $(INST_MAN3DIR)/Finance::Quote::Finanzpartner.$(MAN3EXT) \
	  lib/Finance/Quote/Union.pm $(INST_MAN3DIR)/Finance::Quote::Union.$(MAN3EXT) \
	  lib/Finance/Quote/IndiaMutual.pm $(INST_MAN3DIR)/Finance::Quote::IndiaMutual.$(MAN3EXT) \
	  lib/Finance/Quote/Tiaacref.pm $(INST_MAN3DIR)/Finance::Quote::Tiaacref.$(MAN3EXT) \
	  lib/Finance/Quote/FidelityFixed.pm $(INST_MAN3DIR)/Finance::Quote::FidelityFixed.$(MAN3EXT) \
	  lib/Finance/Quote/NZX.pm $(INST_MAN3DIR)/Finance::Quote::NZX.$(MAN3EXT) \
	  lib/Finance/Quote/ManInvestments.pm $(INST_MAN3DIR)/Finance::Quote::ManInvestments.$(MAN3EXT) \
	  lib/Finance/Quote/ZA.pm $(INST_MAN3DIR)/Finance::Quote::ZA.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/Europe.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::Europe.$(MAN3EXT) \
	  lib/Finance/Quote/HU.pm $(INST_MAN3DIR)/Finance::Quote::HU.$(MAN3EXT) \
	  lib/Finance/Quote/TNetuk.pm $(INST_MAN3DIR)/Finance::Quote::TNetuk.$(MAN3EXT) \
	  lib/Finance/Quote/AIAHK.pm $(INST_MAN3DIR)/Finance::Quote::AIAHK.$(MAN3EXT) \
	  lib/Finance/Quote/HEX.pm $(INST_MAN3DIR)/Finance::Quote::HEX.$(MAN3EXT) \
	  lib/Finance/Quote/TSX.pm $(INST_MAN3DIR)/Finance::Quote::TSX.$(MAN3EXT) \
	  lib/Finance/Quote/ASX.pm $(INST_MAN3DIR)/Finance::Quote::ASX.$(MAN3EXT) \
	  lib/Finance/Quote/BSERO.pm $(INST_MAN3DIR)/Finance::Quote::BSERO.$(MAN3EXT) \
	  lib/Finance/Quote.pm $(INST_MAN3DIR)/Finance::Quote.$(MAN3EXT) \
	  lib/Finance/Quote/Cominvest.pm $(INST_MAN3DIR)/Finance::Quote::Cominvest.$(MAN3EXT) \
	  lib/Finance/Quote/Platinum.pm $(INST_MAN3DIR)/Finance::Quote::Platinum.$(MAN3EXT) \
	  lib/Finance/Quote/AEX.pm $(INST_MAN3DIR)/Finance::Quote::AEX.$(MAN3EXT) \
	  lib/Finance/Quote/Deka.pm $(INST_MAN3DIR)/Finance::Quote::Deka.$(MAN3EXT) \
	  lib/Finance/Quote/FTPortfolios.pm $(INST_MAN3DIR)/Finance::Quote::FTPortfolios.$(MAN3EXT) \
	  lib/Finance/Quote/MStaruk.pm $(INST_MAN3DIR)/Finance::Quote::MStaruk.$(MAN3EXT) \
	  lib/Finance/Quote/Fidelity.pm $(INST_MAN3DIR)/Finance::Quote::Fidelity.$(MAN3EXT) \
	  lib/Finance/Quote/FinanceCanada.pm $(INST_MAN3DIR)/Finance::Quote::FinanceCanada.$(MAN3EXT) \
	  lib/Finance/Quote/SEB.pm $(INST_MAN3DIR)/Finance::Quote::SEB.$(MAN3EXT) \
	  lib/Finance/Quote/Morningstar.pm $(INST_MAN3DIR)/Finance::Quote::Morningstar.$(MAN3EXT) \
	  lib/Finance/Quote/Citywire.pm $(INST_MAN3DIR)/Finance::Quote::Citywire.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/USA.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::USA.$(MAN3EXT) \
	  lib/Finance/Quote/ZA_UnitTrusts.pm $(INST_MAN3DIR)/Finance::Quote::ZA_UnitTrusts.$(MAN3EXT) \
	  lib/Finance/Quote/MorningstarJP.pm $(INST_MAN3DIR)/Finance::Quote::MorningstarJP.$(MAN3EXT) \
	  lib/Finance/Quote/Tdwaterhouse.pm $(INST_MAN3DIR)/Finance::Quote::Tdwaterhouse.$(MAN3EXT) \
	  lib/Finance/Quote/Tdefunds.pm $(INST_MAN3DIR)/Finance::Quote::Tdefunds.$(MAN3EXT) \
	  lib/Finance/Quote/VWD.pm $(INST_MAN3DIR)/Finance::Quote::VWD.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/NZ.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::NZ.$(MAN3EXT) \
	  lib/Finance/Quote/FTfunds.pm $(INST_MAN3DIR)/Finance::Quote::FTfunds.$(MAN3EXT) \
	  lib/Finance/Quote/BMONesbittBurns.pm $(INST_MAN3DIR)/Finance::Quote::BMONesbittBurns.$(MAN3EXT) \
	  lib/Finance/Quote/Currencies.pm $(INST_MAN3DIR)/Finance::Quote::Currencies.$(MAN3EXT) \
	  lib/Finance/Quote/Cdnfundlibrary.pm $(INST_MAN3DIR)/Finance::Quote::Cdnfundlibrary.$(MAN3EXT) \
	  lib/Finance/Quote/Bourso.pm $(INST_MAN3DIR)/Finance::Quote::Bourso.$(MAN3EXT) \
	  lib/Finance/Quote/Trustnet.pm $(INST_MAN3DIR)/Finance::Quote::Trustnet.$(MAN3EXT) \
	  lib/Finance/Quote/YahooYQL.pm $(INST_MAN3DIR)/Finance::Quote::YahooYQL.$(MAN3EXT) \
	  lib/Finance/Quote/TSP.pm $(INST_MAN3DIR)/Finance::Quote::TSP.$(MAN3EXT) \
	  lib/Finance/Quote/CSE.pm $(INST_MAN3DIR)/Finance::Quote::CSE.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/Australia.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::Australia.$(MAN3EXT) \
	  lib/Finance/Quote/GoldMoney.pm $(INST_MAN3DIR)/Finance::Quote::GoldMoney.$(MAN3EXT) \
	  lib/Finance/Quote/ASEGR.pm $(INST_MAN3DIR)/Finance::Quote::ASEGR.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/Base.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::Base.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/Asia.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::Asia.$(MAN3EXT) \
	  lib/Finance/Quote/YahooJSON.pm $(INST_MAN3DIR)/Finance::Quote::YahooJSON.$(MAN3EXT) \
	  lib/Finance/Quote/Fool.pm $(INST_MAN3DIR)/Finance::Quote::Fool.$(MAN3EXT) \
	  lib/Finance/Quote/USFedBonds.pm $(INST_MAN3DIR)/Finance::Quote::USFedBonds.$(MAN3EXT) \
	  lib/Finance/Quote/LeRevenu.pm $(INST_MAN3DIR)/Finance::Quote::LeRevenu.$(MAN3EXT) \
	  lib/Finance/Quote/Troweprice.pm $(INST_MAN3DIR)/Finance::Quote::Troweprice.$(MAN3EXT) \
	  lib/Finance/Quote/DWS.pm $(INST_MAN3DIR)/Finance::Quote::DWS.$(MAN3EXT) \
	  lib/Finance/Quote/Yahoo/Brasil.pm $(INST_MAN3DIR)/Finance::Quote::Yahoo::Brasil.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  MYMETA.json $(BASEEXT).def \
	  tmon.out *$(OBJ_EXT) \
	  pm_to_blib so_locations \
	  core.[0-9][0-9][0-9] core.*perl.*.? \
	  core.[0-9][0-9] core \
	  MYMETA.yml *$(LIB_EXT) \
	  perl$(EXE_EXT) *perl.core \
	  perlmain.c $(BASEEXT).x \
	  $(INST_ARCHAUTODIR)/extralibs.ld lib$(BASEEXT).def \
	  core.[0-9][0-9][0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  $(INST_ARCHAUTODIR)/extralibs.all perl.exe \
	  core.[0-9] $(BASEEXT).bso \
	  perl $(MAKE_APERL_FILE) \
	  $(BOOTSTRAP) mon.out \
	  $(BASEEXT).exp pm_to_blib.ts \
	  blibdirs.ts 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: '\''Get stock and mutual fund quotes from various exchanges'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Dj Padzensky <djpadz@padz.net>, PadzNet, Inc., Linas Vepstas <linas@linas.org>, Yannick LE NY <y-le-ny@ifrance.com>, Paul Fenwick <pjf@cpan.org>, Brent Neal <brentn@users.sourceforge.net>, Volker Stuerzl <volker.stuerzl@gmx.de>, Keith Refson <Keith.Refson#earth.ox.ac.uk>, Rob Sessink <rob_ses@users.sourceforge.net>, Leigh Wedding <leigh.wedding@telstra.com>, Tobias Vancura <tvancura@altavista.net>, James Treacy <treacy@debian.org>, Bradley Dean <bjdean@bjdean.id.au>, Erik Colson <eco@ecocode.net>'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Data::Dumper: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Spec: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::More: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 6.66, CPAN::Meta::Converter version 2.133380'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: open_source' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: 1.4' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: Finance-Quote' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  CGI: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Carp: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  DateTime: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Encode: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Exporter: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTML::Parser: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTML::TableExtract: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTML::TokeParser: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTML::TreeBuilder: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Cookies: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Headers: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Request::Common: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Status: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  JSON: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  LWP::Protocol::https: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  LWP::Simple: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  LWP::UserAgent: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Mozilla::CA: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  POSIX: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Time::Piece: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  URI: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  URI::QueryParam: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  base: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  constant: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  perl: 5.010' >> META_new.yml
	$(NOECHO) $(ECHO) '  strict: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  utf8: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  vars: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  warnings: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: 1.47' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "Get stock and mutual fund quotes from various exchanges",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Dj Padzensky <djpadz@padz.net>, PadzNet, Inc., Linas Vepstas <linas@linas.org>, Yannick LE NY <y-le-ny@ifrance.com>, Paul Fenwick <pjf@cpan.org>, Brent Neal <brentn@users.sourceforge.net>, Volker Stuerzl <volker.stuerzl@gmx.de>, Keith Refson <Keith.Refson#earth.ox.ac.uk>, Rob Sessink <rob_ses@users.sourceforge.net>, Leigh Wedding <leigh.wedding@telstra.com>, Tobias Vancura <tvancura@altavista.net>, James Treacy <treacy@debian.org>, Bradley Dean <bjdean@bjdean.id.au>, Erik Colson <eco@ecocode.net>"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 6.66, CPAN::Meta::Converter version 2.133380",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "open_source"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "Finance-Quote",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Data::Dumper" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Spec" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::More" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "CGI" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Carp" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DateTime" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Encode" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Exporter" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTML::Parser" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTML::TableExtract" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTML::TokeParser" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTML::TreeBuilder" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Cookies" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Headers" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Request::Common" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Status" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "JSON" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "LWP::Protocol::https" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "LWP::Simple" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "LWP::UserAgent" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Mozilla::CA" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "POSIX" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Time::Piece" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "URI" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "URI::QueryParam" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "base" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "constant" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "perl" : "5.010",' >> META_new.json
	$(NOECHO) $(ECHO) '            "strict" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "utf8" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "vars" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "warnings" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "1.47"' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $$$${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Get stock and mutual fund quotes from various exchanges</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Dj Padzensky &lt;djpadz@padz.net&gt;, PadzNet, Inc., Linas Vepstas &lt;linas@linas.org&gt;, Yannick LE NY &lt;y-le-ny@ifrance.com&gt;, Paul Fenwick &lt;pjf@cpan.org&gt;, Brent Neal &lt;brentn@users.sourceforge.net&gt;, Volker Stuerzl &lt;volker.stuerzl@gmx.de&gt;, Keith Refson &lt;Keith.Refson#earth.ox.ac.uk&gt;, Rob Sessink &lt;rob_ses@users.sourceforge.net&gt;, Leigh Wedding &lt;leigh.wedding@telstra.com&gt;, Tobias Vancura &lt;tvancura@altavista.net&gt;, James Treacy &lt;treacy@debian.org&gt;, Bradley Dean &lt;bjdean@bjdean.id.au&gt;, Erik Colson &lt;eco@ecocode.net&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,010,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="CGI::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Carp::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Encode::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Exporter::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTML::Parser" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTML::TableExtract" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTML::TokeParser" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTML::TreeBuilder" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTTP::Cookies" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTTP::Headers" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTTP::Request::Common" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTTP::Status" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="LWP::Protocol::https" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="LWP::Simple" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="LWP::UserAgent" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Mozilla::CA" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="POSIX::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Time::Piece" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="URI::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="URI::QueryParam" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="base::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="constant::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="strict::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="utf8::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="vars::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="warnings::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="darwin-thread-multi-2level-5.18" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Finance/Quote/AEX.pm blib/lib/Finance/Quote/AEX.pm \
	  lib/Finance/Quote/Platinum.pm blib/lib/Finance/Quote/Platinum.pm \
	  lib/Finance/Quote/Cominvest.pm blib/lib/Finance/Quote/Cominvest.pm \
	  lib/Finance/Quote/StockHouseCanada.pm blib/lib/Finance/Quote/StockHouseCanada.pm \
	  lib/Finance/Quote.pm blib/lib/Finance/Quote.pm \
	  lib/Finance/Quote/BSERO.pm blib/lib/Finance/Quote/BSERO.pm \
	  lib/Finance/Quote/ASX.pm blib/lib/Finance/Quote/ASX.pm \
	  lib/Finance/Quote/AIAHK.pm blib/lib/Finance/Quote/AIAHK.pm \
	  lib/Finance/Quote/HEX.pm blib/lib/Finance/Quote/HEX.pm \
	  lib/Finance/Quote/TSX.pm blib/lib/Finance/Quote/TSX.pm \
	  lib/Finance/Quote/TNetuk.pm blib/lib/Finance/Quote/TNetuk.pm \
	  lib/Finance/Quote/Yahoo/USA.pm blib/lib/Finance/Quote/Yahoo/USA.pm \
	  lib/Finance/Quote/Citywire.pm blib/lib/Finance/Quote/Citywire.pm \
	  lib/Finance/Quote/Morningstar.pm blib/lib/Finance/Quote/Morningstar.pm \
	  lib/Finance/Quote/SEB.pm blib/lib/Finance/Quote/SEB.pm \
	  lib/Finance/Quote/FinanceCanada.pm blib/lib/Finance/Quote/FinanceCanada.pm \
	  lib/Finance/Quote/Fidelity.pm blib/lib/Finance/Quote/Fidelity.pm \
	  lib/Finance/Quote/UserAgent.pm blib/lib/Finance/Quote/UserAgent.pm \
	  lib/Finance/Quote/Deka.pm blib/lib/Finance/Quote/Deka.pm \
	  lib/Finance/Quote/MStaruk.pm blib/lib/Finance/Quote/MStaruk.pm \
	  lib/Finance/Quote/FTPortfolios.pm blib/lib/Finance/Quote/FTPortfolios.pm \
	  lib/Finance/Quote/Union.pm blib/lib/Finance/Quote/Union.pm \
	  lib/Finance/Quote/Finanzpartner.pm blib/lib/Finance/Quote/Finanzpartner.pm \
	  lib/Finance/Quote/SIXshares.pm blib/lib/Finance/Quote/SIXshares.pm \
	  lib/Finance/Quote/AlphaVantage.pm blib/lib/Finance/Quote/AlphaVantage.pm \
	  lib/Finance/Quote/Yahoo/Europe.pm blib/lib/Finance/Quote/Yahoo/Europe.pm \
	  lib/Finance/Quote/HU.pm blib/lib/Finance/Quote/HU.pm \
	  lib/Finance/Quote/ZA.pm blib/lib/Finance/Quote/ZA.pm \
	  lib/Finance/Quote/NZX.pm blib/lib/Finance/Quote/NZX.pm \
	  lib/Finance/Quote/ManInvestments.pm blib/lib/Finance/Quote/ManInvestments.pm \
	  lib/Finance/Quote/Tiaacref.pm blib/lib/Finance/Quote/Tiaacref.pm \
	  lib/Finance/Quote/FidelityFixed.pm blib/lib/Finance/Quote/FidelityFixed.pm \
	  lib/Finance/Quote/IndiaMutual.pm blib/lib/Finance/Quote/IndiaMutual.pm \
	  lib/Finance/Quote/YahooJSON.pm blib/lib/Finance/Quote/YahooJSON.pm \
	  lib/Finance/Quote/Fool.pm blib/lib/Finance/Quote/Fool.pm \
	  lib/Finance/Quote/Yahoo/Base.pm blib/lib/Finance/Quote/Yahoo/Base.pm \
	  lib/Finance/Quote/ASEGR.pm blib/lib/Finance/Quote/ASEGR.pm \
	  lib/Finance/Quote/Yahoo/Asia.pm blib/lib/Finance/Quote/Yahoo/Asia.pm \
	  lib/Finance/Quote/GoldMoney.pm blib/lib/Finance/Quote/GoldMoney.pm \
	  lib/Finance/Quote/Yahoo/Brasil.pm blib/lib/Finance/Quote/Yahoo/Brasil.pm \
	  lib/Finance/Quote/DWS.pm blib/lib/Finance/Quote/DWS.pm \
	  lib/Finance/Quote/Troweprice.pm blib/lib/Finance/Quote/Troweprice.pm \
	  lib/Finance/Quote/LeRevenu.pm blib/lib/Finance/Quote/LeRevenu.pm \
	  lib/Finance/Quote/USFedBonds.pm blib/lib/Finance/Quote/USFedBonds.pm \
	  lib/Finance/Quote/Currencies.pm blib/lib/Finance/Quote/Currencies.pm \
	  lib/Finance/Quote/Cdnfundlibrary.pm blib/lib/Finance/Quote/Cdnfundlibrary.pm \
	  lib/Finance/Quote/BMONesbittBurns.pm blib/lib/Finance/Quote/BMONesbittBurns.pm \
	  lib/Finance/Quote/FTfunds.pm blib/lib/Finance/Quote/FTfunds.pm \
	  lib/Finance/Quote/VWD.pm blib/lib/Finance/Quote/VWD.pm \
	  lib/Finance/Quote/Yahoo/NZ.pm blib/lib/Finance/Quote/Yahoo/NZ.pm \
	  lib/Finance/Quote/Tdwaterhouse.pm blib/lib/Finance/Quote/Tdwaterhouse.pm \
	  lib/Finance/Quote/SIXfunds.pm blib/lib/Finance/Quote/SIXfunds.pm \
	  lib/Finance/Quote/Tdefunds.pm blib/lib/Finance/Quote/Tdefunds.pm \
	  lib/Finance/Quote/ZA_UnitTrusts.pm blib/lib/Finance/Quote/ZA_UnitTrusts.pm \
	  lib/Finance/Quote/MorningstarJP.pm blib/lib/Finance/Quote/MorningstarJP.pm \
	  lib/Finance/Quote/Yahoo/Australia.pm blib/lib/Finance/Quote/Yahoo/Australia.pm \
	  lib/Finance/Quote/TSP.pm blib/lib/Finance/Quote/TSP.pm \
	  lib/Finance/Quote/CSE.pm blib/lib/Finance/Quote/CSE.pm \
	  lib/Finance/Quote/YahooYQL.pm blib/lib/Finance/Quote/YahooYQL.pm \
	  lib/Finance/Quote/Trustnet.pm blib/lib/Finance/Quote/Trustnet.pm \
	  lib/Finance/Quote/Bourso.pm blib/lib/Finance/Quote/Bourso.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
