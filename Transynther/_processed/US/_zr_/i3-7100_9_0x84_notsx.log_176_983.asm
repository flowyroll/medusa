.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x933a, %rcx
clflush (%rcx)
nop
nop
nop
and $29110, %r12
mov (%rcx), %rbx
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1a106, %rsi
lea addresses_WT_ht+0x18406, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $65506, %rdx
mov $9, %rcx
rep movsw
nop
nop
add $37107, %r12
lea addresses_UC_ht+0x14a06, %rdi
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%rdi)
nop
mfence
lea addresses_D_ht+0xad06, %rsi
lea addresses_D_ht+0x19306, %rdi
nop
nop
nop
nop
add $6090, %r10
mov $122, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x17af2, %rcx
nop
nop
xor %rbx, %rbx
mov (%rcx), %r10d
nop
nop
cmp $46364, %r12
lea addresses_normal_ht+0x3b06, %r10
nop
nop
and %rsi, %rsi
mov (%r10), %ebx
nop
nop
and $33925, %rsi
lea addresses_WC_ht+0x11506, %r12
nop
xor %rdi, %rdi
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
nop
sub $14651, %r10
lea addresses_WT_ht+0x19f26, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rbp), %r12d
nop
nop
xor $37843, %r10
lea addresses_D_ht+0x135ea, %rsi
lea addresses_WT_ht+0x3c06, %rdi
nop
nop
nop
nop
cmp $18867, %rbp
mov $42, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $35387, %rsi
lea addresses_normal_ht+0x1a8fa, %rbp
clflush (%rbp)
nop
add %rbx, %rbx
mov (%rbp), %dx
nop
nop
nop
nop
cmp $38648, %r10
lea addresses_WT_ht+0x2cae, %rbx
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
and $3590, %rsi
lea addresses_A_ht+0xd806, %r12
nop
and %rdi, %rdi
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
and $5272, %rdi
lea addresses_normal_ht+0x14206, %r12
nop
nop
nop
sub $15237, %rbx
mov (%r12), %di
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Load
lea addresses_D+0x2806, %r12
nop
nop
nop
nop
nop
add $23625, %r8
mov (%r12), %ebp
nop
nop
nop
xor $27467, %r15

// Load
lea addresses_US+0xb006, %rax
nop
nop
nop
add %rbp, %rbp
mov (%rax), %r13w
nop
nop
nop
and $10810, %r12

// Store
lea addresses_WC+0x180ae, %r8
nop
nop
nop
sub $36919, %rdx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_US+0xb006, %rdx
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rdx), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 176}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
