# -*- coding: utf-8 -*-
#
#  TECS Generator
#      Generator for TOPPERS Embedded Component System
#  
#   Copyright (C) 2008-2018 by TOPPERS Project
#--
#   上記著作権者は，以下の(1)〜(4)の条件を満たす場合に限り，本ソフトウェ
#   ア（本ソフトウェアを改変したものを含む．以下同じ）を使用・複製・改
#   変・再配布（以下，利用と呼ぶ）することを無償で許諾する．
#   (1) 本ソフトウェアをソースコードの形で利用する場合には，上記の著作
#       権表示，この利用条件および下記の無保証規定が，そのままの形でソー
#       スコード中に含まれていること．
#   (2) 本ソフトウェアを，ライブラリ形式など，他のソフトウェア開発に使
#       用できる形で再配布する場合には，再配布に伴うドキュメント（利用
#       者マニュアルなど）に，上記の著作権表示，この利用条件および下記
#       の無保証規定を掲載すること．
#   (3) 本ソフトウェアを，機器に組み込むなど，他のソフトウェア開発に使
#       用できない形で再配布する場合には，次のいずれかの条件を満たすこ
#       と．
#     (a) 再配布に伴うドキュメント（利用者マニュアルなど）に，上記の著
#         作権表示，この利用条件および下記の無保証規定を掲載すること．
#     (b) 再配布の形態を，別に定める方法によって，TOPPERSプロジェクトに
#         報告すること．
#   (4) 本ソフトウェアの利用により直接的または間接的に生じるいかなる損
#       害からも，上記著作権者およびTOPPERSプロジェクトを免責すること．
#       また，本ソフトウェアのユーザまたはエンドユーザからのいかなる理
#       由に基づく請求からも，上記著作権者およびTOPPERSプロジェクトを
#       免責すること．
#  
#   本ソフトウェアは，無保証で提供されているものである．上記著作権者お
#   よびTOPPERSプロジェクトは，本ソフトウェアに関して，特定の使用目的
#   に対する適合性も含めて，いかなる保証も行わない．また，本ソフトウェ
#   アの利用により直接的または間接的に生じたいかなる損害に関しても，そ
#   の責任を負わない．
#  
#   $Id: messages_file_en_US.rb 2852 2018-04-09 10:38:29Z okuma-top $
#++


# File Messages for en_US 
class TECSMsg

## generate.rb ##

@@comment = {}

# MSg.note
# @@comment[ :note ] = " * このファイルは tecsgen により自動生成されました
#  * このファイルを編集して使用することは、意図されていません
# "
@@comment[ :note ] = " * This file was automatically generated by tecsgen.
 * This file is not intended to be edited.
"

# @@comment[ :preamble_note ] = "/* #[<PREAMBLE>]#
#  * #[<...>]# から #[</...>]# で囲まれたコメントは編集しないでください
#  * tecsmerge によるマージに使用されます
# "
@@comment[ :preamble_note ] = "/* #[<PREAMBLE>]#
 * Don't edit the comments between #[<...>]# and #[</...>]#
 * These comment are used by tecsmerege when merging.
"

# @@comment[ :postamble_note ] = "/* #[<POSTAMBLE>]#
#  *   これより下に非受け口関数を書きます
#  * #[</POSTAMBLE>]#*/
# "
@@comment[ :postamble_note ] = "/* #[<POSTAMBLE>]#
 *   Put non-entry functions below.
 * #[</POSTAMBLE>]#*/
"

# @@comment[ :template_note ] = "/*
#  * このファイルは tecsgen によりテンプレートとして自動生成されました
#  * このファイルを編集して使用することが意図されていますが
#  * tecsgen の再実行により上書きされてしまうため、通常
#  *   gen/%s_templ.c => src/%s.c
#  * のように名前, フォルダを変更してから修正します
#  */
# "
@@comment[ :template_note ] = "/*
 * This file was automatically generated by tecsgen.
 * Move and rename like below before editing,
 *   gen/%s_templ.c => src/%s.c
 * to avoid to be overwritten by tecsgen.
 */
"

# @@comment[ :inline_template_note ] = "/*
#  * このファイルは tecsgen によりテンプレートとして自動生成されました
#  * このファイルを編集して使用することが意図されていますが
#  * tecsgen の再実行により上書きされてしまうため、通常
#  *   gen/%s_inline_template.h => src/%s_inline.h
#  * のように名前, フォルダを変更してから修正します
#  */
# "
@@comment[ :inline_template_note ] = "/*
 * This file was automatically generated by tecsgen.
 * Move and rename like below before editing,
 *   gen/%s_inline_template.h => src/%s_inline.h
 * to avoid to be overwritten by tecsgen.
 */
"

