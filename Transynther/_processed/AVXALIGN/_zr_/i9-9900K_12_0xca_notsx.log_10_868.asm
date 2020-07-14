.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
lea addresses_WT_ht+0xd285, %r10
nop
nop
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%r10)
dec %r15
lea addresses_A_ht+0xe155, %r9
nop
nop
add $15703, %r8
movl $0x61626364, (%r9)
add $60105, %rax
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rdi
push %rdx

// Store
lea addresses_WT+0x147d5, %r12
nop
nop
dec %rdi
movb $0x51, (%r12)
nop
nop
and $53349, %r14

// Store
mov $0x7840960000000c55, %r11
nop
nop
and $12483, %r9
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_WC+0x1b055, %r13
nop
inc %rdx
vmovaps (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
