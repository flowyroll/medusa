.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xfeec, %r13
nop
nop
nop
nop
xor $49662, %rdx
mov (%r13), %r12
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x19dc, %rsi
lea addresses_D_ht+0x434c, %rdi
nop
nop
add $52523, %rax
mov $48, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1c04c, %rsi
lea addresses_WT_ht+0x16c80, %rdi
nop
add %r13, %r13
mov $122, %rcx
rep movsb
add %r12, %r12
lea addresses_D_ht+0x258c, %r13
nop
dec %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1bd74, %rsi
lea addresses_D_ht+0xa10c, %rdi
nop
nop
cmp $3494, %r15
mov $103, %rcx
rep movsl
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x1e0ec, %rcx
cmp %rdx, %rdx
movb $0x61, (%rcx)
nop
and %rcx, %rcx
lea addresses_A_ht+0x16063, %r15
clflush (%r15)
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0xf96c, %rdi
nop
nop
nop
nop
nop
sub $16591, %rcx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x129b6, %rsi
lea addresses_WC_ht+0x1e7ec, %rdi
clflush (%rdi)
nop
cmp $42733, %r15
mov $23, %rcx
rep movsq
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0xa2a8, %rcx
nop
nop
nop
nop
dec %rax
mov (%rcx), %r12d
nop
cmp $40106, %rax
lea addresses_UC_ht+0x1e54a, %rsi
nop
nop
nop
nop
nop
xor $53463, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rsi
movntdq %xmm3, (%rsi)
nop
nop
nop
nop
sub $36248, %rdx
lea addresses_normal_ht+0x1ddec, %rsi
cmp %r15, %r15
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
sub $60637, %r13
lea addresses_A_ht+0x17696, %rsi
lea addresses_A_ht+0x1b3ec, %rdi
nop
nop
inc %r15
mov $21, %rcx
rep movsl
and %r15, %r15
lea addresses_WC_ht+0x1d6ec, %r12
nop
nop
sub $60861, %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_PSE+0xb76c, %r9
nop
xor %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
and $1476, %r8

// Store
lea addresses_A+0x174ec, %r10
xor $16522, %r15
movw $0x5152, (%r10)
nop
add $38513, %r9

// Store
lea addresses_PSE+0x10c10, %r10
nop
nop
cmp $43926, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r10)
nop
nop
xor $48049, %r10

// Store
lea addresses_normal+0x1674c, %rbp
nop
nop
cmp $59772, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbp)
dec %r9

// Store
lea addresses_normal+0x116ec, %r8
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r8)
dec %r12

// Faulty Load
lea addresses_RW+0x124ec, %r10
nop
nop
nop
nop
add $39735, %rbp
vmovaps (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'60': 835, '0e': 1, '44': 1, '02': 1049, '46': 7732, '00': 12208, 'bd': 1, '06': 1, 'd9': 1}
00 00 00 00 00 46 46 00 00 00 46 46 46 00 00 00 00 00 02 46 00 02 00 00 00 00 00 46 00 46 00 46 46 46 46 46 46 60 46 46 00 00 00 00 46 00 00 46 00 00 00 46 46 46 02 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 46 00 46 00 00 46 46 60 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 00 60 46 00 00 00 00 00 46 46 60 00 00 00 46 00 46 46 46 00 46 46 02 00 02 46 46 00 46 00 60 46 46 00 00 02 00 46 46 00 00 00 00 00 00 02 00 02 00 00 00 00 46 00 46 00 60 00 00 60 00 46 00 00 46 00 46 00 00 00 46 46 02 46 46 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 46 46 46 00 46 00 02 00 00 46 00 02 00 00 46 46 46 46 46 00 46 46 60 00 02 00 46 00 00 00 46 00 00 00 46 00 46 00 00 00 00 46 02 46 00 00 00 46 00 00 00 00 00 00 00 46 00 02 00 00 46 00 00 46 46 46 00 00 46 46 00 46 46 00 46 00 00 00 00 46 02 00 00 00 46 00 00 46 00 00 00 46 46 00 46 46 60 46 00 46 46 46 02 46 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 00 00 46 00 46 00 46 46 00 02 00 46 46 46 00 46 00 00 00 00 00 46 02 46 46 46 00 00 00 00 46 60 00 00 00 60 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 46 46 00 00 00 46 46 00 60 46 00 00 00 00 46 02 00 00 46 46 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 46 46 00 00 46 46 46 46 46 00 00 00 46 46 46 00 46 00 00 46 46 00 00 46 02 00 46 02 00 60 46 00 00 00 02 00 00 00 00 00 00 00 00 00 60 46 60 46 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 00 60 46 00 00 00 60 00 00 46 00 00 00 00 00 46 00 46 46 46 00 46 46 46 46 02 00 46 60 46 60 00 00 46 00 00 00 00 00 46 46 46 46 46 60 00 00 46 46 00 00 46 00 46 00 46 46 00 00 46 00 00 00 00 46 00 00 00 60 00 00 00 00 00 00 02 60 46 00 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 46 02 00 00 00 46 00 00 00 46 46 46 00 46 46 46 46 00 00 00 46 00 46 46 46 46 00 60 46 00 46 00 46 46 00 46 00 46 00 00 46 00 46 46 46 02 00 60 46 46 46 46 00 46 00 00 00 46 00 02 00 00 46 60 00 00 00 00 00 00 46 02 00 00 46 46 46 46 00 00 46 46 46 00 02 00 46 00 00 00 00 46 00 00 02 00 02 00 46 46 00 00 00 00 00 46 00 00 00 00 46 60 46 00 00 00 46 00 00 00 00 00 00 46 02 00 46 02 46 00 00 60 00 60 46 00 46 46 46 46 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 60 46 46 00 46 00 02 00 00 00 00 46 00 00 00 02 00 60 46 00 00 00 00 46 00 00 00 60 00 46 00 46 00 00 00 46 46 00 46 00 00 46 46 46 00 00 60 46 00 00 00 00 46 00 00 46 00 00 46 46 60 00 46 46 60 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 46 02 00 00 46 00 00 00 46 46 00 00 00 00 00 46 46 02 00 00 00 00 46 46 00 00 46 00 60 46 00 00 00 00 46 46 00 60 00 00 00 60 00 00 00 46 46 46 46 46 46 00 00 00 00 46 46 02 46 46 60 00 00 00 46 46 60 46 60 46 46 02 46 46 46 02 00 02 46 00 00 00 46 46 46 00 46 00 46 00 02 46 46 46 46 60 00 00 46 60 00 46 02 00 00 00 00 60 00 46 46 00 00 00 00 46 60 00 00 00 00 00 46 46 46 00 46 02 46 46 00 00 46 02 00 60 00 00 00 00 02 46 46 00 46 00 46 00 46 00 00 00 46 46 46 46 46 02 00 00 00
*/
