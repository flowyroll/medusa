.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
lea addresses_A_ht+0x349d, %r13
nop
nop
dec %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1b1bd, %r8
nop
nop
xor $4266, %rdi
mov (%r8), %rcx
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0xaebd, %r13
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r13)
nop
nop
cmp $54920, %r14
lea addresses_UC_ht+0x1439d, %r14
nop
nop
nop
nop
dec %rbx
movl $0x61626364, (%r14)
cmp $18483, %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_RW+0x10d9d, %r9
nop
nop
nop
nop
and $44853, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovntdq %ymm5, (%r9)
nop
nop
nop
nop
xor $7278, %rbx

// Load
lea addresses_RW+0x19c39, %r15
nop
and %rbp, %rbp
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
add %r15, %r15

// Store
lea addresses_WC+0x8dd5, %r15
cmp $12643, %rbx
movw $0x5152, (%r15)
sub $31577, %rbx

// Faulty Load
lea addresses_US+0xb9d, %r14
nop
nop
inc %rax
movntdqa (%r14), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rbx
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
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_RW'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 3}
00 00 00
*/
