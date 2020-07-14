.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x77a3, %rbx
nop
nop
nop
add $65241, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
cmp $19350, %rbx
lea addresses_D_ht+0x65a3, %r14
dec %rbx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
cmp $46051, %r12
lea addresses_WT_ht+0x7fa3, %r8
nop
nop
nop
nop
nop
sub $24879, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r8)
sub $50983, %rdx
lea addresses_A_ht+0x1b1a3, %rsi
lea addresses_normal_ht+0x1a5a3, %rdi
nop
nop
nop
and $39126, %r14
mov $38, %rcx
rep movsq
sub $44996, %rdi
lea addresses_WT_ht+0x185a3, %r14
nop
nop
nop
nop
nop
xor $42642, %r12
mov (%r14), %cx
xor $33436, %r8
lea addresses_normal_ht+0xf6a3, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $20191, %r8
movb (%rsi), %r14b
nop
nop
nop
nop
cmp $27516, %rdx
lea addresses_normal_ht+0x11423, %rsi
nop
nop
nop
nop
add $52696, %r14
mov (%rsi), %ebp
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1de83, %rsi
lea addresses_normal_ht+0xbd23, %rdi
nop
sub %rbp, %rbp
mov $17, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x7e43, %r12
nop
nop
nop
cmp %rbx, %rbx
mov (%r12), %ecx
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x7123, %rsi
nop
nop
nop
nop
nop
sub $65293, %r12
movb (%rsi), %bl
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1c077, %rsi
lea addresses_WC_ht+0x12163, %rdi
xor $45929, %r8
mov $80, %rcx
rep movsb
nop
nop
nop
and $53787, %rcx
lea addresses_A_ht+0x1b910, %rdi
nop
nop
nop
nop
nop
xor $57939, %rbp
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x97d3, %rsi
lea addresses_WT_ht+0x1e203, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $124, %rcx
rep movsw
inc %rbx
lea addresses_UC_ht+0x18ec5, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rdx)
nop
add %rcx, %rcx
lea addresses_WC_ht+0x13303, %r14
nop
nop
nop
nop
nop
add $19120, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
add $55302, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rdi
push %rdx

// Faulty Load
mov $0x7029a10000000da3, %r10
sub %rdx, %rdx
vmovaps (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'45': 156, '00': 111, '49': 4184}
45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 45 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 00 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 45 49 49 00 49 49 45 49 00 49 45 49 49 45 49 49 49 49 00 45 49 45 45 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49
*/
