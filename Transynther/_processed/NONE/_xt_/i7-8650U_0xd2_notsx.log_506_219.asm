.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1bcb9, %rsi
lea addresses_WT_ht+0x173b9, %rdi
nop
nop
nop
and %rbp, %rbp
mov $19, %rcx
rep movsq
nop
nop
xor $35735, %rsi
lea addresses_UC_ht+0xa0f9, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
sub $49480, %rsi
lea addresses_UC_ht+0x10639, %r8
nop
nop
nop
xor %r15, %r15
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rsi
add $40362, %rsi
lea addresses_normal_ht+0x11fb9, %rbp
nop
nop
nop
nop
add $27171, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rbp)
and $64914, %r8
lea addresses_WC_ht+0x5eb9, %rsi
lea addresses_D_ht+0xe1b9, %rdi
nop
nop
nop
and %r9, %r9
mov $102, %rcx
rep movsq
nop
nop
nop
xor $8455, %rsi
lea addresses_WT_ht+0x3db9, %r14
nop
nop
nop
add $28705, %rcx
mov (%r14), %r8d
nop
nop
nop
nop
cmp $50749, %r9
lea addresses_normal_ht+0x1ef82, %rsi
lea addresses_WT_ht+0x173db, %rdi
nop
nop
nop
nop
nop
xor $25011, %r15
mov $117, %rcx
rep movsl
and $51772, %r9
lea addresses_WT_ht+0x59e9, %rdi
nop
nop
nop
sub $1597, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1ac59, %rsi
lea addresses_normal_ht+0x12bb9, %rdi
nop
nop
nop
sub %r14, %r14
mov $53, %rcx
rep movsq
nop
nop
nop
nop
sub $24565, %r9
lea addresses_A_ht+0x3fb9, %r14
nop
nop
xor %rsi, %rsi
mov (%r14), %rdi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x14f31, %rsi
nop
nop
inc %rbp
mov (%rsi), %r15d
dec %r15
lea addresses_WT_ht+0x5e29, %r14
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r14)
nop
nop
inc %rbp
lea addresses_WC_ht+0x9bb9, %rsi
lea addresses_WC_ht+0x51b9, %rdi
nop
nop
nop
nop
nop
and $13335, %r9
mov $46, %rcx
rep movsb
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x15db9, %rsi
lea addresses_normal+0x92b9, %rdi
clflush (%rsi)
xor $12877, %r14
mov $126, %rcx
rep movsl
nop
nop
nop
dec %rdx

// Store
lea addresses_WC+0xbeb9, %r14
nop
inc %rbx
movl $0x51525354, (%r14)
nop
nop
dec %r12

// Faulty Load
lea addresses_WC+0x15db9, %rcx
nop
nop
and $64552, %rbx
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'38': 506}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
