.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b97, %rsi
lea addresses_normal_ht+0x1d197, %rdi
nop
dec %r13
mov $80, %rcx
rep movsl
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x5324, %r9
add %r15, %r15
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x1cdb7, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rdi), %r15
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x14307, %rsi
lea addresses_normal_ht+0x28b7, %rdi
nop
nop
nop
nop
nop
cmp $30744, %rbp
mov $34, %rcx
rep movsb
and %r13, %r13
lea addresses_normal_ht+0x4b7, %rsi
lea addresses_A_ht+0xf99f, %rdi
xor $60952, %r15
mov $32, %rcx
rep movsq
nop
sub %r14, %r14
lea addresses_WC_ht+0xa6b7, %rsi
lea addresses_A_ht+0x19b5f, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $31726, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1a997, %rbp
nop
nop
nop
nop
add $16920, %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and $6203, %r12

// Store
lea addresses_WT+0x182b7, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_D+0x42b7, %rbp
nop
nop
nop
nop
nop
xor $47618, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor $1526, %r13

// Store
lea addresses_A+0x140b7, %r12
nop
nop
nop
sub $52540, %rcx
movw $0x5152, (%r12)
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x170e3, %rdi
xor $11697, %r13
movl $0x51525354, (%rdi)
nop
nop
dec %rbp

// Store
lea addresses_A+0x140b7, %rsi
nop
nop
sub $64651, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_A+0x140b7, %rdi
nop
nop
nop
nop
inc %rbp
mov (%rdi), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'58': 99}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
