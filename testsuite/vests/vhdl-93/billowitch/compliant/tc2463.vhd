
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
-- $Id: tc2463.vhd,v 1.2 2001-10-26 16:29:48 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s03b02x02p03n02i02463ent IS
END c07s03b02x02p03n02i02463ent;

ARCHITECTURE c07s03b02x02p03n02i02463arch OF c07s03b02x02p03n02i02463ent IS
  subtype    BV1 is BIT_VECTOR (2 downto 1);
  constant    c   : BV1 := ('1', others => '0');
BEGIN
  TESTING: PROCESS
  BEGIN
    assert NOT( c="10" )
      report "***PASSED TEST: c07s03b02x02p03n02i02463"
      severity NOTE;
    assert ( c="10" )
      report "***FAILED TEST: c07s03b02x02p03n02i02463 - An aggregate with an others choice can appear as an expression defining the initial value of a constant."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s03b02x02p03n02i02463arch;
