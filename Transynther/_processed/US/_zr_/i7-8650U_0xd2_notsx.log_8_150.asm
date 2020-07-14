.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdx
lea addresses_UC_ht+0x1b9ef, %r11
nop
nop
nop
cmp %r8, %r8
movb (%r11), %dl
xor %rcx, %rcx
lea addresses_UC_ht+0x1752f, %r15
nop
dec %r9
movw $0x6162, (%r15)
nop
sub %rcx, %rcx
lea addresses_D_ht+0x12fef, %r8
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x18be7, %rdx
nop
nop
nop
xor %r9, %r9
mov (%rdx), %r12
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x119ef, %r9
nop
nop
nop
nop
nop
add $26535, %r12
movw $0x6162, (%r9)
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0xb8ef, %r8
nop
nop
nop
nop
xor $41067, %rcx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
xor $10927, %rdx
lea addresses_WT_ht+0x9cf, %r8
nop
nop
nop
and %rdx, %rdx
movb (%r8), %cl
nop
nop
nop
nop
add $7967, %rcx
lea addresses_A_ht+0x93ef, %rdx
nop
inc %r11
movb $0x61, (%rdx)
xor %r11, %r11
lea addresses_WC_ht+0x1c68e, %r8
nop
xor %rcx, %rcx
movl $0x61626364, (%r8)
nop
sub $7936, %r15
lea addresses_A_ht+0x8b47, %r11
nop
xor %r12, %r12
mov (%r11), %r15w
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x9ef, %r11
nop
nop
nop
nop
and $11221, %r8
movups (%r11), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
and $27460, %r8
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Load
lea addresses_US+0x1c5ef, %r13
sub %rax, %rax
mov (%r13), %esi
nop
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x1c5ef, %r15
nop
and $28644, %rbx
mov (%r15), %r12w
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
