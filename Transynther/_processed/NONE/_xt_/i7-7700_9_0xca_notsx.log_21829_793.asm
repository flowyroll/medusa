.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c7ac, %rbx
nop
nop
sub $27892, %rsi
mov (%rbx), %r12
inc %r9
lea addresses_A_ht+0x14f5f, %rsi
lea addresses_A_ht+0x10f5f, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $20, %rcx
rep movsw
and %r13, %r13
lea addresses_A_ht+0x19bfd, %r9
nop
nop
nop
nop
add %r13, %r13
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
and %r13, %r13
lea addresses_WC_ht+0x18a5f, %rsi
lea addresses_WC_ht+0x1285f, %rdi
nop
nop
nop
nop
xor $21134, %r11
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x145ff, %r12
sub %rdi, %rdi
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1845f, %rdi
nop
xor $58791, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x13a5f, %rsi
lea addresses_normal_ht+0x672f, %rdi
dec %r12
mov $120, %rcx
rep movsq
nop
nop
nop
nop
cmp $25597, %r9
lea addresses_D_ht+0x1cd1f, %r13
nop
nop
inc %rdi
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x1175f, %rbx
nop
nop
and $42473, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
xor $7045, %r11
lea addresses_WC_ht+0x1577f, %rsi
lea addresses_UC_ht+0xee5f, %rdi
clflush (%rsi)
sub $54036, %r12
mov $48, %rcx
rep movsw
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9

// Faulty Load
lea addresses_A+0xc25f, %r14
dec %r12
mov (%r14), %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
