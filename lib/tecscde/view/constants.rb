=begin

TECSCDE - TECS Component Diagram Editor

Copyright (C) 2014-2019 by TOPPERS Project

 The above copyright holders grant permission gratis to use,
 duplicate, modify, or redistribute (hereafter called use) this
 software (including the one made by modifying this software),
 provided that the following four conditions (1) through (4) are
 satisfied.

 (1) When this software is used in the form of source code, the above
     copyright notice, this use conditions, and the disclaimer shown
     below must be retained in the source code without modification.

 (2) When this software is redistributed in the forms usable for the
     development of other software, such as in library form, the above
     copyright notice, this use conditions, and the disclaimer shown
     below must be shown without modification in the document provided
     with the redistributed software, such as the user manual.

 (3) When this software is redistributed in the forms unusable for the
     development of other software, such as the case when the software
     is embedded in a piece of equipment, either of the following two
     conditions must be satisfied:

   (a) The above copyright notice, this use conditions, and the
       disclaimer shown below must be shown without modification in
       the document provided with the redistributed software, such as
       the user manual.

   (b) How the software is to be redistributed must be reported to the
       TOPPERS Project according to the procedure described
       separately.

 (4) The above copyright holders and the TOPPERS Project are exempt
     from responsibility for any type of damage directly or indirectly
     caused from the use of this software and are indemnified by any
     users or end users of this software from any and all causes of
     action whatsoever.

 THIS SOFTWARE IS PROVIDED "AS IS." THE ABOVE COPYRIGHT HOLDERS AND
 THE TOPPERS PROJECT DISCLAIM ANY EXPRESS OR IMPLIED WARRANTIES,
 INCLUDING, BUT NOT LIMITED TO, ITS APPLICABILITY TO A PARTICULAR
 PURPOSE. IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS AND THE
 TOPPERS PROJECT BE LIABLE FOR ANY TYPE OF DAMAGE DIRECTLY OR
 INDIRECTLY CAUSED FROM THE USE OF THIS SOFTWARE.

=end

require "gtk2"

module TECSCDE
  module View
    module Constants
      DPI = 96.0                                  # Dot per Inch
      # DPI = 72.0                                # Dot per Inch

      ScaleHeight = 50                            # Height of HScale widget

      Scale = 1.0                                 # Scale initial value
      ScaleValIni = Scale * 100                   # 100%
      ScaleValMax = ScaleValIni * 2.00            # 200%
      ScaleValMin = ScaleValIni * 0.05            #   5%

      Triangle_Len     = 3                        # edge length(mm)
      Triangle_Height  = 2.598                    # height (mm)

      #----- draw text argment value -----#
      # object
      CELL_NAME         = 1
      CELLTYPE_NAME     = 2
      CELL_NAME_L       = 3
      SIGNATURE_NAME    = 4
      PORT_NAME         = 5
      PAPER_COMMENT     = 6

      # text alignment
      ALIGN_CENTER      = Pango::Layout::ALIGN_CENTER
      ALIGN_LEFT        = Pango::Layout::ALIGN_LEFT
      ALIGN_RIGHT       = Pango::Layout::ALIGN_RIGHT

      # text direction
      TEXT_HORIZONTAL   = 1   # left to right
      TEXT_VERTICAL     = 2   # bottom to top

      #----- Cursor for mouse pointer -----#
      CURSOR_PORT       = Gdk::Cursor.new Gdk::Cursor::SB_LEFT_ARROW
      CURSOR_JOINING    = Gdk::Cursor.new Gdk::Cursor::DOT
      CURSOR_JOIN_OK    = Gdk::Cursor.new Gdk::Cursor::CIRCLE
      CURSOR_NORMAL     = Gdk::Cursor.new Gdk::Cursor::TOP_LEFT_ARROW

      GapActive         = 1   # (mm)  gap of active cell between inner rectangle and outer one
      GapPort           = 0.8 # (mm)  gap between port name & edge

      #----- Paper -----#
      PAPER_MARGIN = 10 # (mm)

      #----- constnts for div_string -----#
      Char_A = "A"[0]
      Char_Z = "Z"[0]
      Char__ = "_"[0]

      #----- Color -----#
      Color_editable_cell = :gray97
      Color_uneditable    = :blue
      Color_editable      = :black
      Color_hilite        = :magenta
      Color_incomplete    = :red
      Color_unjoin        = :magenta
      # color names are found in setup_colormap
    end
  end

  include TECSCDE::View::Constants
end
