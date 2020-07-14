.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16dcb, %rdx
nop
nop
cmp %r10, %r10
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r14
xor %rdi, %rdi
lea addresses_WC_ht+0x1503b, %rbp
nop
nop
nop
nop
dec %r11
mov (%rbp), %rax
nop
sub $55451, %r11
lea addresses_normal_ht+0x17ff7, %rsi
lea addresses_WT_ht+0x6c3b, %rdi
nop
nop
nop
nop
nop
add $8077, %rax
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $21643, %rcx
lea addresses_WT_ht+0x1e9e9, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rax), %r10d
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xde3b, %rsi
lea addresses_WT_ht+0xa43b, %rdi
nop
nop
sub $27096, %rdx
mov $45, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x130d3, %rsi
lea addresses_normal_ht+0x1a3b, %rdi
nop
and %r11, %r11
mov $89, %rcx
rep movsl
nop
add $24717, %rdx
lea addresses_normal_ht+0xec3b, %r11
nop
nop
nop
sub %rdi, %rdi
movb (%r11), %cl
dec %r11
lea addresses_UC_ht+0xe4df, %r11
nop
nop
and $44977, %r14
mov (%r11), %ecx
nop
nop
nop
nop
nop
and $29974, %r11
lea addresses_normal_ht+0x4ca6, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x1a43b, %r14
nop
nop
add $19746, %r10
mov (%r14), %ebp
nop
nop
nop
cmp $57314, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1fe3b, %rsi
lea addresses_UC+0xf2ab, %rdi
nop
nop
nop
cmp $21452, %r13
mov $71, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x564e460000000305, %rsi
clflush (%rsi)
nop
dec %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
sub $53651, %rdi

// Store
lea addresses_A+0x148f5, %r13
sub $41150, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
inc %rdi

// Store
lea addresses_A+0x14dbb, %r13
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%r13)
nop
cmp %r13, %r13

// Faulty Load
lea addresses_PSE+0x1ee3b, %rax
nop
nop
add %r15, %r15
mov (%rax), %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
