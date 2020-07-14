.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x477, %rdi
nop
nop
xor $51608, %rdx
mov (%rdi), %rax
nop
nop
nop
nop
nop
add $38397, %rbp
lea addresses_WT_ht+0x4131, %rbx
and $1984, %rax
movw $0x6162, (%rbx)
and $44463, %rbp
lea addresses_D_ht+0x16871, %r13
nop
inc %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r13
vmovntdq %ymm3, (%r13)
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x1d03d, %rsi
lea addresses_A_ht+0x2d71, %rdi
clflush (%rdi)
nop
nop
nop
and %rbx, %rbx
mov $94, %rcx
rep movsl
nop
xor $53471, %rdi
lea addresses_UC_ht+0x11871, %rsi
lea addresses_WT_ht+0x1b941, %rdi
nop
nop
nop
xor $29760, %rax
mov $38, %rcx
rep movsl
nop
add $55702, %rsi
lea addresses_WC_ht+0x16db1, %rbx
nop
nop
xor $46480, %rcx
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rdx
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e5f1, %rax
nop
nop
nop
nop
sub $29165, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rax)
nop
nop
xor $59766, %r15
lea addresses_UC_ht+0x131f1, %rsi
lea addresses_A_ht+0x123e1, %rdi
nop
cmp $45887, %r13
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x3d99, %rsi
lea addresses_WT_ht+0x1b71, %rdi
nop
cmp $56582, %rdx
mov $46, %rcx
rep movsq
and %rdx, %rdx
lea addresses_WT_ht+0x15771, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $50435, %rbp
lea addresses_UC_ht+0x105d1, %r13
and $40315, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x47f1, %rbp
xor %rbx, %rbx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x12f1, %rsi
lea addresses_A_ht+0xc429, %rdi
nop
nop
add $39763, %rbp
mov $98, %rcx
rep movsb
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1a031, %rsi
lea addresses_normal_ht+0x1cf1, %rdi
nop
xor $28782, %r15
mov $93, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Load
lea addresses_WC+0x1c7f1, %rsi
nop
nop
nop
nop
inc %r13
mov (%rsi), %r9
cmp $24285, %r13

// Store
lea addresses_WT+0x1ff1, %r8
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%r8)
nop
nop
sub $4727, %r9

// Faulty Load
lea addresses_A+0x19ff1, %r13
and %r8, %r8
vmovaps (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'5f': 2, '4f': 2, '11': 1, '60': 2, '97': 1, '03': 1, '49': 21, '02': 4, '46': 7562, 'ff': 1, '23': 1, '3f': 1, '7b': 4, '3c': 1, '7c': 1, '9f': 1, '26': 1, '50': 1, '06': 1, 'd6': 2, 'a4': 1, '00': 14215, '29': 1, '64': 1}
00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 46 46 46 00 46 00 00 46 46 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 46 00 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 46 46 00 00 00 00 46 00 46 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 46 00 46 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 46 00 00 46 00 00 46 46 46 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 00 00 46 00 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 46 00 00 46 46 46 00 00 00 46 00 46 46 00 46 46 46 46 46 00 00 46 00 00 46 00 00 00 46 00 46 46 46 00 00 00 46 00 46 00 46 00 46 00 46 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 46 00 00 00 46 46 46 00 00 00 00 00 46 46 46 00 46 00 46 46 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 46 00 46 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 46 46 46 00 46 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 00 46 46 00 00 00 46 46 00 46 00 00 46 46 00 46 00 00 46 00 00 00 00 00 4f 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 00 46 00 00 46 00 00 46 46 46 00 00 00 00 46 46 00 46 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 46 00 46 46 46 00 00 00 46 46 00 00 00 00 46 00 00 00 00 46 46 46 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46 00 46 00 00 46 00 46 00 00 46 46 00 00 46 46 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 00 46 46 00 46 00 00 46 46 00 00 00 46 46 00 46 00 46 00 00 00 00 00 00 46 46 00 00 46 00 46 00 00 00 00 00 46 46 00 00 00 00 46 00 46 00 00 46 46 00 00 00 46 46 46 46 00 00 00 46 46 46 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 46 46 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 00 46 00 46 00 00 46 00 00 46 00 46 46 00 00 46 00 00 00 46 46 46 00 46 00 00 00 46 46 00 46 00 46 00 46 46 46 00 00 00 46 00 00 00 46 46 00 46 46 00 46 00 00 00 46 46 00 00 46 46 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 46 46 46 00 00 46 00 46 46 00 46 00 46 00 00 00 00 00 46 46 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 00 46 00 46 00 46 00 00 00 00 00 46 00 46 00 00 00 46 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 46 46 00 46 00 46 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 46 00 46 46 46 00 00 46 46 00 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46
*/
