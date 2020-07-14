.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ebd5, %rsi
lea addresses_UC_ht+0x12cd1, %rdi
nop
nop
and %r8, %r8
mov $74, %rcx
rep movsq
nop
nop
nop
sub $6537, %r10
lea addresses_WC_ht+0x163d5, %rsi
lea addresses_A_ht+0x5077, %rdi
nop
add %r13, %r13
mov $50, %rcx
rep movsb
and $16950, %r13
lea addresses_WC_ht+0x10335, %rsi
lea addresses_D_ht+0xc5d5, %rdi
nop
xor %r8, %r8
mov $127, %rcx
rep movsq
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x3a33, %rcx
nop
xor $50942, %r10
mov (%rcx), %esi
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x159cc, %rsi
lea addresses_UC_ht+0xcd45, %rdi
nop
nop
nop
sub $59060, %r8
mov $31, %rcx
rep movsb
nop
nop
nop
cmp $14960, %rsi
lea addresses_A_ht+0x10bd5, %rsi
lea addresses_WC_ht+0x15095, %rdi
nop
and %rdx, %rdx
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x6629, %rdi
nop
add $1239, %rdx
movb (%rdi), %r13b
xor $13501, %rdx
lea addresses_A_ht+0x19a05, %rsi
lea addresses_UC_ht+0x14bd5, %rdi
clflush (%rsi)
sub %rbp, %rbp
mov $101, %rcx
rep movsq
nop
nop
nop
nop
and $37554, %r8
lea addresses_WT_ht+0xafd5, %r8
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_normal+0x1e3d5, %r10
nop
add $43679, %rbx
movntdqa (%r10), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'48': 3873, '45': 10790, '00': 7166}
00 45 48 45 00 00 45 00 48 45 00 00 45 00 48 45 00 45 45 00 48 45 48 45 00 48 45 45 48 45 45 00 45 45 00 45 45 00 48 45 00 45 45 00 48 45 00 48 45 00 00 45 00 45 45 00 00 45 00 48 45 00 48 45 00 48 45 00 00 45 00 00 45 48 48 45 48 45 45 00 45 45 48 45 45 00 45 00 48 45 00 48 45 00 48 45 00 00 45 00 45 00 00 45 00 48 45 00 48 45 00 00 45 45 00 45 45 00 45 00 48 45 00 48 45 00 45 45 00 45 45 00 45 45 00 45 00 48 45 00 48 45 45 00 45 00 48 45 00 48 45 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 45 45 00 48 45 00 48 45 00 48 45 48 48 45 48 48 45 00 45 45 00 48 45 00 48 45 00 48 45 48 00 45 00 48 45 48 00 45 45 48 45 00 00 45 00 45 45 48 45 45 00 45 45 00 45 45 48 45 00 00 45 00 00 45 48 48 45 48 00 45 00 48 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 00 45 48 45 00 00 45 00 45 45 00 48 45 00 48 45 00 48 45 00 48 45 00 48 45 00 00 45 00 48 45 00 45 45 48 45 45 00 45 45 00 45 45 48 00 45 00 00 45 48 00 45 00 45 45 00 45 45 00 45 00 00 45 45 48 45 00 00 45 00 48 45 00 48 45 00 00 48 45 00 00 45 00 45 45 00 48 45 48 45 45 48 45 45 48 45 45 00 45 00 48 45 00 00 45 48 00 45 00 48 45 00 00 45 48 48 45 48 00 45 48 48 45 00 48 45 00 00 45 48 45 45 48 45 45 00 48 45 00 48 45 00 00 45 00 45 45 45 45 00 48 45 00 45 00 00 45 00 00 45 00 48 45 00 48 45 00 45 45 00 45 45 48 45 45 00 45 48 48 45 00 00 45 48 45 45 48 45 45 48 45 45 00 45 45 48 45 45 00 45 48 00 45 00 48 45 00 45 45 00 45 45 00 48 45 00 45 45 48 45 45 48 45 45 00 45 00 00 45 00 48 45 00 45 45 00 45 00 00 45 00 48 45 00 00 45 48 48 45 00 00 45 00 48 45 00 45 45 00 45 45 00 45 45 48 45 45 00 45 45 48 45 00 48 45 00 48 45 00 48 45 00 48 45 00 48 45 00 45 00 00 45 00 48 45 00 48 45 00 00 45 00 45 45 00 48 45 00 00 45 48 00 45 00 45 45 48 45 45 45 45 48 45 45 00 45 45 48 45 45 48 45 45 00 45 45 00 45 45 00 45 00 00 45 00 48 45 00 48 45 00 48 45 00 48 45 00 45 45 00 45 45 48 45 45 48 45 00 48 45 00 48 45 00 45 45 00 45 45 48 45 45 00 45 45 00 45 00 48 45 48 48 45 00 48 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 48 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 45 45 00 45 45 00 45 45 48 45 45 48 45 00 48 45 00 00 45 45 48 45 48 48 45 00 45 45 48 00 45 00 45 45 48 45 45 00 45 00 00 45 48 00 45 00 48 45 48 48 45 00 45 45 00 45 45 00 45 45 00 48 45 00 00 45 48 45 45 48 45 45 00 45 45 48 45 45 00 45 45 48 45 45 48 45 00 00 45 00 00 45 00 00 45 45 48 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 48 45 00 48 45 48 48 45 00 45 45 00 48 45 00 45 45 00 48 45 00 45 45 00 48 45 00 48 45 00 45 45 00 45 45 00 45 00 00 45 00 48 45 00 00 45 00 48 45 00 45 45 48 48 45 00 45 45 48 48 45 00 45 45 00 45 45 48 45 45 00 45 48 48 45 00 48 45 48 00 45 45 00 45 00 00 45 00 48 45 48 48 45 00 45 45 48 45 45 00 45 45 00 45 45 48 45 48 45 45 00 45 45 00 45 45 00 45 45 48 45 00 00 45 00 00 45 00 00 45 48 00 45 00 48 45 00 48 45 00 00 45 00 48 45 00 00 45 00 48 45 00 00 45 00 48 45 00 48 45 00 45 45 48 48 45 00 45 45 00 45 00 48 45 00 48 45 00 48 45 00 45 00 45 45 00 45 45
*/
