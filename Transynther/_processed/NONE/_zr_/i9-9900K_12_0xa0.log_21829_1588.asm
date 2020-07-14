.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15990, %rsi
lea addresses_D_ht+0x1bcb0, %rdi
nop
nop
nop
nop
and $46165, %r11
mov $53, %rcx
rep movsq
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x3990, %r9
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%r9)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x22d0, %rax
nop
nop
nop
nop
xor $29812, %rdi
mov (%rax), %ecx
nop
nop
nop
nop
xor $56407, %rdi
lea addresses_WC_ht+0x18dba, %rdi
clflush (%rdi)
sub $62872, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
sub %r11, %r11
lea addresses_A_ht+0xc0a0, %rcx
nop
nop
nop
nop
nop
xor $55142, %r9
movb (%rcx), %al
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x9be0, %rsi
lea addresses_UC_ht+0xd6d0, %rdi
cmp %r14, %r14
mov $64, %rcx
rep movsq
nop
nop
xor $58341, %r14
lea addresses_D_ht+0x1730, %rbp
nop
nop
add %rsi, %rsi
mov (%rbp), %eax
nop
nop
nop
nop
nop
and $59497, %rdi
lea addresses_normal_ht+0x1a910, %rbp
nop
nop
nop
nop
nop
sub $21168, %rsi
movb (%rbp), %r14b
dec %rax
lea addresses_D_ht+0xd2d0, %rsi
lea addresses_normal_ht+0x6e58, %rdi
and %r9, %r9
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0xd10, %rsi
lea addresses_A_ht+0x13d5b, %rdi
nop
dec %rax
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1517c, %rsi
lea addresses_normal_ht+0xcad0, %rdi
nop
nop
nop
nop
sub $28457, %rbp
mov $72, %rcx
rep movsb
nop
xor $55598, %rbp
lea addresses_WC_ht+0x1daaa, %rcx
nop
nop
xor $47155, %rsi
mov (%rcx), %r9
nop
nop
nop
mfence
lea addresses_WT_ht+0x4f80, %r11
and $38581, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
lfence
lea addresses_UC_ht+0xd7d0, %rsi
lea addresses_D_ht+0xf614, %rdi
nop
sub $39623, %rax
mov $1, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_D_ht+0x8d5a, %r14
xor %rcx, %rcx
movb (%r14), %r11b
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x1aad0, %rdi
nop
dec %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_US+0x1fdf0, %rbx
nop
nop
nop
nop
nop
sub $43868, %r10
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add $51532, %r11

// Store
lea addresses_A+0x1f570, %rbp
nop
nop
nop
nop
inc %r11
movb $0x51, (%rbp)
nop
xor %rbp, %rbp

// Store
lea addresses_WT+0x85d0, %rbx
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_UC+0x152d0, %r8
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%r8), %di
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
