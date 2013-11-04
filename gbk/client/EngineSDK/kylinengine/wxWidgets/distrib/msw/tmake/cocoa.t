#!################################################################################
#! File:    cocoa.t
#! Purpose: tmake template file from which src/cocoa/files.lst containing the
#!          list of files for wxCocoa library is generated by tmake
#! Author:  Gilles Depeyrot (mac.t)
#! Created: 04.10.01
#! Modified: David Elliott
#! Version: $Id: 
#!################################################################################
#${
    #! include the code which parses filelist.txt file and initializes
    #! %wxCommon, %wxGeneric, %wxHtml, %wxUNIX, %wxMAC, %wxMOTIF and
    #! %wxOS2PM hashes.
    IncludeTemplate("filelist.t");

    #! find all our sources

    foreach $file (sort keys %wxGeneric) {
        next if $wxGeneric{$file} =~ /\bNotCocoa\b/;

        ($fileobj = $file) =~ s/cp?p?$/\o/;
        $fileobj =~ s/mm?$/\o/;

        $project{"COCOA_SOURCES"} .= "generic/" . $file . " ";
        $project{"GENERICOBJS"} .= $fileobj . " ";
    }

    foreach $file (sort keys %wxCommon) {
        next if $wxCommon{$file} =~ /\bNotCocoa\b/;

        ($fileobj = $file) =~ s/cp?p?$/\o/;
        $fileobj =~ s/mm?$/\o/;

        $project{"COCOA_SOURCES"} .= "common/" . $file . " ";
        $project{"COMMONOBJS"} .= $fileobj . " ";
    }

    foreach $file (sort keys %wxCOCOA) {
        ($fileobj = $file) =~ s/cp?p?$/\o/;
        $fileobj =~ s/mm?$/\o/;

        $project{"COCOA_SOURCES"} .= "cocoa/" . $file . " ";
        $project{"GUIOBJS"} .= $fileobj . " ";
    }

    foreach $file (sort keys %wxUNIX) {
        next if $wxUNIX{$file} =~ /\bNotCocoa\b/;

        ($fileobj = $file) =~ s/cp?p?$/\o/;
        $fileobj =~ s/mm?$/\o/;

        $project{"COCOA_SOURCES"} .= "unix/" . $file . " ";
        $project{"UNIXOBJS"} .= $fileobj . " ";
    }

    foreach $file (sort keys %wxHTML) {
        ($fileobj = $file) =~ s/cp?p?$/\o/;
        $fileobj =~ s/mm?$/\o/;

        $project{"COCOA_SOURCES"} .= "html/" . $file . " ";
        $project{"HTMLOBJS"} .= $fileobj . " ";
    }
    #! find all our headers
    foreach $file (sort keys %wxWXINCLUDE) {
        next if $wxWXINCLUDE{$file} =~ /\bX\b/;

        $project{"COCOA_HEADERS"} .= $file . " "
    }

    foreach $file (sort keys %wxCOCOAINCLUDE) {
        $project{"COCOA_HEADERS"} .= "cocoa/" . $file . " "
    }

    foreach $file (sort keys %wxGENERICINCLUDE) {
        $project{"COCOA_HEADERS"} .= "generic/" . $file . " "
    }

    foreach $file (sort keys %wxUNIXINCLUDE) {
        $project{"COCOA_HEADERS"} .= "unix/" . $file . " "
    }

    foreach $file (sort keys %wxHTMLINCLUDE) {
        $project{"COCOA_HEADERS"} .= "html/" . $file . " "
    }

    foreach $file (sort keys %wxPROTOCOLINCLUDE) {
        $project{"COCOA_HEADERS"} .= "protocol/" . $file . " "
    }

    foreach $file (sort keys %wxCOCOARESOURCE) {
        $project{"COCOARESOURCES"} .= $file . " "
    }
#$}
# This file was automatically generated by tmake 
# DO NOT CHANGE THIS FILE, YOUR CHANGES WILL BE LOST! CHANGE COCOA.T!
ALL_SOURCES = \
		#$ ExpandList("COCOA_SOURCES");

ALL_HEADERS = \
		#$ ExpandList("COCOA_HEADERS");

COMMONOBJS = \
		#$ ExpandList("COMMONOBJS");

GENERICOBJS = \
		#$ ExpandList("GENERICOBJS");

GUIOBJS = \
		#$ ExpandList("GUIOBJS");

UNIXOBJS = \
		#$ ExpandList("UNIXOBJS");

HTMLOBJS = \
		#$ ExpandList("HTMLOBJS");

COCOARESOURCES = \
		#$ ExpandList("COCOARESOURCES");
