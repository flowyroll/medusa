.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xab73, %r8
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r8)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x19659, %rsi
lea addresses_WT_ht+0xd259, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbx
mov $16, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x157c1, %rsi
lea addresses_WT_ht+0x13c59, %rdi
nop
nop
and %r9, %r9
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $40192, %r9
lea addresses_UC_ht+0x10e19, %rsi
lea addresses_UC_ht+0x10e55, %rdi
nop
nop
nop
cmp %r15, %r15
mov $10, %rcx
rep movsl
nop
dec %r15
lea addresses_D_ht+0x1ca59, %r15
nop
add %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x32c9, %rdi
nop
nop
nop
xor $49247, %r8
mov (%rdi), %r10w
nop
nop
add $40826, %r10
lea addresses_normal_ht+0x5259, %r9
clflush (%r9)
nop
nop
cmp $7692, %rbx
movb $0x61, (%r9)
add $21709, %r9
lea addresses_WC_ht+0x66aa, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rdi), %r9
nop
xor %r8, %r8
lea addresses_A_ht+0x15d21, %rsi
lea addresses_A_ht+0x111c9, %rdi
nop
nop
nop
nop
nop
xor $28342, %r8
mov $96, %rcx
rep movsl
nop
nop
nop
sub $38597, %rdi
lea addresses_WC_ht+0x16959, %rbx
nop
nop
nop
nop
cmp %r8, %r8
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm5
vpextrq $0, %xmm5, %rsi
and %rdi, %rdi
lea addresses_WT_ht+0x7d09, %rsi
lea addresses_D_ht+0x6a59, %rdi
nop
nop
nop
nop
xor $9198, %r8
mov $122, %rcx
rep movsl
nop
nop
nop
cmp $52866, %r10
lea addresses_WC_ht+0x3b1d, %rsi
lea addresses_D_ht+0xb659, %rdi
nop
nop
nop
add %r9, %r9
mov $32, %rcx
rep movsl
nop
nop
cmp $28742, %rbx
lea addresses_normal_ht+0xd353, %rsi
lea addresses_D_ht+0x16ecb, %rdi
nop
nop
nop
nop
nop
and $2852, %r15
mov $95, %rcx
rep movsl
nop
nop
nop
nop
and $63695, %rsi
lea addresses_A_ht+0x1e2e9, %rcx
nop
nop
nop
nop
nop
cmp $27685, %r9
mov (%rcx), %ebx
nop
nop
sub $60657, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x4759, %r9
add $35653, %r14
movb $0x51, (%r9)
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_normal+0x1589e, %rsi
lea addresses_WC+0x5a59, %rdi
nop
xor $6537, %r13
mov $25, %rcx
rep movsq
nop
sub $55035, %r9

// REPMOV
lea addresses_UC+0x3a59, %rsi
lea addresses_WC+0x5a59, %rdi
add %r9, %r9
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $65340, %r12

// REPMOV
lea addresses_WC+0x1aa35, %rsi
lea addresses_WT+0x9a99, %rdi
nop
nop
sub %r13, %r13
mov $8, %rcx
rep movsb
xor $64655, %rcx

// Faulty Load
lea addresses_WC+0x5a59, %r13
clflush (%r13)
nop
nop
nop
nop
nop
inc %rsi
mov (%r13), %r14w
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
