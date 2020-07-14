.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x18ba2, %rdi
nop
inc %rbx
movw $0x6162, (%rdi)
nop
nop
add $61968, %rax
lea addresses_D_ht+0x1c22, %rsi
lea addresses_D_ht+0xab62, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $71, %rcx
rep movsq
nop
nop
nop
nop
xor $46321, %rcx
lea addresses_D_ht+0x15462, %rdx
nop
nop
nop
nop
nop
add $22092, %rbp
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
lfence
lea addresses_WT_ht+0x2e62, %rbx
nop
nop
nop
nop
nop
sub $411, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x10762, %rbx
nop
xor $27120, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rbx)
nop
inc %rbx
lea addresses_UC_ht+0x1407e, %rbx
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_A+0x9b62, %r8
nop
nop
nop
sub %r11, %r11
movb $0x51, (%r8)
nop
nop
nop
inc %rdi

// Store
lea addresses_normal+0x8342, %rax
xor $16254, %rdi
movw $0x5152, (%rax)
nop
sub %r15, %r15

// Store
lea addresses_D+0x1b62, %r8
nop
nop
nop
inc %r10
movl $0x51525354, (%r8)
nop
nop
xor %r8, %r8

// Store
lea addresses_UC+0x9a22, %r8
nop
add %r15, %r15
movb $0x51, (%r8)
nop
nop
sub %r10, %r10

// Store
mov $0x4a14920000000182, %r8
clflush (%r8)
nop
and $4716, %r15
movl $0x51525354, (%r8)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_A+0x9b62, %r15
nop
and %rax, %rax
mov (%r15), %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'54': 182}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
