.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8a7f, %rcx
nop
nop
nop
nop
dec %rbx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x7097, %rax
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rax)
sub %r12, %r12
lea addresses_WT_ht+0x1d17f, %r10
nop
cmp %rax, %rax
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rbx
add %r10, %r10
lea addresses_WT_ht+0x1a07f, %rsi
lea addresses_D_ht+0x9eff, %rdi
nop
nop
nop
nop
nop
sub $19344, %rax
mov $69, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0xcc7f, %rbx
nop
nop
add %rax, %rax
mov (%rbx), %r10d
nop
nop
nop
nop
nop
sub $17196, %rsi
lea addresses_WT_ht+0x47ff, %r10
nop
nop
nop
nop
xor %r11, %r11
mov (%r10), %si
nop
nop
inc %rcx
lea addresses_D_ht+0xdf2f, %r11
nop
nop
sub %rsi, %rsi
mov (%r11), %cx
nop
nop
nop
nop
xor $33697, %rdi
lea addresses_normal_ht+0x1787f, %rcx
nop
nop
nop
dec %rdi
movb (%rcx), %bl
nop
inc %r10
lea addresses_WT_ht+0x15789, %rsi
lea addresses_WT_ht+0x53ff, %rdi
nop
nop
add %r11, %r11
mov $115, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x217f, %rsi
lea addresses_normal_ht+0x16e7f, %rdi
nop
nop
add %rbx, %rbx
mov $112, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x11e7f, %rax
nop
add $42260, %r12
mov (%rax), %r10w
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x10a7f, %rsi
lea addresses_A_ht+0x5ff, %rdi
nop
xor $27256, %r10
mov $8, %rcx
rep movsl
nop
xor $25675, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x517f, %r11
cmp %rax, %rax
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
sub $22383, %r11

// Store
lea addresses_US+0xa57f, %r14
nop
nop
inc %rdx
movb $0x51, (%r14)
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_US+0x517f, %rdx
nop
nop
nop
nop
nop
and %rax, %rax
mov (%rdx), %r14d
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'00': 66, 'a4': 45, '49': 28}
a4 a4 49 00 00 49 49 a4 a4 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 a4 a4 49 49 a4 49 49 a4 00 00 49 00 00 00 00 00 00 00 00 00 a4 49 00 00 00 a4 a4 00 a4 a4 a4 a4 49 a4 a4 a4 a4 49 a4 a4 a4 00 a4 00 a4 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 a4 49 49 a4 00 a4 a4 a4 a4 a4 a4 a4 00 a4 49 49 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 a4 00 49 49 a4 a4 00 00 49 a4 a4 a4 a4 49 a4 a4 a4 a4
*/
