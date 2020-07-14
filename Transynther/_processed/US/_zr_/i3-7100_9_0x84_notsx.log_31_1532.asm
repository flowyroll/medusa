.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x14db, %r10
xor $57631, %r14
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1c68b, %r14
nop
nop
nop
nop
nop
xor $17033, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $21774, %r15
lea addresses_UC_ht+0x1812b, %r15
nop
nop
nop
and $58835, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1ea9f, %r14
nop
nop
add %r8, %r8
mov (%r14), %r15w
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x15921, %rsi
lea addresses_UC_ht+0x6bc9, %rdi
nop
sub $1203, %rdx
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x56d8, %rdi
nop
nop
nop
nop
nop
inc %rcx
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x64db, %rdi
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rdi)
nop
nop
xor $24889, %rsi
lea addresses_A_ht+0x979b, %rsi
lea addresses_D_ht+0x125eb, %rdi
clflush (%rsi)
nop
nop
add $42772, %rdx
mov $7, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x197af, %r15
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %ebx
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1cbdb, %rdi
nop
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x10e93, %r8
and %rsi, %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WT+0x615b, %rdi
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_US+0x18adb, %rsi
and %r15, %r15
mov (%rsi), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 31}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
