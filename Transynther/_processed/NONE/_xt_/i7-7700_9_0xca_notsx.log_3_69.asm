.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d9a4, %rbx
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
xor $12911, %rax
lea addresses_A_ht+0x1a642, %rcx
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
cmp $50779, %rcx
lea addresses_WC_ht+0x9f42, %rsi
lea addresses_A_ht+0x1c942, %rdi
nop
nop
nop
nop
nop
sub $11304, %r10
mov $121, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x8342, %rax
nop
nop
nop
nop
nop
sub $31912, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
cmp $40731, %rdi
lea addresses_WC_ht+0x11842, %rcx
nop
nop
and $27048, %r10
movb (%rcx), %r13b
nop
nop
nop
nop
nop
xor $43495, %rsi
lea addresses_D_ht+0x3442, %rsi
lea addresses_UC_ht+0x1b1e2, %rdi
nop
nop
and %r13, %r13
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $34203, %rcx
lea addresses_WC_ht+0x12242, %rsi
lea addresses_UC_ht+0x1542, %rdi
nop
xor %r9, %r9
mov $91, %rcx
rep movsq
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x19b82, %rsi
lea addresses_WC_ht+0x193b0, %rdi
and $12649, %r9
mov $61, %rcx
rep movsw
nop
nop
xor $55292, %r10
lea addresses_WT_ht+0x28c2, %rax
nop
cmp $55454, %rsi
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xae82, %rsi
lea addresses_D+0x2152, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $61380, %r12
mov $42, %rcx
rep movsw
inc %rsi

// Store
lea addresses_WT+0x16a22, %r14
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
nop
cmp $53938, %rdi

// Store
mov $0x7026a40000000042, %rdx
nop
sub $38413, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdx)
nop
sub $46541, %rdi

// Faulty Load
lea addresses_normal+0x9842, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'34': 3}
34 34 34
*/
