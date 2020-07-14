.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3011, %rbp
and $35738, %r11
mov (%rbp), %r13w
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1d9ce, %rsi
lea addresses_D_ht+0x12e51, %rdi
nop
nop
and %r12, %r12
mov $69, %rcx
rep movsq
nop
nop
dec %r12
lea addresses_normal_ht+0x125dd, %rcx
nop
sub $5825, %r8
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x1bc21, %rcx
cmp $8480, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x14085, %r13
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x191ca, %r13
clflush (%r13)
nop
nop
nop
nop
xor $50178, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r13)
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x1151, %rcx
clflush (%rcx)
sub %r11, %r11
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1b151, %rsi
lea addresses_D_ht+0x10951, %rdi
nop
dec %r8
mov $98, %rcx
rep movsl
nop
nop
add $26679, %r13
lea addresses_WC_ht+0x14ef1, %rsi
nop
nop
add $62939, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x10f51, %r12
clflush (%r12)
nop
nop
nop
xor %r13, %r13
movb (%r12), %r8b
nop
nop
xor $2798, %r8
lea addresses_WC_ht+0x17851, %rsi
lea addresses_D_ht+0x6351, %rdi
clflush (%rsi)
add $21105, %r13
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $31796, %rdi
lea addresses_normal_ht+0x96c1, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdi), %r13w
nop
nop
nop
nop
add $47383, %r12
lea addresses_WC_ht+0xd751, %rsi
lea addresses_UC_ht+0x14cf1, %rdi
nop
and %r8, %r8
mov $125, %rcx
rep movsl
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x1bf51, %r10
nop
nop
sub $40175, %r8
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
add %r11, %r11

// REPMOV
lea addresses_RW+0x112e1, %rsi
lea addresses_PSE+0x1cf49, %rdi
nop
nop
nop
add $40852, %r8
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence

// Store
lea addresses_UC+0x1ef51, %rcx
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
add %rdi, %rdi

// Faulty Load
lea addresses_WC+0x18f51, %r11
nop
nop
nop
nop
and $57130, %rsi
movb (%r11), %r13b
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'58': 27}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
