.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x60a5, %r8
nop
nop
nop
inc %r14
movw $0x6162, (%r8)
nop
nop
cmp $60047, %rax
lea addresses_UC_ht+0xd675, %rax
nop
nop
nop
nop
xor $14265, %r14
movl $0x61626364, (%rax)
nop
nop
nop
add $15424, %r14
lea addresses_normal_ht+0x1e545, %rsi
lea addresses_normal_ht+0x1dd73, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $36, %rcx
rep movsl
nop
inc %r8
lea addresses_normal_ht+0x3f05, %rsi
lea addresses_D_ht+0x11713, %rdi
sub $36284, %rax
mov $1, %rcx
rep movsq
nop
nop
sub $18875, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0xbb6c, %r12
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
inc %r12

// Store
lea addresses_RW+0xc545, %r12
nop
nop
and $58650, %rsi
movb $0x51, (%r12)
nop
and $33414, %r9

// Store
lea addresses_normal+0xfd45, %r8
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movaps %xmm4, (%r8)
nop
and %r14, %r14

// Faulty Load
lea addresses_D+0x6d45, %rcx
and $59500, %r14
movaps (%rcx), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'02': 1, '00': 14586, '58': 4365, 'e0': 994}
e0 58 58 00 00 00 00 00 e0 58 e0 58 00 e0 58 58 58 58 e0 58 e0 00 00 e0 58 00 00 e0 e0 58 e0 00 58 00 00 e0 58 58 00 e0 58 e0 00 58 58 e0 58 58 e0 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 58 e0 00 00 00 e0 00 00 00 58 00 58 00 00 58 58 e0 58 58 00 58 58 e0 58 e0 00 00 00 00 e0 58 00 e0 00 58 58 58 00 58 00 00 00 58 00 00 00 00 e0 58 e0 58 00 e0 00 00 00 e0 58 00 00 e0 00 00 00 00 00 58 00 58 00 00 00 00 58 00 00 00 00 00 00 e0 e0 00 e0 58 58 58 00 00 58 00 58 00 00 58 58 58 58 00 00 00 58 00 58 e0 00 00 e0 00 00 00 00 00 58 58 00 00 00 00 e0 58 58 58 00 58 00 00 00 00 00 e0 00 e0 58 58 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 58 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 58 e0 00 00 00 00 00 00 58 00 00 58 58 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 e0 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 58 58 00 58 00 58 00 00 58 58 00 00 00 58 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 58 00 00 58 00 00 58 58 00 00 00 00 00 00 58 00 58 58 00 58 58 00 00 00 00 00 00 00 00 00 e0 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 58 00 00 e0 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 58 00 00 00 58 00 00 00 58 00 e0 58 00 00 00 00 00 58 00 58 00 00 00 00 00 00 e0 58 58 00 00 00 00 00 00 00 58 58 58 00 e0 00 00 00 00 00 00 00 00 58 00 58 58 58 00 00 00 00 58 00 00 00 00 58 00 e0 00 58 00 00 58 00 58 58 00 00 00 58 58 00 00 00 00 00 00 00 e0 00 58 58 00 58 00 00 00 00 00 00 00 00 58 58 58 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 e0 00 00 00 00 58 00 00 00 00 58 00 58 00 00 00 00 e0 00 00 58 58 58 e0 00 00 58 00 00 00 00 58 00 00 00 00 00 00 58 e0 00 00 00 00 00 00 e0 58 00 00 00 58 58 00 e0 00 00 00 00 58 00 58 58 00 58 00 00 00 58 00 e0 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 58 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 e0 00 58 00 00 58 e0 58 00 00 00 00 00 00 58 00 00 00 00 e0 00 00 00 58 00 00 00 58 00 e0 00 58 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 e0 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 58 00 00 58 00 00 00 00
*/
