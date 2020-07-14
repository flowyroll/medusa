.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6c40, %rsi
lea addresses_A_ht+0x4c7b, %rdi
nop
nop
cmp %r12, %r12
mov $101, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_WC_ht+0x90a3, %r12
nop
cmp %r10, %r10
movb $0x61, (%r12)
xor %rcx, %rcx
lea addresses_WC_ht+0xe98b, %rcx
nop
nop
dec %rbx
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
and $7264, %rcx
lea addresses_normal_ht+0x164a3, %rsi
nop
nop
nop
nop
inc %r10
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1cb23, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x188a3, %rcx
nop
nop
nop
nop
add $26118, %r12
movw $0x6162, (%rcx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x13ac3, %rsi
clflush (%rsi)
nop
nop
nop
and %rbx, %rbx
movw $0x6162, (%rsi)
add $52512, %rbx
lea addresses_UC_ht+0xb4a3, %rsi
lea addresses_WT_ht+0x14863, %rdi
inc %r8
mov $13, %rcx
rep movsl
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1e7b5, %rsi
lea addresses_normal_ht+0xcca3, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $59, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1c305, %r13
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%r13), %ecx
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xbe13, %rsi
lea addresses_A_ht+0x10123, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $41672, %r10
lea addresses_D_ht+0x1bbc3, %rsi
lea addresses_WC_ht+0x1a9a3, %rdi
nop
nop
sub %r10, %r10
mov $5, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1b93, %r10
clflush (%r10)
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Faulty Load
lea addresses_A+0x8a3, %rax
nop
nop
nop
sub $15669, %rbp
vmovaps (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'26': 1, '00': 3332, '49': 1699, 'cf': 1, '48': 15704, '44': 1092}
48 48 00 48 48 00 48 48 00 48 48 00 48 48 44 48 48 00 48 00 48 49 48 48 48 48 48 49 00 48 48 00 48 49 48 48 48 00 48 48 48 48 00 48 49 48 48 00 48 48 48 48 49 48 48 00 48 48 48 48 44 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 44 48 48 00 48 48 48 48 48 48 48 49 00 48 49 00 48 48 00 48 48 44 48 48 49 00 48 48 00 48 49 00 48 48 44 48 48 49 48 48 48 48 48 48 48 48 00 48 48 44 48 48 49 48 48 00 48 48 44 48 48 00 48 48 49 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 49 00 48 48 00 48 48 48 48 48 48 48 48 48 44 48 48 48 48 44 48 48 48 48 44 48 48 00 48 48 48 48 48 00 48 49 00 48 49 48 48 49 48 48 48 48 48 44 48 48 48 48 49 48 48 00 48 49 48 48 00 48 48 48 48 48 00 00 48 44 48 48 49 00 48 00 48 48 48 00 48 48 00 48 48 44 48 48 44 48 48 44 48 48 48 48 44 48 48 48 48 48 49 00 48 49 48 48 44 48 48 00 48 48 49 48 48 00 48 44 48 48 48 48 49 48 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 44 48 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 49 48 48 48 00 48 48 48 48 48 00 48 48 44 00 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 00 00 48 48 49 48 48 49 48 48 44 48 48 48 48 48 48 48 48 00 48 48 48 48 48 44 48 48 00 48 48 48 48 48 48 49 48 48 48 48 48 48 00 48 48 48 48 48 48 48 49 48 48 49 48 48 48 48 48 48 48 48 00 48 49 48 48 48 48 48 48 49 48 48 49 00 48 48 00 48 48 00 48 48 48 48 49 00 48 48 48 48 48 48 48 00 48 49 00 48 44 48 48 48 48 48 00 48 48 48 48 48 49 48 48 49 48 48 48 48 00 48 00 48 48 49 48 48 49 00 48 00 49 44 48 48 48 48 49 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 49 00 48 48 00 48 00 48 48 49 00 48 49 00 48 49 48 48 49 48 48 48 48 49 48 48 00 48 48 00 00 48 48 48 48 44 48 48 48 00 48 48 44 48 48 00 48 00 48 48 00 48 00 00 48 49 48 48 49 48 48 00 48 49 48 48 48 48 48 00 48 49 48 48 48 48 44 00 48 00 48 48 48 48 00 48 48 48 48 48 44 48 49 48 48 49 48 48 48 48 48 00 48 48 44 48 48 00 48 44 48 48 00 48 49 48 48 44 48 48 44 48 48 48 48 48 48 48 49 48 48 48 48 48 48 44 48 48 44 00 48 48 00 48 00 48 48 44 00 48 48 48 48 48 48 48 48 44 48 48 48 00 48 00 48 48 48 00 48 48 00 48 48 00 48 48 49 00 48 44 48 48 48 48 48 00 48 48 48 48 48 48 48 49 48 48 49 00 48 00 48 48 48 48 48 00 48 48 00 00 48 49 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 44 48 49 48 48 49 48 48 49 48 48 49 00 48 48 00 48 48 49 48 48 48 00 48 48 00 48 48 44 48 48 44 48 48 49 48 48 48 00 48 49 48 48 49 48 48 48 48 49 00 48 48 48 48 44 48 48 49 48 48 00 48 48 49 00 48 48 48 48 00 48 48 44 48 48 44 48 48 00 48 48 49 00 48 49 00 48 48 48 00 48 48 48 00 48 48 00 48 48 49 48 48 00 00 48 48 48 48 48 44 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 49 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 49 48 48 44 48 48 48 48 48 44 48 48 44 00 48 48 00 48 48 00 48 48 48 48 48 44 48 48 00 48 48 44 48 48 48 00 48 48 48 48 00 48 48 49 48 48 00 48 48 44 48 48 44 48 48 49 48 48 48 48 48 00 48 48 00 48 48 48 48
*/
