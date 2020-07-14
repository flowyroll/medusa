.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xebe6, %rcx
add $50848, %rbp
movw $0x6162, (%rcx)
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xd476, %r13
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r13), %al
nop
nop
nop
nop
nop
and $46080, %rcx
lea addresses_WT_ht+0x14596, %rsi
lea addresses_A_ht+0x7976, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $109, %rcx
rep movsl
xor %rbp, %rbp
lea addresses_D_ht+0x6836, %rsi
lea addresses_UC_ht+0xd76, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $10929, %rax
lea addresses_WT_ht+0x39ce, %rsi
lea addresses_A_ht+0xbf76, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $40, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x1c51e, %rsi
lea addresses_A_ht+0x12078, %rdi
clflush (%rsi)
nop
dec %rbx
mov $91, %rcx
rep movsb
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x77be, %rdi
nop
nop
nop
nop
nop
cmp $52256, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rdi
movaps %xmm7, (%rdi)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x625a, %rcx
nop
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1c319, %rax
nop
nop
nop
nop
inc %r11
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x2576, %rsi
lea addresses_A_ht+0xdd6, %rdi
nop
nop
nop
xor $13635, %r11
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
add $9206, %rcx
lea addresses_D_ht+0x586e, %rbp
nop
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x3406, %r11
nop
add $853, %rcx
mov (%r11), %si
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x19176, %rsi
lea addresses_D_ht+0xb876, %rdi
clflush (%rdi)
cmp $56765, %r11
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $44540, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x1ed76, %rsi
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
inc %rax

// Store
lea addresses_A+0x1a09a, %rax
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x7bf2d700000002e6, %r13
nop
sub $54388, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_D+0x8ad6, %r12
nop
nop
add %rbx, %rbx
movb $0x51, (%r12)
nop
nop
add $63727, %r12

// Store
lea addresses_normal+0xf576, %rsi
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovntdq %ymm0, (%rsi)
nop
nop
nop
sub $60639, %r12

// Faulty Load
lea addresses_US+0x15d76, %rax
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'58': 322}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
