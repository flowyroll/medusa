.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
lea addresses_UC_ht+0xfbcb, %r13
nop
nop
cmp %r12, %r12
movups (%r13), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x12763, %r10
nop
nop
nop
nop
add $62643, %r8
mov (%r10), %r13
nop
cmp $23647, %r12
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x13ed7, %rsi
lea addresses_D+0x6dfd, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $78, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $40292, %rdi

// Store
lea addresses_D+0x1c24b, %r11
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovntdq %ymm4, (%r11)
nop
xor $62040, %rcx

// Store
lea addresses_D+0x16565, %rdx
dec %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdx)
dec %r15

// Store
lea addresses_normal+0x1451b, %r15
nop
nop
nop
nop
inc %r9
movw $0x5152, (%r15)
xor %r15, %r15

// Store
lea addresses_A+0x1c96b, %r9
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x86eb, %r11
cmp $33538, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x6f73, %r11
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
nop
xor $17850, %rdx

// Faulty Load
lea addresses_PSE+0x1cceb, %r9
nop
nop
dec %r15
mov (%r9), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'33': 3}
33 33 33
*/
