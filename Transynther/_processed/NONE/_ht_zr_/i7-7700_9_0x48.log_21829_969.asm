.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x578, %r9
nop
nop
nop
xor %rbp, %rbp
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
and $28193, %r15
lea addresses_A_ht+0x39e0, %r8
add $51978, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x6b38, %r9
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
xor $26347, %r12
lea addresses_UC_ht+0x15178, %rcx
nop
nop
nop
nop
nop
xor $47506, %r12
mov (%rcx), %r8d
nop
nop
nop
nop
nop
cmp $26120, %r9
lea addresses_WT_ht+0x1aa78, %rsi
lea addresses_WT_ht+0x4978, %rdi
nop
nop
dec %r12
mov $96, %rcx
rep movsq
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x3e78, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
movb (%rdi), %r9b
nop
nop
inc %r14
lea addresses_WC_ht+0x17578, %r9
nop
sub $22542, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x5d78, %rcx
nop
nop
nop
dec %r14
movl $0x61626364, (%rcx)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x14978, %r15
nop
nop
nop
nop
nop
and $64176, %rbp
movb (%r15), %r12b
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xb78, %r12
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r12)
add $64587, %r15
lea addresses_UC_ht+0x12278, %r14
nop
nop
nop
nop
xor $57193, %r8
mov (%r14), %ebp
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x2938, %r9
clflush (%r9)
nop
nop
nop
sub $41631, %r15
mov (%r9), %rsi
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x10d78, %r15
dec %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r15)
nop
nop
xor $25995, %r12
lea addresses_WT_ht+0x14e78, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r12
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x15d78, %rsi
lea addresses_D_ht+0xa03c, %rdi
nop
nop
nop
nop
dec %r12
mov $124, %rcx
rep movsq
nop
nop
dec %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbx

// Faulty Load
lea addresses_WC+0x11578, %r10
nop
nop
nop
nop
nop
and $32686, %r14
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'49': 19290, '45': 2003, '00': 536}
49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 00 45 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 45 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 45 45 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 00 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 49 49 45 00 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 45 49 45 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 00 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 45 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 00 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 00 49 49 45 49 49 49 49 49 49 45 49 49 45 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49
*/