# @@comment[ :Makefile_note ] = "# このファイルは tecsgen により自動生成されました
# # Makefile.temp は gen の一つ上のディレクトリに移して使用します
# #  % mv Makefile.temp Makefile
# # 
# # clean のデフォルト動作は $(GEN_DIR)/Makefile.* を削除します
# 
# "
@@comment[ :Makefile_note ] = "# This file was automatically generated by tecsgen.
# Move Makefile.temp upper directory like below before editing.
#  % mv Makefile.temp Makefile
# 
# \"make clean\" deletes $(GEN_DIR)/Makefile.* by default.
#
# This file is generated suitable for GNU make and a target on POSIX environemnt using gcc.
# You might have to adjust vpath, CFLAGS, OTHER_OBJS, etc.
# For other target you have to modify this file.

"

# @@comment[ :oneway_ercd_note ] = "/* oneway の場合 E_OK しか返せません */"
@@comment[ :oneway_ercd_note ] = "/* Oneway function always returns E_OK. */"

# @@comment[ :ercd_note ] = "/* エラー処理コードをここに記述します */"
@@comment[ :ercd_note ] = "/* Write error processing code here */"

# @@comment[ :IMP_comment ] = "\n/* import_C により import されるヘッダ %s */\n"
@@comment[ :IMP_comment ] = "\n/* header imported by import_C %s */\n"

# @@comment[ :MVAR_comment ] = "# 変数 %s\n"
@@comment[ :MVAR_comment ] = "# var %s\n"

# @@comment[ :MRUL_comment ] = "# ルール %s\n"
@@comment[ :MRUL_comment ] = "# Rule %s\n"

# @@comment[ :TCM_comment ] = "# テンプレートコードでメークしてみる場合 %s\n"
@@comment[ :TCM_comment ] = "# in case build with template code %s\n"

# @@comment[ :MDEP_comment ] = "\n# depend を include %s\n"
@@comment[ :MDEP_comment ] = "\n# include dependcy %s\n"

# @@comment[ :SDI_comment ] = "/* シグニチャディスクリプタ参照ヘッダ %s */\n"
@@comment[ :SDI_comment ] = "/* descriptor referencing signature header %s */\n"

# @@comment[ :SD_comment ] = "/* シグニチャディスクリプタ %s */\n"
@@comment[ :SD_comment ] = "/* signature descriptor %s */\n"

# @@comment[ :SFT_comment ] = "/* シグニチャ関数テーブル %s */\n"
@@comment[ :SFT_comment ] = "/* signature function table %s */\n"

# @@comment[ :SDES_comment ] = "/* シグニチャディスクリプタ(動的結合用) %s */\n"
@@comment[ :SDES_comment ] = "/* signature descriptor %s for dynamic join */\n"

# @@comment[ :IRTH_comment ] = "/* ランタイムヘッダ %s */\n"

# @@comment[ :UDF_comment ] = "/* inline のための undef %s */\n"
@@comment[ :UDF_comment ] = "/* undef for inline %s */\n"

# @@comment[ :IGH_comment ] = "/* グローバルヘッダ %s */\n"
@@comment[ :IGH_comment ] = "/* global header %s */\n"

# @@comment[ :ISH_comment ] = "/* シグニチャヘッダ %s */\n"
@@comment[ :ISH_comment ] = "/* signature header %s */\n"

# @@comment[ :ICT_comment ] = "/* 最適化のため参照するセルタイプの CB 型の定義を取込む %s */\n"
@@comment[ :ICT_comment ] = "/* to get the definition of CB type of referenced celltype for optimization %s */\n"

# @@comment[ :NIDB_comment ] = "ID のベース "
@@comment[ :NIDB_comment ] = "ID Base "

# @@comment[ :NCEL_comment ] = "セルの個数"
@@comment[ :NCEL_comment ] = " number of cells"

# @@comment[ :CVI_comment ] = "/* IDXの正当性チェックマクロ %s */\n"
@@comment[ :CVI_comment ] = "/* IDX validation macro %s */\n"

# @@comment[ :CVIA_comment ] = "/* IDXの正当性チェックマクロ（短縮形） %s */\n"
@@comment[ :CVIA_comment ] = "/* IDX validation macro (abbrev.) %s */\n"

# @@comment[ :NCPA_comment ] = "/* 呼び口配列の大きさを得るマクロ %s */\n"
@@comment[ :NCPA_comment ] = "/* call port array size macro %s */\n"

# @@comment[ :NEPA_comment ] = "/* 受け口配列の大きさを得るマクロ %s */\n"
@@comment[ :NEPA_comment ] = "/* entry port array size macro %s */\n"

# @@comment[ :TOCP_comment ] = "/* optional 呼び口をテストするマクロ %s */\n"
@@comment[ :TOCP_comment ] = "/* optional call port test macro %s */\n"

