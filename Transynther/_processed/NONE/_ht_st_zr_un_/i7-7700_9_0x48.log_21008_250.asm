.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19c89, %rsi
lea addresses_A_ht+0x1c029, %rdi
inc %r10
mov $18, %rcx
rep movsb
nop
dec %r13
lea addresses_WC_ht+0x16bbd, %r9
nop
xor %rdi, %rdi
movb (%r9), %r13b
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x9e29, %rsi
lea addresses_A_ht+0x5e29, %rdi
lfence
mov $14, %rcx
rep movsl
inc %r13
lea addresses_WT_ht+0x1d0e9, %r10
nop
nop
inc %rsi
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1caa3, %rsi
lea addresses_WT_ht+0x137c9, %rdi
xor $19312, %r13
mov $104, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x16749, %r10
clflush (%r10)
cmp $51703, %r13
movb (%r10), %r9b
nop
nop
nop
nop
and $37804, %r10
lea addresses_WT_ht+0x19e09, %r11
nop
nop
xor $13108, %rcx
mov (%r11), %di
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x12da9, %r11
clflush (%r11)
nop
cmp %r13, %r13
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x6785, %rsi
lea addresses_D_ht+0x16109, %rdi
nop
nop
cmp %rbp, %rbp
mov $106, %rcx
rep movsq
sub $38864, %rbp
lea addresses_A_ht+0x4229, %rsi
lea addresses_A_ht+0x27e7, %rdi
nop
nop
cmp $22538, %rbp
mov $105, %rcx
rep movsw
inc %rcx
lea addresses_D_ht+0x4c29, %rsi
lea addresses_UC_ht+0xf3d9, %rdi
nop
dec %r13
mov $58, %rcx
rep movsb
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x16389, %rsi
lea addresses_WC_ht+0x9629, %rdi
clflush (%rdi)
nop
sub $9808, %r13
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $46311, %r10
lea addresses_WC_ht+0xea29, %rbp
nop
nop
nop
nop
nop
add $6283, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x12815, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x309, %rsi
lea addresses_UC_ht+0x71b9, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $112, %rcx
rep movsq
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rdi
push %rsi

// Store
lea addresses_D+0x1aa29, %r11
nop
and %r14, %r14
movl $0x51525354, (%r11)
xor $32168, %rbp

// Faulty Load
lea addresses_UC+0x1aa29, %r14
clflush (%r14)
nop
nop
nop
nop
add %rbp, %rbp
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'3b': 1, 'e2': 1, '45': 14417, '88': 1, '00': 6582, '7e': 1, '66': 1, '48': 1, 'a8': 1, '44': 2}
00 45 45 00 00 00 45 00 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 00 00 45 00 45 45 45 00 00 45 45 45 00 45 00 45 00 45 45 45 45 00 45 45 00 00 45 45 00 45 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 45 00 45 45 45 00 00 45 00 00 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 00 45 45 45 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 45 00 45 45 00 45 00 00 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 45 45 45 00 45 00 45 45 45 00 45 45 00 00 00 00 45 45 45 00 00 00 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 00 00 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 00 00 00 00 45 00 00 45 00 00 45 45 45 45 45 00 45 45 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 00 45 45 00 00 45 45 45 45 00 45 45 45 00 45 00 00 45 00 45 45 45 45 45 45 00 00 00 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 00 00 45 45 45 45 00 45 00 45 45 45 00 00 00 00 00 45 45 45 00 00 45 45 00 45 45 00 00 45 45 00 45 45 45 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 45 00 00 45 00 45 45 00 00 45 45 45 45 45 45 45 00 00 45 45 00 00 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 88 45 45 45 00 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 00 00 00 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 00 00 00 45 00 45 45 45 45 00 45 45 45 00 00 45 00 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 45 00 45 00 00 45 45 00 00 45 45 45 00 45 45 45 45 00 00 45 00 00 00 00 00 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 00 45 00 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 00 45 45 00 00 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 45 00 00 00 00 45 45 45 45 45 45 45 45 00 45 00 00 45 00 45 45 45 00 00 45 00 00 45 00 00 00 45 45 45 00 00 45 45 45 45 00 00 45 00 00 00 45 00 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 00 45 45 00 00 45 45 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 00 00 00 45 45 45 00 45 00 00
*/
