.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_WT+0x12985, %r14
nop
nop
nop
nop
add $36886, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
add %rdx, %rdx

// Store
lea addresses_D+0x12fc5, %rbp
nop
nop
nop
nop
cmp $13731, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
nop
sub $49576, %rdx

// Store
lea addresses_RW+0x1c005, %rbp
nop
nop
nop
nop
sub $64512, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_US+0x144ad, %r14
nop
nop
nop
nop
cmp $7962, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movaps %xmm6, (%r14)
nop
nop
dec %r11

// Store
lea addresses_US+0x15185, %r14
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
cmp $7390, %r15

// Load
lea addresses_WT+0x186c5, %rbp
clflush (%rbp)
nop
nop
xor %r9, %r9
vmovntdqa (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x13a15, %r9
nop
nop
add %r11, %r11
movw $0x5152, (%r9)
nop
inc %r11

// Faulty Load
lea addresses_WT+0x12985, %rbp
inc %r14
mov (%rbp), %dx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 220}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
