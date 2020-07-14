.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15674, %rcx
nop
nop
nop
inc %rbp
movw $0x6162, (%rcx)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1a08c, %rdx
cmp %r10, %r10
movb (%rdx), %r11b
nop
nop
nop
nop
and $19743, %rbp
lea addresses_UC_ht+0x10e8c, %rdx
nop
nop
sub %r8, %r8
mov (%rdx), %r11d
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x12223, %rsi
lea addresses_normal_ht+0x18c0c, %rdi
nop
nop
nop
nop
nop
cmp $8440, %r10
mov $55, %rcx
rep movsb
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x9b8c, %rdi
nop
nop
cmp $33036, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1a67c, %r11
clflush (%r11)
xor %r10, %r10
movb (%r11), %cl
nop
nop
nop
nop
cmp $28408, %rcx
lea addresses_WT_ht+0xe90c, %rsi
lea addresses_WC_ht+0x19f0c, %rdi
sub %rdx, %rdx
mov $50, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_WC_ht+0x1e16c, %rsi
lea addresses_WC_ht+0x135bc, %rdi
nop
nop
nop
nop
nop
xor $49237, %r11
mov $120, %rcx
rep movsq
add $23281, %rdi
lea addresses_D_ht+0x800c, %r8
nop
nop
nop
and $48887, %rbp
mov (%r8), %dx
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x878c, %rsi
sub $49012, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movaps %xmm0, (%rsi)
nop
nop
dec %rax

// Store
lea addresses_US+0xf510, %rbx
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_WT+0xb00c, %rax
nop
nop
and %rsi, %rsi
mov (%rax), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'39': 118}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
