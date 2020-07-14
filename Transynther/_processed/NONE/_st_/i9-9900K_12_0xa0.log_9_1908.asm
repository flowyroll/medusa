.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe4a3, %rsi
nop
xor $12721, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x1950b, %rsi
lea addresses_D_ht+0x18af3, %rdi
nop
nop
add $29545, %r12
mov $31, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x17ec2, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
cmp %rsi, %rsi
lea addresses_WC_ht+0xa577, %rsi
lea addresses_WT_ht+0x4ec3, %rdi
cmp $52763, %rbx
mov $1, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $53765, %rcx
lea addresses_UC_ht+0x29c3, %rbx
nop
nop
cmp %r15, %r15
mov (%rbx), %ebp
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xb673, %rcx
nop
nop
nop
nop
nop
and $22799, %rbx
mov (%rcx), %r13d
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x126c3, %rsi
lea addresses_UC_ht+0x170c3, %rdi
nop
cmp $35793, %r13
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x86c3, %rsi
lea addresses_A_ht+0x9dbb, %rdi
clflush (%rsi)
sub %rbx, %rbx
mov $12, %rcx
rep movsq
nop
nop
nop
xor $11265, %r15
lea addresses_A_ht+0x4dab, %rsi
lea addresses_normal_ht+0x9623, %rdi
nop
nop
cmp $21387, %rbx
mov $6, %rcx
rep movsw
nop
nop
nop
nop
xor $32711, %rsi
lea addresses_WC_ht+0x1a6c3, %rdi
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x12c3, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and $17387, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %r13
vmovntdq %ymm2, (%r13)
nop
sub $60960, %r12
lea addresses_A_ht+0x14d43, %rbp
nop
nop
nop
nop
nop
sub $51141, %rdi
movb (%rbp), %cl
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x16413, %r14
nop
nop
nop
inc %rdx
movw $0x5152, (%r14)
nop
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_PSE+0xd2c3, %rsi
lea addresses_PSE+0xfec3, %rdi
xor %r10, %r10
mov $2, %rcx
rep movsb
nop
add $7611, %r10

// Faulty Load
lea addresses_WC+0xcec3, %rsi
nop
and %rdi, %rdi
mov (%rsi), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'33': 9}
33 33 33 33 33 33 33 33 33
*/
