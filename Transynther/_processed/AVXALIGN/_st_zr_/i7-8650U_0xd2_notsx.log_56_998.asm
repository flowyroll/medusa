.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x95fc, %rsi
lea addresses_normal_ht+0x10f14, %rdi
nop
inc %rbx
mov $0, %rcx
rep movsw
nop
nop
nop
sub $22894, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x4d28, %rdx
nop
nop
nop
and $22934, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rdx)
mfence

// Store
lea addresses_UC+0x3714, %r15
nop
and $50051, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_A+0x14c14, %r15
nop
nop
xor $1700, %r8
movw $0x5152, (%r15)
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_UC+0x1dad4, %r15
xor %r8, %r8
mov (%r15), %bx
nop
nop
nop
nop
sub $24009, %r15

// Load
lea addresses_US+0x1f204, %rdx
nop
nop
nop
nop
nop
add %r12, %r12
mov (%rdx), %r15
nop
xor $4560, %rbx

// Load
lea addresses_normal+0x15e18, %rdi
nop
nop
cmp $39004, %r12
mov (%rdi), %r8d
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0x10f14, %r12
nop
nop
nop
nop
nop
cmp $36814, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_US+0xa214, %r15
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
nop
xor $8676, %r8

// Faulty Load
lea addresses_UC+0xaf14, %r15
cmp $40245, %rbx
vmovaps (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'00': 53, '58': 3}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
