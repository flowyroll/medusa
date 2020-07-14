.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x33d0, %rsi
lea addresses_A_ht+0xcb50, %rdi
and %r12, %r12
mov $94, %rcx
rep movsq
nop
nop
dec %r15
lea addresses_normal_ht+0x15350, %rsi
lea addresses_A_ht+0x1bb50, %rdi
nop
nop
nop
cmp %r12, %r12
mov $82, %rcx
rep movsw
cmp %r15, %r15
lea addresses_WT_ht+0x111ba, %r10
nop
nop
add $27660, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
cmp $15829, %r10
lea addresses_D_ht+0xd640, %rdx
clflush (%rdx)
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdx)
xor %r15, %r15
lea addresses_A_ht+0x10f50, %rsi
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x7b50, %rsi
lea addresses_WC_ht+0x14a70, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $114, %rcx
rep movsl
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x19428, %rcx
nop
nop
nop
nop
xor $52667, %rdx
movb (%rcx), %r15b
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x13810, %rsi
lea addresses_WT_ht+0x1eb50, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $24, %rcx
rep movsb
nop
dec %r15
lea addresses_D_ht+0x13750, %rsi
lea addresses_D_ht+0x18240, %rdi
nop
cmp $42172, %rbx
mov $11, %rcx
rep movsb
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_UC+0x11b50, %r8
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r8)
nop
nop
dec %rbx

// Store
lea addresses_UC+0xea70, %r14
nop
nop
nop
nop
inc %rdx
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and $43162, %r12

// Faulty Load
mov $0x6a10bf0000000350, %r8
nop
nop
inc %rdx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'44': 36, '45': 8869, '46': 3941, '00': 2926, '48': 6057}
48 00 45 45 45 45 00 00 45 45 00 45 46 45 45 45 45 45 45 00 48 48 48 48 48 48 48 46 45 45 45 45 45 45 45 45 00 45 45 46 45 45 45 45 48 48 45 00 48 00 45 46 45 45 46 45 46 48 45 45 48 48 00 46 46 45 45 00 45 45 45 45 00 48 45 00 45 46 45 45 45 45 45 46 46 48 45 45 45 46 46 46 45 45 45 45 45 48 48 00 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 48 45 46 46 48 46 48 45 46 45 45 46 48 48 48 45 46 46 45 45 45 46 45 45 00 48 48 45 45 45 46 46 45 46 45 45 45 45 48 46 48 45 45 45 48 48 48 48 00 45 48 45 45 45 45 45 46 46 00 48 48 48 00 48 00 48 46 45 45 46 45 45 45 00 46 45 45 45 48 00 48 00 00 48 45 45 45 45 45 45 45 00 00 00 00 00 00 00 48 48 45 00 48 48 46 45 45 46 45 45 45 46 45 00 00 45 46 45 45 45 46 45 46 46 46 45 45 45 45 48 00 48 48 48 48 48 46 48 45 45 45 48 45 48 48 48 46 45 45 00 48 00 00 48 45 46 45 46 48 46 45 45 46 46 45 45 45 45 00 48 48 00 00 00 48 48 45 46 45 00 48 48 48 48 00 48 48 48 46 45 45 46 46 46 45 45 45 45 45 00 46 46 45 45 45 45 00 00 48 48 00 00 48 48 48 48 46 00 00 48 00 00 48 48 48 48 45 48 48 45 46 46 45 45 48 00 00 48 48 48 45 45 45 45 46 46 00 48 48 45 45 00 48 46 46 46 45 45 45 00 46 45 45 00 45 46 45 48 48 48 48 46 45 45 45 45 45 45 46 45 45 45 45 45 45 00 46 00 46 00 45 45 00 45 45 48 00 45 46 45 45 48 00 48 48 48 46 45 45 48 45 48 48 46 48 00 45 00 46 48 45 46 48 46 48 45 45 46 45 46 45 00 48 48 48 46 46 46 46 45 46 48 48 48 48 46 45 46 48 48 48 45 45 48 48 46 45 45 45 45 46 45 45 45 46 00 48 00 48 45 45 00 48 48 48 48 48 48 48 48 46 45 45 45 45 44 45 48 48 45 46 46 48 46 00 45 46 00 48 48 48 45 48 45 45 45 45 45 46 46 46 45 45 45 00 48 48 46 45 45 45 48 46 48 46 48 48 46 48 46 45 45 00 45 46 48 46 46 46 48 46 00 45 45 45 00 00 45 46 48 45 45 46 45 45 45 45 45 48 45 45 48 46 46 00 45 48 46 45 45 00 00 00 48 48 48 00 45 45 00 45 46 45 45 45 46 46 00 45 45 45 45 45 45 00 46 45 45 46 45 45 45 00 45 00 46 46 45 00 45 46 45 45 45 45 00 00 45 00 00 00 48 48 48 48 45 46 45 46 46 45 45 46 45 46 46 48 00 45 45 45 00 45 45 45 45 45 45 45 46 46 45 00 46 45 00 00 45 46 45 46 45 46 48 46 46 45 46 00 00 48 00 48 48 48 48 48 48 46 45 00 00 48 48 48 48 46 00 48 48 45 45 45 48 45 45 46 45 45 45 46 45 00 48 00 48 45 45 00 48 00 48 48 45 46 00 00 48 48 45 48 48 46 46 46 45 45 00 45 45 46 48 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 48 48 48 48 00 48 46 48 48 48 45 45 45 45 00 45 48 48 48 00 48 46 46 48 46 45 45 45 45 45 45 45 48 45 00 45 00 45 45 45 45 45 45 45 00 48 48 48 48 48 48 45 45 45 46 48 00 00 48 48 48 00 45 48 45 46 46 48 46 00 48 48 48 46 45 45 45 45 48 45 45 45 45 45 45 45 00 46 45 45 46 46 48 00 48 48 48 45 46 45 46 48 46 46 00 48 00 48 48 48 00 45 48 48 46 48 48 46 48 46 45 45 45 48 46 48 00 00 45 45 45 45 45 46 45 45 45 45 45 45 45 48 45 45 46 00 46 45 45 45 46 45 45 46 00 00 48 48 48 46 48 48 46 00 48 48 45 45 45 45 46 48 45 45 48 45 45 48 45 48 45 48 00 45 45 00 48 48 48 48 48 45 00 45 45 45 45 48 45 45 45 00 45 00 48 48 46 45 46 45 48 46 45 48 46 45 45 45 48 45 48 46 46 46 48 48 48 45 45 45 45 45 45 45 45 45 46
*/
