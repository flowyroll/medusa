.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5ac1, %r15
nop
nop
nop
nop
add %r9, %r9
mov (%r15), %esi
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x141e3, %rsi
lea addresses_WT_ht+0x12e07, %rdi
xor %r10, %r10
mov $65, %rcx
rep movsw
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1eb99, %r9
nop
nop
add %rdi, %rdi
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
xor $56851, %rcx
lea addresses_WC_ht+0xd81, %rsi
clflush (%rsi)
nop
nop
add $44491, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp $2670, %r15
lea addresses_A_ht+0x17301, %rsi
lea addresses_WT_ht+0x1c981, %rdi
nop
and %r10, %r10
mov $53, %rcx
rep movsl
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xbf81, %rcx
nop
nop
sub %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1d441, %rdi
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $29258, %r15
lea addresses_WC_ht+0x1cdad, %r12
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r12)
nop
add $37339, %r15
lea addresses_A_ht+0x11597, %rcx
nop
nop
nop
sub $42653, %r10
mov (%rcx), %r9
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0xcc81, %rsi
lea addresses_A_ht+0x1d881, %rdi
nop
inc %r10
mov $23, %rcx
rep movsw
nop
nop
nop
nop
cmp $646, %r15
lea addresses_WC_ht+0xc341, %rdi
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_UC+0x10201, %r14
inc %r12
movl $0x51525354, (%r14)
nop
nop
nop
inc %r12

// Load
lea addresses_RW+0x9f11, %rbp
nop
nop
nop
nop
nop
add $29220, %r9
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_normal+0x79c1, %r9
xor $28400, %r14
movl $0x51525354, (%r9)
nop
nop
nop
inc %rbx

// Store
lea addresses_UC+0xb581, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0xad81, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rbp), %r9w
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
