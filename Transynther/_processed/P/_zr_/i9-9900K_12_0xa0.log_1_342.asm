.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xaf02, %rsi
lea addresses_D_ht+0x1612d, %rdi
clflush (%rsi)
nop
nop
cmp %rax, %rax
mov $54, %rcx
rep movsw
add %r10, %r10
lea addresses_normal_ht+0x6560, %r14
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %r14
movaps %xmm7, (%r14)
xor %rax, %rax
lea addresses_normal_ht+0xebfa, %rsi
lea addresses_D_ht+0x5282, %rdi
clflush (%rsi)
and %rbp, %rbp
mov $13, %rcx
rep movsw
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdi

// Store
lea addresses_PSE+0x4a82, %rbp
nop
nop
nop
nop
nop
cmp $35993, %r10
movw $0x5152, (%rbp)
nop
nop
and %rbp, %rbp

// Faulty Load
mov $0x282, %r8
nop
nop
nop
nop
nop
add $13845, %r12
movb (%r8), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
