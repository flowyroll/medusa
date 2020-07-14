.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a8af, %rsi
lea addresses_A_ht+0x5217, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $5, %rcx
rep movsw
and $64015, %rdi
lea addresses_WC_ht+0x4609, %rbp
clflush (%rbp)
cmp %rdi, %rdi
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
and $55269, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x16587, %r14
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r14)
nop
nop
sub $62181, %rbp

// Store
lea addresses_UC+0x1e007, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $26912, %r9
movl $0x51525354, (%rbx)
sub $52828, %rdi

// Faulty Load
lea addresses_normal+0x16587, %rbx
nop
nop
nop
xor %rbp, %rbp
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'54': 123}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
