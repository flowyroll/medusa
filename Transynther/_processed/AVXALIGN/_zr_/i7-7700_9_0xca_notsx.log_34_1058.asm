.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rdi
push %rdx
lea addresses_D_ht+0x1a02d, %rdi
nop
cmp $27690, %r11
movb (%rdi), %r10b
nop
nop
nop
inc %rdx
pop %rdx
pop %rdi
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_UC+0x5270, %r11
nop
nop
nop
nop
nop
add $1314, %r10
movw $0x5152, (%r11)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_UC+0x14270, %rbp
nop
sub $51006, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x870, %r11
xor $23383, %r15
vmovntdqa (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
