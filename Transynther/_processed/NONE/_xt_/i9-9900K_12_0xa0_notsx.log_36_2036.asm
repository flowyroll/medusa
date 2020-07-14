.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a9e1, %rbp
nop
cmp $22336, %r8
movb $0x61, (%rbp)
add %r15, %r15
lea addresses_UC_ht+0x17adf, %r11
nop
nop
inc %rax
movb (%r11), %cl
nop
sub %rax, %rax
lea addresses_WC_ht+0x1b1a1, %rsi
clflush (%rsi)
nop
nop
nop
sub $22498, %r15
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x18ca1, %rax
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%rax)
cmp $60375, %rsi
lea addresses_WC_ht+0x13201, %rsi
lea addresses_D_ht+0x3311, %rdi
clflush (%rdi)
nop
nop
sub %r15, %r15
mov $37, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x101a1, %rsi
lea addresses_UC_ht+0xb9d9, %rdi
and $50349, %r15
mov $82, %rcx
rep movsq
nop
sub %r15, %r15
lea addresses_WC_ht+0xcea1, %r15
nop
cmp %r8, %r8
mov (%r15), %cx
sub $48852, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0xb1e1, %rcx
nop
cmp %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
dec %rcx

// REPMOV
lea addresses_normal+0x65a1, %rsi
lea addresses_WC+0x4061, %rdi
clflush (%rdi)
dec %r11
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
and $7491, %rsi

// Store
mov $0x73d94f0000000ea1, %rsi
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
cmp $10956, %r14

// Store
lea addresses_normal+0x138a1, %rcx
nop
nop
nop
nop
nop
cmp $3268, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
add $17455, %r11

// Faulty Load
lea addresses_RW+0xf4a1, %r12
nop
nop
add %rax, %rax
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'32': 36}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
