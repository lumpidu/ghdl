
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc507.vhd,v 1.2 2001-10-26 16:30:26 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c03s02b02x00p06n02i00507ent IS
END c03s02b02x00p06n02i00507ent;

ARCHITECTURE c03s02b02x00p06n02i00507arch OF c03s02b02x00p06n02i00507ent IS
  type R1 is record
               RE1: INTEGER;
               RE2: BIT;
               RE3: BOOLEAN;
               RE1: REAL;  -- Failure_here
               -- ERROR - SEMANTIC ERROR: IDENTIFIERS OF ELEMENTS OF
               -- A RECORD TYPE MUST BE DISTINCT
             end record;
BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST: c03s02b02x00p06n02i00507 - Identifiers of elements of record type must be distinct."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c03s02b02x00p06n02i00507arch;
