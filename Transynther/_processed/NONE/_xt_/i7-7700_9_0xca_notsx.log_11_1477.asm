.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xfab8, %rsi
lea addresses_D_ht+0x198b8, %rdi
nop
cmp $20696, %rax
mov $19, %rcx
rep movsq
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_WT+0x1c136, %r8
add %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r8)
add %r8, %r8

// Store
lea addresses_WC+0xed38, %r9
nop
nop
dec %r14
movl $0x51525354, (%r9)
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x10538, %r14
nop
dec %r15
movl $0x51525354, (%r14)
nop
nop
nop
cmp $4961, %r8

// Store
mov $0x5aa48f00000007ca, %r15
inc %r9
movw $0x5152, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WT+0xe566, %r14
nop
nop
nop
nop
add $24226, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r14)
nop
cmp %r15, %r15

// Faulty Load
lea addresses_normal+0xb2b8, %r9
nop
sub $18923, %rcx
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'34': 11}
34 34 34 34 34 34 34 34 34 34 34
*/
