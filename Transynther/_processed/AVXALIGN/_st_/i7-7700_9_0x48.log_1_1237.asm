.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x112d0, %rsi
lea addresses_UC_ht+0xe6b0, %rdi
nop
and %r9, %r9
mov $0, %rcx
rep movsb
lfence
lea addresses_WC_ht+0x1d8cd, %rdi
nop
nop
nop
nop
sub $48903, %r8
mov (%rdi), %esi
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rdx
push %rsi

// Load
lea addresses_US+0x13e70, %rsi
nop
cmp $124, %rdx
movntdqa (%rsi), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
sub %rsi, %rsi

// Store
mov $0x570, %r15
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r15)
nop
cmp $58936, %r12

// Faulty Load
lea addresses_normal+0x2670, %r12
nop
nop
nop
nop
sub $47143, %r15
movb (%r12), %r13b
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'34': 1}
34
*/
