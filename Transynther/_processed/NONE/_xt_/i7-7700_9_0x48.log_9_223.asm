.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1228f, %r8
nop
lfence
movb $0x61, (%r8)
nop
nop
nop
nop
nop
and $3561, %rbp
lea addresses_UC_ht+0x16a0f, %rsi
lea addresses_A_ht+0x10daf, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xf38f, %rcx
nop
nop
nop
nop
sub $34211, %rbp
movb (%rcx), %r14b
nop
nop
xor $51456, %rdi
lea addresses_D_ht+0x1520f, %rsi
lea addresses_UC_ht+0x4a41, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $49, %rcx
rep movsb
nop
nop
nop
and $34434, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0xc9cf, %rbx
sub $41735, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_normal+0x5c0f, %rsi
cmp $60257, %rbx
mov (%rsi), %r10w
inc %rcx

// Faulty Load
lea addresses_normal+0xe20f, %rcx
nop
nop
nop
nop
xor %r12, %r12
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'34': 9}
34 34 34 34 34 34 34 34 34
*/
