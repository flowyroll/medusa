.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xe1f4, %r12
nop
nop
xor %r9, %r9
movw $0x6162, (%r12)
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1ec42, %rax
nop
nop
nop
inc %rdx
movb (%rax), %cl
nop
nop
inc %rdx
lea addresses_UC_ht+0x6434, %rsi
lea addresses_WT_ht+0x1e474, %rdi
nop
nop
add %r12, %r12
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x15cd4, %r10
nop
nop
cmp %r9, %r9
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0xfff4, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov (%rdx), %r10
nop
inc %rdx
lea addresses_normal_ht+0x5a74, %rdi
sub %rdx, %rdx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
sub $56420, %r9
lea addresses_UC_ht+0xf334, %rsi
lea addresses_D_ht+0x3794, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $10710, %rax
mov $95, %rcx
rep movsl
sub %rcx, %rcx
lea addresses_WC_ht+0xbbb0, %rdx
and %rax, %rax
mov (%rdx), %r12d
nop
nop
nop
add $8284, %r9
lea addresses_A_ht+0x274, %rsi
lea addresses_D_ht+0x11f00, %rdi
nop
nop
sub %rdx, %rdx
mov $74, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_A_ht+0x1748, %rsi
lea addresses_WC_ht+0x12294, %rdi
nop
nop
nop
and $19019, %r14
mov $87, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_D_ht+0x7974, %r10
clflush (%r10)
add $33818, %rsi
movb $0x61, (%r10)
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1ac74, %rax
nop
nop
and $36618, %r12
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x18874, %rsi
lea addresses_UC_ht+0xd3f4, %rdi
nop
nop
inc %r10
mov $50, %rcx
rep movsl
nop
sub $41968, %r12
lea addresses_normal_ht+0xc134, %rsi
lea addresses_D_ht+0x3874, %rdi
nop
nop
nop
xor $55222, %rdx
mov $21, %rcx
rep movsb
nop
nop
nop
and $11046, %rdi
lea addresses_WC_ht+0x89b3, %r10
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
cmp $23257, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x19144, %r10
nop
nop
and %rdi, %rdi
mov (%r10), %rsi
inc %rcx

// Faulty Load
lea addresses_PSE+0x8074, %r9
nop
nop
nop
nop
inc %r8
mov (%r9), %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
