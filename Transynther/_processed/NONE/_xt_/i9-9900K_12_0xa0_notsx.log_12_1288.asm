.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16378, %rcx
nop
lfence
movb (%rcx), %r10b
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x14578, %rsi
lea addresses_A_ht+0x378, %rdi
clflush (%rdi)
nop
nop
cmp %r12, %r12
mov $95, %rcx
rep movsq
nop
sub $52423, %r12
lea addresses_UC_ht+0x3d78, %rsi
lea addresses_UC_ht+0x1ae96, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $56675, %r9
mov $95, %rcx
rep movsw
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x1332, %rdi
nop
cmp %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
cmp $6640, %r12
lea addresses_UC_ht+0xfd38, %rdi
cmp $11861, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x110b8, %r9
inc %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
sub $41014, %r10
lea addresses_UC_ht+0xa968, %r10
clflush (%r10)
nop
nop
nop
cmp $43273, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
sub $34840, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x2678, %r13
nop
and %r10, %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
xor $64, %r13

// REPMOV
lea addresses_A+0x1f578, %rsi
lea addresses_A+0x1f178, %rdi
nop
nop
nop
cmp %r13, %r13
mov $13, %rcx
rep movsw
nop
nop
nop
nop
xor %r9, %r9

// Store
mov $0xb921b0000000598, %rdx
nop
nop
nop
nop
nop
add $61042, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
sub $8086, %r10

// Store
lea addresses_RW+0x10718, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_WT+0x1c978, %r9
nop
nop
nop
nop
nop
and $29653, %rdi
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'39': 12}
39 39 39 39 39 39 39 39 39 39 39 39
*/
