.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd49e, %rsi
lea addresses_D_ht+0x8994, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $46, %rcx
rep movsq
nop
and %rax, %rax
lea addresses_A_ht+0x18c14, %r12
inc %r13
movb (%r12), %r14b
nop
nop
xor $37603, %rsi
lea addresses_A_ht+0x16760, %r13
nop
nop
nop
nop
nop
xor $41760, %rax
mov (%r13), %r14
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x18c14, %rsi
lea addresses_normal_ht+0xedf4, %rdi
xor $14558, %r12
mov $36, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1d014, %r12
clflush (%r12)
nop
nop
nop
nop
and $60430, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x1cc94, %rax
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x19114, %rsi
lea addresses_A_ht+0xb7a0, %rdi
nop
nop
nop
mfence
mov $50, %rcx
rep movsl
xor %r13, %r13
lea addresses_D_ht+0x8914, %rsi
lea addresses_A_ht+0x4654, %rdi
nop
nop
nop
dec %r8
mov $74, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x3814, %rax
nop
cmp %r14, %r14
movb (%rax), %r8b
nop
cmp $22888, %rsi
lea addresses_normal_ht+0x12814, %rsi
lea addresses_normal_ht+0x1d389, %rdi
clflush (%rdi)
cmp $7502, %r13
mov $62, %rcx
rep movsw
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1d04, %rcx
nop
nop
nop
nop
xor $50958, %rax
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x1a414, %r15
nop
nop
nop
and $50128, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
nop
xor $13955, %rax

// Store
lea addresses_PSE+0x15854, %r15
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r15)
and %rax, %rax

// Load
lea addresses_WC+0x11c94, %rcx
nop
nop
add %rsi, %rsi
mov (%rcx), %r15w
nop
nop
nop
nop
add $47798, %r14

// Faulty Load
lea addresses_US+0x5814, %rsi
nop
nop
nop
nop
nop
and $42319, %r8
mov (%rsi), %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
