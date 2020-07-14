.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x22a7, %rsi
lea addresses_D_ht+0x679, %rdi
xor %r14, %r14
mov $27, %rcx
rep movsl
nop
add $51348, %rcx
lea addresses_normal_ht+0x6a81, %rsi
lea addresses_WT_ht+0x16e81, %rdi
nop
add %r8, %r8
mov $50, %rcx
rep movsb
nop
add $31654, %rcx
lea addresses_A_ht+0x111c1, %rax
nop
nop
nop
nop
nop
cmp %r9, %r9
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
xor $31385, %r14
lea addresses_A_ht+0xa401, %rsi
lea addresses_UC_ht+0xd081, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $110, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x5d61, %r12
nop
nop
nop
add %rax, %rax
mov (%r12), %r14w
nop
and $3173, %rcx
lea addresses_WT_ht+0x19081, %r9
nop
nop
nop
sub %r8, %r8
movb $0x61, (%r9)
and %r9, %r9
lea addresses_A_ht+0x8e58, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %r8w
nop
nop
sub $25675, %r8
lea addresses_normal_ht+0x18a61, %r14
nop
nop
add $33959, %r12
mov (%r14), %eax
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xb01, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $4199, %r9
lea addresses_D_ht+0xe181, %r8
nop
and %rsi, %rsi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
nop
xor $9373, %r8
lea addresses_D_ht+0x16601, %rsi
lea addresses_WT_ht+0x13a9, %rdi
clflush (%rdi)
nop
add $58740, %r9
mov $31, %rcx
rep movsb
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x18e05, %rsi
nop
nop
nop
sub $4237, %r9
mov (%rsi), %edi
nop
and $22610, %rax
lea addresses_WT_ht+0x1b441, %rcx
nop
and $53103, %rsi
mov (%rcx), %rdi
nop
nop
nop
nop
sub $7748, %r14
lea addresses_D_ht+0x4071, %rsi
lea addresses_WC_ht+0x91d4, %rdi
nop
nop
sub %rax, %rax
mov $52, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1bec1, %rsi
lea addresses_PSE+0x1fbc1, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rbp
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
mov $0x11f39f0000000081, %rsi
clflush (%rsi)
nop
add $46824, %rcx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 24, '45': 18614, '48': 2918, '46': 273}
00 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 48 45 45 45 45 46 45 45 45 45 48 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 48 45 45 45 45 45 46 45 45 45 45 45 48 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 48 45 45 48 45 45 46 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 48 45 45 45 45 45 48 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 48 45 45 45 45 45 48 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 48 45 45 45 45 45 48 45 45 48 45 45 48 45 45 45 45 45 45 45 45 48 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 48 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 46 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 48 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 46 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 48 45 45 48 45 45 48 45 45 48 45 45 48 45 45 45 45 48 45 45 48 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 48 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 48 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 48 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 48 45 48 45 45 45 45 48 45 45 48 45 45 45 45 45 46 45 45 45 45 45 45 45 48 45 45 46 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 46
*/
