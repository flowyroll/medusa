.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbx
push %rdi
lea addresses_UC_ht+0x1b0c1, %r13
cmp %rbx, %rbx
movw $0x6162, (%r13)
nop
nop
cmp $47912, %rdi
pop %rdi
pop %rbx
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x3a21, %rsi
lea addresses_WT+0x189c1, %rdi
nop
nop
inc %r8
mov $70, %rcx
rep movsl
nop
nop
nop
sub $55395, %rax

// Store
lea addresses_UC+0x16161, %r8
inc %rax
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x32c, %r14
clflush (%r14)
nop
inc %rdi
movb $0x51, (%r14)
xor $19406, %rax

// Faulty Load
lea addresses_A+0x8dc1, %r9
nop
nop
nop
nop
cmp $48794, %rdi
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
