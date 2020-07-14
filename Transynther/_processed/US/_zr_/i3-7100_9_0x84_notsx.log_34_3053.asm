.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e044, %rsi
lea addresses_A_ht+0xb3c4, %rdi
nop
nop
nop
sub $57098, %r12
mov $99, %rcx
rep movsw
nop
nop
nop
nop
sub $7084, %rax
lea addresses_WT_ht+0x3c70, %r13
nop
nop
nop
nop
sub %r8, %r8
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
cmp $7673, %r8
lea addresses_normal_ht+0x11d84, %rsi
lea addresses_normal_ht+0x16e04, %rdi
nop
nop
nop
add $16322, %rdx
mov $102, %rcx
rep movsb
nop
nop
nop
add $53176, %r8
lea addresses_A_ht+0x1d704, %rcx
clflush (%rcx)
nop
nop
nop
dec %rdx
movb $0x61, (%rcx)
nop
xor $16553, %r8
lea addresses_UC_ht+0x13002, %r13
nop
nop
nop
nop
xor $49574, %rdx
movb (%r13), %cl
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xa7c4, %rsi
lea addresses_UC_ht+0xfb84, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $54404, %rax
mov $45, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x4a70, %rdx
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdx)
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xa004, %rsi
and $9135, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
nop
and $39997, %r13
lea addresses_UC_ht+0x1b404, %r8
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%r8)
nop
cmp $63105, %r8
lea addresses_normal_ht+0xcc04, %rsi
lea addresses_normal_ht+0x1eab0, %rdi
nop
nop
cmp %rdx, %rdx
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x2a04, %rsi
lea addresses_WT_ht+0xfb64, %rdi
nop
nop
nop
cmp $18894, %rdx
mov $105, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x9c04, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%rcx)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0xe404, %r14
nop
and $22110, %rax
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
