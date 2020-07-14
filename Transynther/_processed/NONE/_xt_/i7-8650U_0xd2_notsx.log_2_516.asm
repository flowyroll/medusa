.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17c8, %rdi
nop
nop
and %r8, %r8
mov (%rdi), %r10w
nop
nop
nop
nop
add $16317, %r14
lea addresses_normal_ht+0x15d68, %rsi
lea addresses_UC_ht+0x18e68, %rdi
dec %rdx
mov $98, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_UC_ht+0x1e54f, %r14
nop
nop
nop
and $44333, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1008, %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r14), %esi
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp

// Store
mov $0xd68, %r13
nop
nop
add $61013, %r15
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor $20439, %rbp

// Faulty Load
lea addresses_normal+0x1b168, %r9
nop
nop
nop
dec %rax
mov (%r9), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'34': 2}
34 34
*/
