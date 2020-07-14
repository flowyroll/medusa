.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x49aa, %rsi
lea addresses_normal_ht+0x4cfe, %rdi
nop
nop
dec %rbp
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1c6a, %rbx
nop
nop
sub $49956, %r9
mov (%rbx), %bp
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x1973a, %rbx
nop
nop
nop
nop
xor $7972, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0xbac7, %rsi
lea addresses_A_ht+0x8f6a, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $78, %rcx
rep movsb
nop
nop
nop
nop
xor $6885, %r9
lea addresses_UC_ht+0x3622, %r9
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %r9
vmovaps %ymm5, (%r9)
nop
nop
nop
nop
nop
xor $2731, %rbx
lea addresses_UC_ht+0x1b42a, %rbx
nop
nop
nop
nop
dec %rdi
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %r14
nop
xor $35657, %r14
lea addresses_WC_ht+0x14aaa, %rsi
nop
nop
nop
and %rdi, %rdi
movb (%rsi), %cl
nop
nop
nop
sub $18911, %r14
lea addresses_D_ht+0x1e7ea, %r14
nop
and %r9, %r9
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x1d8c9, %rsi
lea addresses_UC_ht+0xa9aa, %rdi
nop
nop
dec %r9
mov $108, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x191aa, %rbx
xor %rdi, %rdi
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
and $44797, %r10

// Load
lea addresses_US+0x11aa, %rbx
nop
nop
nop
sub %rcx, %rcx
mov (%rbx), %r10w
nop
add $11395, %r14

// Faulty Load
lea addresses_A+0x191aa, %r8
clflush (%r8)
nop
nop
nop
sub %r10, %r10
movb (%r8), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'00': 219}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
