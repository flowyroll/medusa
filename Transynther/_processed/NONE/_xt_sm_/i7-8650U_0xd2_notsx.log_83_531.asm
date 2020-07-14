.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6d8d, %rsi
lea addresses_WC_ht+0x17219, %rdi
nop
nop
nop
nop
xor $3654, %rbp
mov $4, %rcx
rep movsw
nop
nop
add %rax, %rax
lea addresses_WC_ht+0xb0e5, %rsi
lea addresses_normal_ht+0x10a35, %rdi
nop
lfence
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xe5e5, %rsi
lea addresses_normal_ht+0x145c5, %rdi
nop
nop
nop
nop
inc %r14
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0xae5, %rbp
cmp %r10, %r10
movl $0x61626364, (%rbp)
sub %rsi, %rsi
lea addresses_WT_ht+0xf855, %rsi
nop
nop
nop
add $46738, %rcx
movb (%rsi), %al
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x13ce5, %r10
nop
add %rcx, %rcx
mov (%r10), %ebp
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1a465, %r14
nop
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x4e5, %r8
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%r8)
nop
nop
cmp $7360, %rax

// Load
lea addresses_RW+0x179a1, %r13
nop
add $16385, %rcx
mov (%r13), %rbx
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_RW+0x11ce5, %rsi
lea addresses_normal+0xa273, %rdi
nop
add $49327, %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
add $4184, %r13

// Store
lea addresses_D+0x114e5, %r11
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r11)
nop
inc %rdi

// Store
lea addresses_RW+0x11ce5, %r13
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
sub $31360, %rax

// Store
lea addresses_D+0x140dc, %r8
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_RW+0x1d27d, %rcx
nop
nop
nop
nop
nop
add $19959, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
and %rbx, %rbx

// Store
lea addresses_RW+0x11ce5, %r8
inc %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
sub $12624, %r8

// Faulty Load
lea addresses_RW+0x11ce5, %r8
nop
nop
nop
cmp $18190, %rcx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'58': 83}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
