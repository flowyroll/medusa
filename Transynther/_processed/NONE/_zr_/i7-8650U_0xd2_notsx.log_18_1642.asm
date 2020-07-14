.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdx
push %rsi
lea addresses_WT_ht+0x1ce96, %r13
add %rbx, %rbx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r15
nop
cmp $29464, %rsi
lea addresses_A_ht+0xd67e, %rbx
nop
nop
nop
nop
add $18769, %r15
mov (%rbx), %si
xor $22358, %rdx
lea addresses_WT_ht+0xa1f2, %r8
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
dec %r9
lea addresses_UC_ht+0x196e2, %r8
clflush (%r8)
nop
nop
nop
add %r13, %r13
mov (%r8), %esi
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x6234, %rsi
clflush (%rsi)
nop
nop
nop
sub %rdx, %rdx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x6396, %r13
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r13)
nop
nop
sub $3699, %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_US+0x170fe, %r14
nop
nop
nop
dec %rax
mov (%r14), %rbx
and %r14, %r14

// Store
lea addresses_A+0x1996, %rsi
clflush (%rsi)
nop
add $51282, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
sub $49556, %r14

// Store
lea addresses_RW+0x15496, %r13
nop
nop
nop
cmp $20798, %r9
movb $0x51, (%r13)
dec %rsi

// Store
mov $0x45d7020000000c96, %r14
nop
nop
inc %rax
movl $0x51525354, (%r14)
xor $6232, %rax

// Load
lea addresses_US+0x5e96, %r12
nop
nop
nop
nop
xor $43678, %r9
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
sub $11609, %r9

// Load
lea addresses_normal+0x68a, %r13
nop
cmp %r14, %r14
mov (%r13), %si
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_WT+0xe96, %r12
nop
nop
add $65333, %r14
movb (%r12), %bl
xor $38799, %rax

// Store
lea addresses_normal+0x15296, %r12
nop
nop
nop
nop
nop
add $126, %r13
movw $0x5152, (%r12)
nop
nop
dec %r12

// Faulty Load
lea addresses_A+0x6696, %r12
nop
nop
nop
and %rsi, %rsi
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
