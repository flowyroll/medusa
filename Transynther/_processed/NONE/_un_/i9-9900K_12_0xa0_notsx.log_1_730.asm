.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x184ac, %r9
nop
nop
nop
nop
nop
dec %rdx
movb $0x51, (%r9)
nop
nop
nop
inc %rdx

// Load
lea addresses_normal+0x35c0, %rbx
nop
nop
nop
nop
sub $14497, %r10
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
nop
and %r9, %r9

// Load
mov $0x3e5d620000000ce4, %r10
nop
nop
and %r9, %r9
movb (%r10), %dl
nop
nop
nop
nop
xor %rbx, %rbx

// Load
lea addresses_A+0x6ac, %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbx), %r11w
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x9c42, %rax
nop
nop
cmp $12821, %r14
movb $0x51, (%rax)
xor %r14, %r14

// Store
mov $0xb3c, %rax
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0x7c63, %r9
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movaps %xmm7, (%r9)
nop
nop
and %r9, %r9

// Store
lea addresses_UC+0x184ac, %rdx
nop
nop
and $51004, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovaps %ymm0, (%rdx)
nop
nop
nop
inc %r10

// Load
lea addresses_US+0xfca8, %r9
xor $17184, %r14
mov (%r9), %r11w
nop
nop
nop
xor $47959, %rdx

// REPMOV
lea addresses_normal+0x1e2c, %rsi
lea addresses_D+0x10a30, %rdi
nop
nop
nop
nop
sub $11897, %rdx
mov $35, %rcx
rep movsb
nop
cmp $55606, %r11

// REPMOV
lea addresses_UC+0x792c, %rsi
mov $0x4ac, %rdi
nop
nop
cmp $13752, %r14
mov $37, %rcx
rep movsw
sub %r11, %r11

// REPMOV
lea addresses_US+0x10894, %rsi
mov $0x71c46b00000008ac, %rdi
nop
nop
sub %r14, %r14
mov $86, %rcx
rep movsq
nop
nop
dec %rbx

// REPMOV
lea addresses_normal+0x1a2ac, %rsi
mov $0x67b03e00000003ac, %rdi
nop
nop
xor $43514, %rdx
mov $43, %rcx
rep movsb
nop
dec %rdx

// REPMOV
lea addresses_D+0x68ac, %rsi
lea addresses_WT+0x193a5, %rdi
clflush (%rdi)
nop
mfence
mov $113, %rcx
rep movsb
nop
dec %r9

// REPMOV
lea addresses_UC+0x5cac, %rsi
lea addresses_WC+0x147bc, %rdi
nop
nop
dec %r9
mov $45, %rcx
rep movsq
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_UC+0x184ac, %r14
nop
and %rax, %rax
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'fc': 1}
fc
*/
