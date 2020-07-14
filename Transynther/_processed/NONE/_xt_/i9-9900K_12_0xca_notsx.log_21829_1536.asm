.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rsi
lea addresses_WT_ht+0x1b7e6, %r12
nop
nop
nop
nop
nop
add $53146, %rbp
movb $0x61, (%r12)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x1d362, %r14
nop
sub $43564, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
xor $49792, %rbp
lea addresses_WT_ht+0xcd88, %rbp
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rbp)
nop
inc %rsi
lea addresses_WC_ht+0x9656, %r8
nop
nop
nop
nop
nop
cmp $62499, %r12
movb $0x61, (%r8)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xdfb6, %r10
clflush (%r10)
nop
nop
nop
nop
and %rbp, %rbp
mov (%r10), %si
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x16156, %r12
nop
nop
nop
xor %r10, %r10
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r8
nop
cmp $5472, %r12
lea addresses_WC_ht+0x180b3, %r10
nop
nop
inc %rsi
movb (%r10), %r14b
nop
dec %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xf96, %rbp
and %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbp)
nop
inc %r13

// Store
lea addresses_A+0xf46d, %r10
add $64079, %r13
movl $0x51525354, (%r10)
nop
xor $19566, %r10

// REPMOV
lea addresses_RW+0xfdd6, %rsi
lea addresses_PSE+0xfcd6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $127, %rcx
rep movsw
nop
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_A+0xcd84, %rsi
lea addresses_WT+0xf956, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $27, %rcx
rep movsb
nop
dec %r10

// Store
lea addresses_D+0xfd30, %r8
nop
xor $55968, %rcx
movw $0x5152, (%r8)
nop
sub $10311, %rsi

// Store
lea addresses_UC+0x18d56, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rcx)
nop
nop
nop
sub $9560, %rbp

// Load
lea addresses_D+0x9f36, %r13
sub $6300, %rdi
mov (%r13), %r10
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// REPMOV
lea addresses_normal+0x1b79a, %rsi
lea addresses_UC+0x68ee, %rdi
nop
nop
nop
sub %r10, %r10
mov $45, %rcx
rep movsl
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_RW+0x1ad56, %rsi
nop
nop
xor $29660, %r8
movb (%rsi), %cl
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
