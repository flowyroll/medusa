.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ad27, %r10
nop
nop
nop
nop
nop
and $52374, %r14
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1220b, %rbx
clflush (%rbx)
and %r10, %r10
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1667b, %r8
nop
xor %r14, %r14
mov (%r8), %bx
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x9b9b, %rdx
nop
nop
nop
sub $7688, %rcx
mov (%rdx), %r10w
nop
and %rdi, %rdi
lea addresses_A_ht+0x107ad, %r14
nop
add %rdi, %rdi
mov (%r14), %r8w
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x1bc7b, %r10
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r10), %ecx
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0xe743, %r8
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r8), %cx
nop
nop
nop
nop
sub $33693, %rdx
lea addresses_WC_ht+0x12c7b, %rbx
nop
nop
nop
nop
add %r14, %r14
mov (%rbx), %dx
and $54498, %rdx
lea addresses_normal_ht+0xebf0, %r8
nop
nop
nop
sub $60878, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x59bf, %rsi
lea addresses_WC_ht+0x1b47b, %rdi
nop
and %r8, %r8
mov $58, %rcx
rep movsw
nop
nop
nop
xor $15904, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x6db, %r14
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
cmp $47413, %r14

// Store
mov $0x785208000000011b, %rbx
clflush (%rbx)
nop
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
cmp $24846, %rcx

// Faulty Load
lea addresses_A+0x827b, %r14
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'80': 1, 'f0': 7, '46': 1, '1a': 2, '00': 169, 'e0': 5, '14': 14, '47': 8}
e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 f0 00 00 00 00 00 00 00 00 00 14 00 00 00 00 00 14 00 00 00 14 00 00 14 00 00 00 e0 00 14 f0 f0 f0 00 00 00 00 00 00 00 47 00 00 1a 00 00 00 00 1a 00 00 00 80 47 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 14 00 00 00 00 f0 00 14 00 00 47 00 00 00 00 00 00 00 00 00 00 14 14 00 14 00 14 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 14 00 47 00 e0 f0 47 00 00 14 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 f0 00 00
*/
