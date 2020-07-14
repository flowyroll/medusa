.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb898, %r8
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %r8
vmovaps %ymm2, (%r8)
inc %r8
lea addresses_normal_ht+0x11558, %rsi
lea addresses_UC_ht+0x12898, %rdi
nop
nop
nop
nop
dec %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0xb918, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rdi)
cmp $34837, %rcx
lea addresses_normal_ht+0x1f18, %rsi
lea addresses_A_ht+0x14790, %rdi
xor $6303, %r14
mov $76, %rcx
rep movsw
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x11d38, %rsi
lea addresses_WT_ht+0xc71e, %rdi
clflush (%rdi)
nop
nop
cmp $53327, %rdx
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x12598, %r8
nop
nop
nop
add %r14, %r14
movw $0x6162, (%r8)
nop
nop
sub $38337, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdx

// Store
lea addresses_A+0x5098, %r10
inc %r8
movw $0x5152, (%r10)
nop
nop
and $4282, %r8

// Store
lea addresses_UC+0x25d8, %r12
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovaps %ymm1, (%r12)
nop
nop
nop
nop
cmp $63106, %r10

// Faulty Load
lea addresses_A+0x5098, %rdx
nop
and $7024, %r15
mov (%rdx), %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'52': 95}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
