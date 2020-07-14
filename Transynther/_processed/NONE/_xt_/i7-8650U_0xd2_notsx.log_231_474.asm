.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x22de, %r15
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
mfence
lea addresses_D_ht+0x17452, %rsi
lea addresses_A_ht+0x4c6a, %rdi
and $2950, %r8
mov $51, %rcx
rep movsq
cmp $14888, %r15
lea addresses_WC_ht+0x1e002, %r15
clflush (%r15)
cmp $23448, %rbx
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
and $47393, %rcx
lea addresses_A_ht+0x11cde, %rsi
lea addresses_D_ht+0x148dc, %rdi
nop
nop
nop
dec %r13
mov $0, %rcx
rep movsq
nop
nop
xor $56946, %r13
lea addresses_D_ht+0x1d2de, %rsi
lea addresses_WC_ht+0xa4fe, %rdi
nop
nop
nop
dec %r13
mov $50, %rcx
rep movsl
xor $20814, %rsi
lea addresses_D_ht+0x1eade, %rdi
add %rbx, %rbx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xa26c, %rcx
nop
cmp $9423, %rdx
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rsi
sub $14034, %r13
lea addresses_A_ht+0x1eade, %rbx
nop
nop
nop
add %rsi, %rsi
movb (%rbx), %dl
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x94d2, %rbx
clflush (%rbx)
nop
and $16045, %r13
movb (%rbx), %dl
nop
nop
nop
nop
add $41646, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x16cde, %r8
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r8)
nop
nop
add $15445, %r8

// Faulty Load
lea addresses_RW+0x18ade, %rbx
nop
nop
nop
nop
nop
add $35927, %rax
mov (%rbx), %ebp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'32': 231}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
