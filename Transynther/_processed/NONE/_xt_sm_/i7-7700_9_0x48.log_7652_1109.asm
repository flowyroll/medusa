.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a7e5, %rbp
nop
xor %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x120c5, %r8
nop
and $7107, %rdi
movw $0x6162, (%r8)
nop
sub %r8, %r8
lea addresses_A_ht+0x50c5, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1d1b5, %r15
nop
nop
nop
nop
sub $13342, %r11
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
and %r12, %r12
lea addresses_D_ht+0x13ad5, %rsi
lea addresses_D_ht+0x1d7a5, %rdi
clflush (%rdi)
nop
sub %r9, %r9
mov $121, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $31900, %rsi
lea addresses_UC_ht+0x13805, %r8
cmp %r11, %r11
mov (%r8), %di
nop
and $56253, %r15
lea addresses_D_ht+0x114c5, %r11
nop
nop
nop
inc %rbp
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rdi
add $49857, %r11
lea addresses_WT_ht+0xe4c5, %rdi
nop
nop
and $60291, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rdi
vmovaps %ymm0, (%rdi)
mfence
lea addresses_A_ht+0xb240, %rcx
add $18331, %r11
movb (%rcx), %r12b
sub $1277, %rcx
lea addresses_normal_ht+0x16d65, %rsi
lea addresses_WC_ht+0x1c4c5, %rdi
clflush (%rdi)
nop
cmp $15039, %r11
mov $18, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x16cc5, %r12
nop
add $62141, %rsi
movups (%r12), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x66c5, %rsi
lea addresses_normal_ht+0x12b45, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r12, %r12
mov $73, %rcx
rep movsl
nop
nop
nop
nop
sub $64232, %r9
lea addresses_UC_ht+0x1d945, %rbp
nop
nop
nop
add $40502, %r9
mov (%rbp), %r8
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x774d, %rbp
sub %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
sub $57605, %r15

// Store
lea addresses_D+0x19cc5, %r14
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add $25861, %r15

// Store
lea addresses_RW+0x13ac5, %r14
nop
nop
nop
nop
xor $15671, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_D+0x19cc5, %rdi
nop
nop
nop
sub $52242, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
xor $5003, %rbp

// Store
lea addresses_D+0x4cc5, %rdi
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x19cc5, %r15
nop
nop
nop
nop
sub $35086, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r15)
nop
nop
xor %rbp, %rbp

// Load
mov $0x35d1da00000000c5, %r14
clflush (%r14)
nop
nop
and $19542, %r15
movb (%r14), %r11b
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_D+0x19cc5, %r9
nop
nop
add %rdi, %rdi
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'58': 7652}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
