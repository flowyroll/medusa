.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12131, %rcx
nop
sub %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
xor $26083, %rax
lea addresses_normal_ht+0x2f71, %rbx
nop
nop
nop
nop
nop
add %r15, %r15
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
cmp $13615, %rbx
lea addresses_D_ht+0x1a133, %rsi
lea addresses_WC_ht+0xd71, %rdi
nop
nop
nop
nop
nop
and $26594, %r15
mov $85, %rcx
rep movsb
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x14c61, %rdx
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%rdx)
nop
cmp %rdx, %rdx

// Store
lea addresses_UC+0x5171, %r15
nop
nop
nop
and $64406, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r15)
cmp %r14, %r14

// Store
lea addresses_UC+0x175f1, %r15
nop
nop
nop
nop
nop
dec %rbp
movl $0x51525354, (%r15)
nop
cmp %rbx, %rbx

// Store
lea addresses_normal+0x195a6, %rbp
add %rax, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_US+0x1c8f1, %r14
nop
sub $22588, %r12
movw $0x5152, (%r14)

// Exception!!!
nop
mov (0), %rbx
nop
xor $55320, %r12

// Store
mov $0xf71, %r14
nop
nop
nop
nop
nop
cmp $17511, %r12
movb $0x51, (%r14)
nop
nop
nop
cmp $24200, %rbp

// Store
lea addresses_normal+0x871, %r12
nop
inc %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovntdq %ymm4, (%r12)
nop
nop
nop
nop
xor $49803, %rbp

// Faulty Load
lea addresses_UC+0x5171, %rbp
nop
nop
nop
nop
and %r12, %r12
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'00': 2}
00 00
*/
