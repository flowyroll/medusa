.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x192c5, %r15
nop
nop
nop
nop
nop
xor $17791, %rbp
mov (%r15), %ebx
nop
xor $4219, %r9
lea addresses_WT_ht+0x4d9b, %r13
nop
nop
nop
xor $55220, %r12
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
cmp $51661, %r9
lea addresses_UC_ht+0x3805, %rbx
nop
nop
nop
nop
nop
add $1762, %r9
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
sub $31630, %rbx
lea addresses_WT_ht+0x9405, %rbx
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rbx)
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0xc805, %rsi
lea addresses_A_ht+0xf085, %rdi
nop
xor $52069, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
and $53540, %rcx
lea addresses_A_ht+0x3005, %rsi
lea addresses_WC_ht+0x19a01, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $96, %rcx
rep movsl
nop
sub %rbx, %rbx
lea addresses_A_ht+0x12005, %rcx
nop
nop
nop
xor $45724, %rsi
mov (%rcx), %r13w
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x6099, %rsi
lea addresses_UC_ht+0x69ed, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $32, %rcx
rep movsb
dec %r9
lea addresses_UC_ht+0x1a3a0, %rbp
nop
add $51393, %r12
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
dec %r9
lea addresses_D_ht+0x18d78, %rdi
nop
nop
nop
nop
nop
add $2164, %r9
mov (%rdi), %r13
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x9305, %r14
nop
nop
nop
nop
cmp $41770, %rbp
movw $0x5152, (%r14)
sub %r8, %r8

// REPMOV
lea addresses_UC+0xf235, %rsi
lea addresses_D+0x1dc5, %rdi
nop
nop
nop
inc %rbx
mov $84, %rcx
rep movsq
nop
xor %rcx, %rcx

// REPMOV
lea addresses_WC+0x19005, %rsi
lea addresses_normal+0x2805, %rdi
clflush (%rsi)
nop
nop
and %rbx, %rbx
mov $126, %rcx
rep movsb
nop
nop
nop
sub $13278, %rcx

// Store
lea addresses_UC+0xc635, %rsi
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
and $45143, %r8

// Store
lea addresses_normal+0xe805, %rsi
nop
nop
nop
xor $53287, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_normal+0x2805, %rcx
nop
nop
nop
add %r8, %r8
movl $0x51525354, (%rcx)
nop
xor %rsi, %rsi

// Load
lea addresses_WT+0x1cb05, %rdi
nop
nop
dec %rcx
mov (%rdi), %r9w
nop
nop
nop
nop
and $19517, %r14

// Store
lea addresses_A+0x5d45, %r9
clflush (%r9)
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_D+0xe205, %rdi
nop
nop
nop
cmp $47379, %r14
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_normal+0x2805, %rbx
nop
nop
nop
xor %r14, %r14
mov (%rbx), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'54': 163}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
