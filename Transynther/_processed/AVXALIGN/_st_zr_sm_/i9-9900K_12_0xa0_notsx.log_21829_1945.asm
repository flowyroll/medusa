.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18938, %rsi
lea addresses_UC_ht+0x4318, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $90, %rcx
rep movsl
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x6c08, %rsi
lea addresses_normal_ht+0x17b18, %rdi
nop
and %r13, %r13
mov $52, %rcx
rep movsl
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x17d08, %r15
nop
nop
nop
nop
and %rax, %rax
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rcx
nop
add %r13, %r13
lea addresses_A_ht+0x9c50, %r13
and %rcx, %rcx
movb (%r13), %al
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x10ed4, %r13
nop
nop
nop
nop
nop
cmp $55165, %rax
mov (%r13), %ecx
nop
nop
nop
nop
nop
add $39035, %r15
lea addresses_UC_ht+0xa818, %rsi
lea addresses_WC_ht+0x1e718, %rdi
nop
nop
add %r12, %r12
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $50499, %rsi
lea addresses_UC_ht+0xd818, %rdi
nop
nop
nop
nop
nop
cmp $22111, %r15
mov (%rdi), %cx
nop
nop
inc %rbp
lea addresses_D_ht+0x1d9a8, %rax
nop
nop
nop
add $46400, %r12
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WC+0x28c, %r11
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
cmp $21448, %rsi

// Store
lea addresses_RW+0x16298, %rdi
add %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0x67e7a0000000318, %rax
nop
and $55375, %r11
movb $0x51, (%rax)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_US+0x14318, %rsi
nop
nop
sub %r14, %r14
movl $0x51525354, (%rsi)
and $32232, %rax

// Load
lea addresses_normal+0xd0bb, %rsi
nop
nop
nop
nop
xor %rax, %rax
mov (%rsi), %bx
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x141c8, %rax
nop
sub %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
mov $0x67e7a0000000318, %rdi
nop
nop
add %r15, %r15
mov (%rdi), %r14d
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'54': 20813, '00': 1016}
54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
