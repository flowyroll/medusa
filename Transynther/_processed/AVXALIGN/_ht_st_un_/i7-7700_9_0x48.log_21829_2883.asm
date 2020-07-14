.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19b7b, %r13
nop
nop
nop
nop
inc %r15
movw $0x6162, (%r13)
nop
and $51631, %rdi
lea addresses_normal_ht+0x1bfb, %rsi
lea addresses_WC_ht+0x1e57b, %rdi
nop
nop
nop
nop
and $22127, %r10
mov $72, %rcx
rep movsw
nop
nop
nop
nop
nop
add $19993, %rcx
lea addresses_D_ht+0x1bfdb, %rsi
nop
nop
inc %r9
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
sub $32688, %r9
lea addresses_UC_ht+0x1d37b, %r9
add %r15, %r15
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
and $26521, %r9
lea addresses_WC_ht+0x457b, %r13
cmp $21518, %r10
movb $0x61, (%r13)
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1847b, %rsi
lea addresses_UC_ht+0x6afb, %rdi
nop
nop
cmp %rax, %rax
mov $51, %rcx
rep movsw
cmp $9654, %r13
lea addresses_D_ht+0x14f7b, %rsi
lea addresses_WC_ht+0x720f, %rdi
add $15545, %r10
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rsi

// Load
mov $0x77b, %rdi
nop
nop
nop
nop
xor $51299, %r13
mov (%rdi), %rsi
nop
nop
nop
nop
and $39163, %rdi

// Load
lea addresses_PSE+0x1c26f, %r15
nop
nop
and %r14, %r14
mov (%r15), %rbp
nop
nop
nop
dec %r13

// Store
lea addresses_A+0x171ff, %r14
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
sub $16527, %r15

// Faulty Load
lea addresses_D+0x8b7b, %rsi
nop
cmp $12677, %r13
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'58': 1, '79': 1, '46': 19355, '96': 1, '44': 2470, '57': 1}
46 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 44 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 44 46 46 44 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 96 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 44 46 46 46 46 46 44 46 46 44 46 46 44 44 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46
*/
