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
lea addresses_WT_ht+0x593f, %rsi
lea addresses_D_ht+0xecdf, %rdi
clflush (%rsi)
nop
nop
sub $42742, %r10
mov $124, %rcx
rep movsq
nop
add $26847, %rbx
lea addresses_D_ht+0x1153f, %r14
nop
nop
sub $37436, %rcx
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x1793f, %rsi
nop
nop
nop
nop
nop
cmp $35937, %r8
mov (%rsi), %rbx
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x4577, %rcx
nop
nop
sub %r10, %r10
mov (%rcx), %r8
nop
sub $64448, %rcx
lea addresses_A_ht+0xb93f, %rsi
lea addresses_WC_ht+0x1321f, %rdi
nop
nop
nop
xor $33462, %rdx
mov $79, %rcx
rep movsq
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1491b, %rsi
lea addresses_WT_ht+0x1bb93, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $35, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_WC_ht+0x9ebf, %rsi
nop
nop
nop
nop
dec %r8
mov (%rsi), %r10d
nop
nop
nop
nop
nop
xor $2331, %rsi
lea addresses_D_ht+0x1713f, %rdx
nop
nop
cmp $11043, %rcx
mov (%rdx), %edi
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1b273, %rbx
nop
nop
nop
nop
and $31679, %r10
mov (%rbx), %rdx
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xaa4f, %r14
clflush (%r14)
nop
cmp %r8, %r8
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x1927, %rbx
nop
inc %rdi
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1433f, %r8
inc %r10
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
cmp %rcx, %rcx
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
push %r12
push %r9
push %rax
push %rbx
push %rdi

// Faulty Load
lea addresses_WC+0x993f, %r9
nop
nop
nop
cmp %rax, %rax
mov (%r9), %r12d
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'ff': 1416, '30': 83, '48': 34, '00': 622, '44': 101, '46': 99, '50': 28, '52': 48, '45': 24, '47': 2, 'a0': 8, '03': 1, '49': 1, '04': 2}
ff 30 48 00 00 ff ff ff 00 ff ff ff ff ff ff ff 00 ff 00 00 44 00 ff 46 ff ff 46 ff 00 00 00 ff ff ff 50 52 45 00 ff ff ff ff ff 46 ff ff ff ff ff ff ff 50 ff ff 00 44 30 ff ff ff ff ff 00 00 ff ff ff ff 47 ff 00 00 00 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 00 00 46 00 00 ff ff 00 44 ff 48 ff ff ff ff 00 00 00 ff ff 00 00 ff ff ff ff ff ff 46 ff 30 ff ff ff ff ff ff 00 ff ff ff 30 ff 00 ff ff 44 ff 00 00 ff ff 00 ff ff 50 00 ff ff 00 44 ff 00 ff ff ff 44 ff ff ff ff ff ff ff 50 00 ff ff ff ff ff a0 ff 46 00 ff ff 52 46 ff 00 ff ff ff 00 ff ff 00 ff 30 44 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 00 ff 44 00 ff ff ff 44 ff 00 ff 30 ff 46 ff ff 52 44 ff 30 ff 00 ff 00 ff 46 ff ff 00 ff ff ff 00 ff ff ff ff 46 00 44 00 ff ff 00 ff ff 46 ff 00 ff 00 ff 46 ff ff ff 50 ff ff 50 48 ff 44 44 00 ff ff 00 ff ff 30 ff ff 00 52 00 46 44 ff ff ff 00 46 ff ff ff 44 ff ff ff 46 52 00 ff ff 00 ff 30 ff 46 ff 45 48 ff ff 50 00 ff 00 ff ff 00 ff 50 00 00 ff ff 46 ff 00 ff ff 00 ff ff ff ff ff 30 ff ff ff ff 00 ff 45 44 00 45 00 ff 00 ff 30 00 ff 30 ff ff 00 45 00 48 46 ff 48 52 44 ff ff ff ff ff 50 ff ff 30 46 00 ff ff 00 ff ff 52 ff ff ff 00 00 ff ff ff 46 ff ff 30 ff ff ff ff ff ff 00 ff 50 00 ff 46 ff ff ff ff 50 ff 46 30 ff 00 46 ff 00 00 ff 48 ff 00 46 ff 00 00 52 44 30 ff 00 ff 00 ff 48 ff ff ff ff ff ff ff 00 ff ff ff 00 00 00 ff ff 00 ff ff 52 ff 45 00 ff ff 50 ff ff ff ff ff ff ff ff ff 00 00 00 ff ff 44 ff 00 00 00 ff ff ff ff ff 00 44 ff 00 00 00 00 ff 00 00 00 ff ff ff 00 ff ff 44 ff 30 ff a0 44 ff ff 44 ff 00 ff ff ff ff 00 ff ff ff 00 00 45 47 00 ff ff ff ff 30 00 ff ff 00 00 44 ff 48 00 ff ff ff ff ff ff 44 ff ff ff 00 ff 00 46 ff 00 ff 00 ff ff ff 46 ff ff 00 ff 30 ff ff ff 50 ff 00 ff ff ff ff 00 46 ff ff ff 50 00 30 00 ff ff ff ff 00 30 45 ff 00 30 ff 44 ff 30 00 00 ff 46 ff ff ff 00 ff 00 ff 00 46 ff 00 ff 00 ff ff ff 00 ff ff ff ff ff ff 00 00 48 ff ff 52 ff ff 00 00 00 ff ff ff ff 00 ff ff ff 00 ff 50 48 ff 00 ff ff ff ff 00 ff 00 00 00 ff ff 00 00 ff ff 46 46 ff 44 ff 00 ff ff ff ff ff 00 30 ff 52 ff 30 00 00 ff ff 00 00 00 ff 00 00 ff 00 ff 00 ff ff 00 ff ff 00 ff 50 52 30 ff ff ff 00 ff 44 ff ff ff 00 44 ff ff ff ff 44 ff ff ff ff ff 00 00 ff ff ff ff ff 46 ff ff ff ff 00 00 ff 48 ff 00 ff ff 00 ff ff ff ff 00 00 ff 00 ff 00 ff ff 46 00 00 46 ff 00 00 ff 00 00 ff 30 ff ff 00 52 ff 45 ff ff 46 ff ff 46 ff 45 ff ff 00 ff ff ff ff ff 00 ff ff ff 00 ff 30 ff 00 00 ff 50 ff 00 52 ff ff ff ff ff ff ff 30 ff ff ff ff ff ff 44 00 ff 00 ff 45 00 30 00 ff ff 00 30 ff ff ff ff ff 00 00 ff 52 ff ff ff 00 ff ff 00 00 ff 00 ff ff 44 ff 00 44 46 ff 00 ff 46 00 ff 46 ff ff ff 03 00 ff ff ff ff 30 00 ff 00 ff ff ff ff 00 ff ff ff ff 00 ff ff 00 00 ff ff 00 ff ff ff ff 30 46 ff 46 ff ff 00 ff ff 00 00 ff ff a0 ff 44 46 30 ff ff ff ff ff ff ff ff 00 44 00 00 00 ff ff 46 00 46 00 00 00 ff 30 00 00 00 ff ff 00 ff 00 00 00 ff 00 ff ff 44 ff ff ff ff ff ff 46 ff 44 ff 46 52 00 00 30 ff ff ff 52 ff 00 ff ff ff ff ff ff 00 ff ff ff 00 00 00 ff ff ff ff ff ff 00 00 ff ff
*/
