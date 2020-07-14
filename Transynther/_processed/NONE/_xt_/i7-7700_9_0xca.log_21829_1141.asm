.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dd4c, %rsi
lea addresses_WC_ht+0x1e82b, %rdi
sub %r15, %r15
mov $110, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x50ec, %rbp
add $51879, %rax
mov (%rbp), %rbx
nop
xor $13688, %rbx
lea addresses_normal_ht+0xbec, %rsi
nop
nop
xor $18458, %rbx
mov (%rsi), %rdi
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x20d0, %rsi
nop
nop
nop
nop
nop
xor $57125, %r15
mov (%rsi), %edi
nop
and %rcx, %rcx
lea addresses_D_ht+0x11e2c, %rsi
lea addresses_A_ht+0x150ac, %rdi
clflush (%rsi)
add $57775, %r14
mov $50, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_WC_ht+0xbe2c, %rbp
sub %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
sub $41443, %r14
lea addresses_WT_ht+0x171ac, %rsi
lea addresses_normal_ht+0x14f7c, %rdi
inc %r14
mov $92, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1ceac, %rsi
lea addresses_D_ht+0xe78c, %rdi
nop
nop
inc %r14
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1e67c, %rbp
clflush (%rbp)
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
and $33441, %rbx
lea addresses_D_ht+0x2f2c, %rsi
lea addresses_A_ht+0x6e2c, %rdi
nop
nop
nop
nop
and $9297, %rbp
mov $25, %rcx
rep movsw
sub %rax, %rax
lea addresses_UC_ht+0x1802c, %rcx
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
and %r14, %r14
lea addresses_A_ht+0x1da2c, %rsi
lea addresses_A_ht+0x1937c, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0xfacc, %rsi
lea addresses_WT_ht+0xe854, %rdi
nop
nop
nop
sub $48772, %rbx
mov $57, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1a5ec, %rbx
nop
nop
add $26726, %rdi
mov (%rbx), %rax
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0xcbec, %r11
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_A+0x165ac, %rbp
nop
nop
nop
nop
xor $34363, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movntdq %xmm4, (%rbp)
nop
inc %rcx

// Store
mov $0x2f346100000003aa, %r15
add %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
add $60622, %rbp

// Faulty Load
lea addresses_normal+0x1fe2c, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
