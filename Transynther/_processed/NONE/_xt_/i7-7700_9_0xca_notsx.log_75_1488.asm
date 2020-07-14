.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1cd19, %rsi
lea addresses_WT_ht+0x15799, %rdi
nop
nop
nop
nop
nop
cmp $33521, %rbx
mov $116, %rcx
rep movsl
nop
dec %r12
lea addresses_D_ht+0x10619, %r14
sub $11857, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
dec %r12
lea addresses_UC_ht+0xc199, %rcx
sub %r13, %r13
movw $0x6162, (%rcx)
nop
inc %r13
lea addresses_normal_ht+0x9999, %rsi
lea addresses_D_ht+0x14999, %rdi
nop
nop
xor $36499, %r13
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
and $15228, %rsi
lea addresses_WC_ht+0x14399, %rbx
clflush (%rbx)
nop
nop
sub $6042, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
sub $16527, %r13
lea addresses_WC_ht+0xa145, %r14
nop
nop
nop
nop
nop
sub $45094, %rbx
movb (%r14), %cl
nop
nop
sub $3644, %r13
lea addresses_UC_ht+0xbf99, %rsi
lea addresses_A_ht+0x1d799, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $117, %rcx
rep movsb
nop
nop
nop
add $61721, %r13
lea addresses_WC_ht+0x1cf99, %rcx
nop
nop
nop
sub $52121, %rbx
mov (%rcx), %esi
nop
nop
sub $32633, %r15
lea addresses_A_ht+0xc119, %rbx
clflush (%rbx)
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x9999, %r13
sub %rdi, %rdi
mov (%r13), %bx
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1bf99, %rcx
nop
nop
xor %r15, %r15
movb (%rcx), %bl
nop
nop
mfence
lea addresses_A_ht+0x1b1a9, %rbx
nop
nop
nop
dec %rdi
mov (%rbx), %cx
inc %r13
lea addresses_normal_ht+0x16219, %rsi
nop
sub $4789, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x11599, %r15
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%r15)
nop
nop
cmp $1031, %r15

// Load
lea addresses_A+0x16899, %rsi
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%rsi), %di
nop
nop
nop
nop
nop
sub %rdi, %rdi

// REPMOV
lea addresses_normal+0x1c099, %rsi
lea addresses_PSE+0xab3d, %rdi
inc %r15
mov $16, %rcx
rep movsw
sub %r15, %r15

// Store
mov $0x5bc72d0000000f0b, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x18e39, %rcx
nop
nop
nop
sub %r11, %r11
movb $0x51, (%rcx)
nop
nop
nop
dec %rcx

// Load
lea addresses_WC+0x1ef21, %rdi
nop
nop
xor %r15, %r15
mov (%rdi), %cx
nop
cmp %rdi, %rdi

// Load
lea addresses_PSE+0x3019, %rdi
nop
nop
nop
sub $56957, %r15
mov (%rdi), %r11w
nop
sub $44009, %rdi

// Faulty Load
lea addresses_normal+0x1e799, %r8
nop
nop
nop
nop
nop
xor $50071, %rsi
movb (%r8), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'34': 75}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
