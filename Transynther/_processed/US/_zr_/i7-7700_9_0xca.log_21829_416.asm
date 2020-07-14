.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1789d, %rsi
lea addresses_UC_ht+0x12cac, %rdi
nop
nop
cmp $63242, %r10
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x1c4ec, %rsi
lea addresses_WC_ht+0x1142c, %rdi
nop
nop
inc %rbx
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $33439, %rcx
lea addresses_WT_ht+0x1154e, %r10
dec %r12
mov (%r10), %bx
xor $12192, %rcx
lea addresses_D_ht+0x7d6c, %r8
sub $29622, %r10
mov (%r8), %cx
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x58ec, %rsi
lea addresses_normal_ht+0x13a4c, %rdi
nop
nop
nop
add %rdx, %rdx
mov $67, %rcx
rep movsl
nop
nop
nop
inc %rbx
lea addresses_D_ht+0xf4ec, %rsi
lea addresses_UC_ht+0x10ec, %rdi
and %r10, %r10
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x18aec, %rsi
lea addresses_WC_ht+0xa464, %rdi
nop
xor $51626, %r12
mov $12, %rcx
rep movsq
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x1e0d0, %r10
nop
nop
nop
nop
and $25126, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
xor $16492, %r10
lea addresses_A_ht+0xb4ec, %rsi
lea addresses_UC_ht+0x14aec, %rdi
clflush (%rdi)
xor $11950, %rdx
mov $47, %rcx
rep movsl
nop
nop
sub $1487, %rcx
lea addresses_WT_ht+0x1cd6c, %rsi
nop
nop
cmp $14045, %rcx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
cmp $52320, %rdi
lea addresses_WT_ht+0x14fac, %r8
nop
xor $23350, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %r8
movaps %xmm7, (%r8)
add %rdx, %rdx
lea addresses_WC_ht+0x102ec, %rsi
lea addresses_D_ht+0x62ec, %rdi
nop
nop
nop
nop
nop
xor $32062, %r8
mov $22, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xa1a4, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rdi), %dx
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x182ec, %rbx
sub $63922, %r10
movl $0x61626364, (%rbx)
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WC+0x644c, %r14
nop
nop
dec %r15
movw $0x5152, (%r14)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_D+0xc4ec, %rbp
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_UC+0x742c, %r15
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_US+0x92ec, %r15
clflush (%r15)
inc %rdi
movb (%r15), %r14b
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