# @@comment[ :TOCPA_comment ] = "/* optional 呼び口をテストするマクロ（短縮形） %s */\n"
@@comment[ :TOCPA_comment ] = "/* optional call port test macro (abbrev) %s */\n"

# @@comment[ :GCB_comment ] = "\n/* セルCBを得るマクロ %s */\n"
@@comment[ :GCB_comment ] = "\n/* celll CB macro %s */\n"

# @@comment[ :GCBA_comment ] = "\n/* セルCBを得るマクロ(短縮形) %s */\n"
@@comment[ :GCBA_comment ] = "\n/* cell CB macro (abbrev) %s */\n"

# @@comment[ :CCT_comment ] = "/* CELLCB 型(短縮形) %s */\n"
@@comment[ :CCT_comment ] = "/* CELLCB type (abbrev) %s */\n"

# @@comment[ :CTIXA_comment ] = "/* セルタイプのIDX型(短縮形) %s */\n"
@@comment[ :CTIXA_comment ] = "/* celltype IDX type (abbrev) %s */\n"

# @@comment[ :AAM_comment ] = "\n/* 属性アクセスマクロ %s */\n"
@@comment[ :AAM_comment ] = "\n/* attr access  %s */\n"

# @@comment[ :VAM_comment ] = "\n/* var アクセスマクロ %s */\n"
@@comment[ :VAM_comment ] = "\n/* var access macro %s */\n"

# @@comment[ :AAMA_comment ] = "\n/* 属性アクセスマクロ(短縮形) %s */\n"
@@comment[ :AAMA_comment ] = "\n/* attr access macro (abbrev) %s */\n"

# @@comment[ :VAMA_comment ] = "\n/* var アクセスマクロ(短縮形) %s */\n"
@@comment[ :VAMA_comment ] = "\n/* var access macro (abbrev) %s */\n"

# @@comment[ :CPM_comment ] = " /* 呼び口関数マクロ %s */\n"
@@comment[ :CPM_comment ] = " /* call port function macro %s */\n"

# @@comment[ :CPMA_comment ] = "/* 呼び口関数マクロ（短縮形）%s */\n"
@@comment[ :CPMA_comment ] = "/* call port function macro (abbrev) %s */\n"

# @@comment[ :EPM_comment ] = "\n/* 受け口関数マクロ（短縮形） %s */\n"
@@comment[ :EPM_comment ] = "\n/* entry port function macro (abbrev) %s */\n"

# @@comment[ :CRD_comment ] = "\n/* ディスクリプタ参照関数 %s */\n"
@@comment[ :CRD_comment ] = "/* refer to descriptor function %s */\n"

# @@comment[ :CRDA_comment ] = "\n/* ディスクリプタ参照マクロ（短縮形） %s */\n"
@@comment[ :CRDA_comment ] = "\n/* refer to descriptor macro (abbrev) %s */\n"

# @@comment[ :SDF_comment ] = "/* ディスクリプタ設定関数 %s */\n"
@@comment[ :SDF_comment ] = "/* set descriptor function %s */\n"

# @@comment[ :SDMA_comment ] = "\n/* ディスクリプタ設定マクロ（短縮形） %s */\n"
@@comment[ :SDMA_comment ] = "\n/* set descriptor macro (abbrev) %s */\n"

# @@comment[ :CTIX_comment ] = "\n/* セルタイプのIDX型 %s */\n"
@@comment[ :CTIX_comment ] = "\n/* celltype IDX type %s */\n"

# @@comment[ :EPP_comment ] = "\n/* 受け口関数プロトタイプ宣言 %s */\n"
@@comment[ :EPP_comment ] = "\n/* prototype declaration of entry port function %s */\n"

# @@comment[ :EPSP_comment ] = "\n/* 受け口スケルトン関数プロトタイプ宣言（VMT不要最適化により参照するもの） %s */\n"
@@comment[ :EPSP_comment ] = "\n/* prototype declaration of entry port function (referenced when VMT useless optimise enabled) %s */\n"

# @@comment[ :INL_comment ] = "/* inline ヘッダの include %s */\n"
@@comment[ :INL_comment ] = "/*  include inline header %s */\n"

# @@comment[ :CIP_comment ] = "/* セル INIB 型宣言 %s */\n"
@@comment[ :CIP_comment ] = "/* cell INIB type definition %s */\n"

# @@comment[ :CCTPA_comment ] = "/* セル CB 型宣言 %s */\n"
@@comment[ :CCTPA_comment ] = "/* cell CB type definition %s */\n"

# @@comment[ :CCDP_comment ] = "/* セル CB (ダミー)型宣言 %s */\n"
@@comment[ :CCDP_comment ] = "/* cell CB (dummy) type definition %s */\n"

# @@comment[ :CCTPO_comment ] = "/* セル CB 型宣言 %s */\n"
@@comment[ :CCTPO_comment ] = "/* cell CB type definition %s */\n"

