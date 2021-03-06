// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Simon MARCHETTO
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 12475 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12475
//
// <-- Short Description -->
// csvRead does not support double quotes

csvPath = SCI + "/modules/spreadsheet/tests/nonreg_tests/bug_12475.csv";
val = csvRead(csvPath, ",", [], "string");

ref = ["Model", "MDO4014-3"; ..
       "FREQUENCY", "MATH<FFT(CH1, BLACKMANHARRIS, LOGRMS)>"];

assert_checkequal(val, ref);

