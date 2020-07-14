.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xa970, %rsi
lea addresses_WT_ht+0xa070, %rdi
clflush (%rsi)
nop
nop
cmp %r8, %r8
mov $74, %rcx
rep movsl
nop
nop
nop
nop
add $36921, %rsi
lea addresses_WT_ht+0x1cec5, %r10
clflush (%r10)
nop
nop
nop
sub %r11, %r11
movb (%r10), %r12b
nop
nop
cmp $3227, %rcx
lea addresses_UC_ht+0x2610, %rsi
lea addresses_WT_ht+0x1798, %rdi
nop
dec %r13
mov $18, %rcx
rep movsb
nop
nop
and %r13, %r13
lea addresses_D_ht+0x15f0, %rsi
lea addresses_UC_ht+0x1e3d8, %rdi
nop
nop
sub %r10, %r10
mov $94, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xb09a, %rsi
lea addresses_WC_ht+0x1faa, %rdi
nop
sub %r12, %r12
mov $57, %rcx
rep movsl
add $7867, %rdi
lea addresses_UC_ht+0x1e570, %r8
nop
and %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x1a360, %r13
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
and $13837, %r11
lea addresses_D_ht+0xf2b0, %rsi
lea addresses_A_ht+0x94b8, %rdi
nop
nop
sub %r12, %r12
mov $99, %rcx
rep movsl
nop
nop
nop
nop
sub $14053, %rsi
lea addresses_WC_ht+0x1ad70, %rsi
lea addresses_D_ht+0x70e0, %rdi
sub %r12, %r12
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1e4a4, %rcx
xor %r10, %r10
movb $0x61, (%rcx)
nop
xor $51690, %rdi
lea addresses_D_ht+0x1c5f0, %r8
nop
nop
xor %rsi, %rsi
mov (%r8), %di
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x8d70, %rcx
nop
xor %r11, %r11
mov (%rcx), %esi
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1b570, %r12
nop
nop
xor %r10, %r10
mov (%r12), %r13w
nop
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1c670, %r14
nop
and %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
xor $56463, %r14

// Store
lea addresses_PSE+0x1fab0, %r14
nop
nop
add %r9, %r9
movw $0x5152, (%r14)
xor %r13, %r13

// Store
lea addresses_A+0x2770, %rdi
nop
nop
nop
sub $35450, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rdi)
and %r15, %r15

// Store
lea addresses_D+0x16570, %r13
nop
nop
nop
nop
cmp $13699, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r13)
xor %r15, %r15

// REPMOV
mov $0x370, %rsi
lea addresses_A+0x1128, %rdi
nop
nop
nop
add %r14, %r14
mov $12, %rcx
rep movsw
cmp %r15, %r15

// Store
lea addresses_WC+0x10ee4, %r11
nop
sub $62856, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r11)
xor $56845, %r8

// Store
mov $0x3f0, %rcx
nop
nop
nop
nop
nop
add $43183, %r8
movb $0x51, (%rcx)
dec %r11

// Store
lea addresses_RW+0x1c170, %r8
nop
xor $51197, %r14
movl $0x51525354, (%r8)
nop
nop
nop
cmp $61440, %r9

// Load
lea addresses_A+0xe570, %r15
clflush (%r15)
nop
sub %rcx, %rcx
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
mov $0x58bac50000000d70, %rcx
nop
nop
sub $18361, %rdi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'46': 193, '00': 21636}
00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
