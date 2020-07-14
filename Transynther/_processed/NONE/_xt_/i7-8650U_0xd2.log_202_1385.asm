.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9d39, %r10
nop
and %r8, %r8
movb $0x61, (%r10)
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x1c739, %rax
nop
nop
nop
nop
nop
cmp $62493, %r11
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0xab39, %r9
nop
add $41443, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0xee79, %r10
sub %r9, %r9
movl $0x61626364, (%r10)
nop
nop
add %r11, %r11
lea addresses_UC_ht+0xb965, %r13
nop
nop
nop
nop
nop
and $54264, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
and $36500, %r10
lea addresses_D_ht+0xe839, %r13
nop
nop
nop
nop
xor %r10, %r10
mov (%r13), %r11w
nop
nop
xor $64738, %r9
lea addresses_A_ht+0x1a039, %r8
nop
dec %r11
movw $0x6162, (%r8)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x6f39, %rsi
lea addresses_UC_ht+0x5839, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $61903, %r13
lea addresses_A_ht+0x13739, %rsi
nop
nop
add $51979, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %rsi
vmovaps %ymm0, (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Load
lea addresses_US+0x6f6b, %rbp
nop
and $43723, %rcx
mov (%rbp), %rax
nop
nop
nop
sub $37660, %rdx

// Faulty Load
lea addresses_PSE+0x7339, %r14
nop
nop
nop
nop
inc %r10
mov (%r14), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'33': 202}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
