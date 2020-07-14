.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
lea addresses_A_ht+0x1971c, %r12
nop
nop
add $60142, %r14
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
and $40291, %rax
lea addresses_normal_ht+0x209c, %r13
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x1849c, %r12
nop
nop
nop
lfence
mov (%r12), %rax
nop
lfence
lea addresses_WT_ht+0x449c, %r14
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x1831c, %rax
nop
nop
add $64191, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x5c9c, %r11
clflush (%r11)
sub %rbx, %rbx
mov (%r11), %rax
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0xfdbc, %r12
nop
xor $39646, %r13
mov (%r12), %ebx
nop
sub $3731, %rbx
lea addresses_UC_ht+0x16710, %rax
nop
nop
nop
inc %r14
mov (%rax), %ebp
nop
nop
sub %r14, %r14
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x349c, %r14
and %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14

// REPMOV
lea addresses_WT+0x12984, %rsi
lea addresses_normal+0x19d04, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $80, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x2be3020000000f9c, %rdi
nop
nop
nop
nop
nop
add $62257, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
and $12290, %r14

// Store
lea addresses_UC+0x1b4dc, %r8
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r8)
nop
nop
and $13793, %rdi

// Faulty Load
lea addresses_PSE+0x349c, %r14
and %rdi, %rdi
mov (%r14), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'58': 1}
58
*/
