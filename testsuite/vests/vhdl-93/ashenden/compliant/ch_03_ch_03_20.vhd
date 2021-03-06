
-- Copyright (C) 1996 Morgan Kaufmann Publishers, Inc

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
-- $Id: ch_03_ch_03_20.vhd,v 1.2 2001-10-24 23:30:59 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

entity ch_03_20 is
end entity ch_03_20;

architecture test of ch_03_20 is
begin

  process_3_5_c : process is
  begin

    -- code from book:

    assert false
      report "Initialization complete" severity note;

    --

    report "Initialization complete";

    -- end of code from book

    wait;
  end process process_3_5_c;

end architecture test;
