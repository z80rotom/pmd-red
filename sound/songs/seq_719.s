@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_719_grp, bank_026
	.equ	seq_719_pri, 127
	.equ	seq_719_rev, 0
	.equ	seq_719_mvl, 127
	.equ	seq_719_key, 0

	.section .rodata
	.global	seq_719
	.align	2

@*********************** Track 01 ***********************@

seq_719_0:
	.byte	KEYSH , seq_719_key+0
	.byte	TEMPO , 180/2
	.byte		VOICE , 11
	.byte		VOL   , 115*seq_719_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		MOD   , 50
	.byte	W01
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		N07   , Cs2 , v127
	.byte	W01
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-28
	.byte	W05
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-1
	.byte		N05   , Gn2 
	.byte	W01
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+24
	.byte		N04   , As2 , v088
	.byte	W01
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+44
	.byte		N04   , Bn2 
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W01
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte	FINE

@******************************************************@

	.align	2

seq_719:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_719_pri	@ Priority
	.byte	seq_719_rev	@ Reverb

	.word	seq_719_grp

	.word	seq_719_0

	.end