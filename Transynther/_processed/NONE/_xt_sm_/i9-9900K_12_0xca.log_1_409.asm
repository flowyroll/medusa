.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
lea addresses_normal_ht+0x5fd4, %rbp
dec %r9
movw $0x6162, (%rbp)
nop
nop
nop
nop
xor %r14, %r14
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0x70b4, %rdx
sub %rbx, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0xe1b4, %r12
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_UC+0x1c6f4, %rbp
nop
nop
nop
sub $41598, %r9
movl $0x51525354, (%rbp)
nop
nop
xor $51744, %r9

// Load
lea addresses_WC+0x69c, %rbp
nop
nop
nop
inc %rbx
movb (%rbp), %dl
and %rbx, %rbx

// Store
lea addresses_WC+0xaa06, %rdx
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rdx)
nop
xor $21433, %r12

// Load
lea addresses_WC+0x130b4, %rbx
nop
nop
nop
nop
inc %rdx
mov (%rbx), %r12w
nop
sub $33986, %r12

// Load
lea addresses_WT+0x1dc34, %rbp
nop
nop
xor %r12, %r12
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_A+0x19b48, %rdx
nop
nop
nop
nop
xor $39726, %rbx
mov (%rdx), %bp

// Exception!!!
mov (0), %r8
nop
nop
nop
xor $28385, %r9

// Faulty Load
lea addresses_WT+0x70b4, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdx), %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'51': 1}
51
*/
