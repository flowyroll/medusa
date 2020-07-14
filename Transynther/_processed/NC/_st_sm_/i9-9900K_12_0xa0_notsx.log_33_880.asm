.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
lea addresses_D_ht+0x50ef, %rcx
nop
nop
add $52144, %r10
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
cmp $21888, %r8
lea addresses_A_ht+0x1c3db, %r11
nop
nop
nop
nop
add $31935, %r15
mov (%r11), %r13
nop
sub %r8, %r8
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r8
push %rax

// Store
mov $0x13f9d3000000016f, %r10
nop
nop
nop
sub $28302, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub $56316, %r8

// Store
lea addresses_A+0x896f, %r10
nop
nop
xor $5710, %r15
movl $0x51525354, (%r10)
nop
nop
nop
inc %rax

// Load
lea addresses_UC+0xc86f, %r12
nop
nop
nop
add %r10, %r10
mov (%r12), %r15d
nop
inc %r8

// Store
lea addresses_RW+0x54e9, %r11
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%r11)
xor $41164, %rax

// Faulty Load
mov $0x13f9d3000000016f, %r14
nop
nop
nop
nop
nop
add %r15, %r15
movb (%r14), %r11b
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'54': 33}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