# @@comment[ :SCP_comment ] = "/* シングルトンセル CB プロトタイプ宣言 %s */\n"
@@comment[ :SCP_comment ] = "/* singleton cell CB prototype declaration %s */\n"

# @@comment[ :DCI_comment ] = "\n/* CB は存在しない。INIB を CB の代わりに使用するための define %s */\n"
@@comment[ :DCI_comment ] = "\n/* CB not exist. CB corresponding to INIB %s */\n"

# @@comment[ :FEC_comment ] = "/* イテレータコード (FOREACH_CELL)の生成 %s */\n"
@@comment[ :FEC_comment ] = "/* iteration code (FOREACH_CELL) %s */\n"

# @@comment[ :DAL_comment ] = "/* deallocate マクロ %s */\n"
@@comment[ :DAL_comment ] = "/* deallocate macro %s */\n"

# @@comment[ :NFEC_comment ] = "/* イテレータコード (FOREACH_CELL)の生成(CB,INIB は存在しない) %s */\n"
@@comment[ :NFEC_comment ] = "/* iteration code (FOREACH_CELL) (niether CB, nor NIB exit) %s */\n"

# @@comment[ :CIM_comment ] = "/* CB 初期化マクロ %s */\n"
@@comment[ :CIM_comment ] = "/* CB initialize macro %s */\n"

# @@comment[ :EDT_comment ] = "/* 受け口ディスクリプタ型 %s */\n"
@@comment[ :EDT_comment ] = "/* entry port descriptor type %s */\n"

# @@comment[ :EPSF_comment ] = "/* 受け口スケルトン関数 %s */\n"
@@comment[ :EPSF_comment ] = "/* entry port skelton function %s */\n"

# @@comment[ :EPSFT_comment ] = "/* 受け口スケルトン関数テーブル %s */\n"
@@comment[ :EPSFT_comment ] = "/* entry port skelton function table %s */\n"

# @@comment[ :CPEPD_comment ] = "/* 呼び口の参照する受け口ディスクリプタ(実際の型と相違した定義) %s */\n"
@@comment[ :CPEPD_comment ] = "/* entry port descriptor referenced by call port (differ from actual definition) %s */\n"

# @@comment[ :CPA_comment ] = "/* 呼び口配列 %s */\n"
@@comment[ :CPA_comment ] = "/* call port array %s */\n"

# @@comment[ :CIC_comment ] = "/* CB 初期化コード %s */\n"
@@comment[ :CIC_comment ] = "/* CB initialize code %s */\n"

# @@comment[ :AVAI_comment ] = "/* 属性・変数の配列 %s */\n"
@@comment[ :AVAI_comment ] = "/* array of attr/var %s */\n"

# @@comment[ :AVI_comment ] = "/* 変数(構造体、配列)初期値 %s */\n"
@@comment[ :AVI_comment ] = "/* var (struct, array) initial value %s */\n"

# @@comment[ :INIB_comment ] = "/* セル INIB %s */\n"
@@comment[ :INIB_comment ] = "/* cell INIB %s */\n"

# @@comment[ :CB_comment ] = "/* セル CB %s */\n"
@@comment[ :CB_comment ] = "/* cell CB %s */\n"

# @@comment[ :EPD_comment ] = "/* 受け口ディスクリプタ %s */\n"
@@comment[ :EPD_comment ] = "/* entry port descriptor %s */\n"

# @@comment[ :PAC_comment ] = "/* プロトタイプ宣言や変数の定義をここに書きます %s */\n"
@@comment[ :PAC_comment ] = "/* Put prototype declaration and/or variale definition here %s */\n"

# @@comment[ :CAAM_comment ] = " *\n * 属性アクセスマクロ %s\n"
@@comment[ :CAAM_comment ] = " *\n * attr access macro %s\n"

# @@comment[ :CAAMI_comment ] = " *\n * 属性アクセスマクロ %s\n"
@@comment[ :CAAMI_comment ] = " *\n * attr access macro %s\n"

# @@comment[ :TYP_comment ] = " *\n * 型 %s\n * CELLCB 型  : %s\n * CELLIDX 型 : %s\n"
@@comment[ :TYP_comment ] = " *\n * type %s\n * CELLCB type  : %s\n * CELLIDX type : %s\n"

# @@comment[ :TCPF_comment ] = " * 呼び口関数 %s\n"
@@comment[ :TCPF_comment ] = " * call port function %s\n"

# @@comment[ :TEPF_comment ] = "/* 受け口関数 %s */\n"
@@comment[ :TEPF_comment ] = "/* entry port function %s */\n"

# @@comment[ :TEFB_comment ] = "\t/* ここに処理本体を記述します %s */\n"
@@comment[ :TEFB_comment ] = "\t/* Put statements here %s */\n"

end
