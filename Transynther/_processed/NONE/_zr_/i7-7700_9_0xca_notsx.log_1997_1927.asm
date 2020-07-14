.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14c8b, %rdi
nop
nop
nop
add $18662, %r15
mov (%rdi), %si
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x6d8b, %r9
nop
nop
nop
nop
cmp $49872, %rsi
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rdi
nop
add %r9, %r9
lea addresses_A_ht+0x204b, %rsi
lea addresses_D_ht+0x1d08b, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $108, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WT_ht+0x1158b, %r15
nop
xor $59939, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
cmp $12303, %r13
lea addresses_WC_ht+0x15c8b, %rsi
lea addresses_UC_ht+0xae4b, %rdi
nop
nop
nop
and %r13, %r13
mov $26, %rcx
rep movsb
nop
nop
nop
nop
cmp $49974, %rcx
lea addresses_UC_ht+0x1c28b, %r9
nop
nop
nop
inc %r10
movb (%r9), %cl
nop
nop
inc %rdi
lea addresses_D_ht+0x248b, %rsi
lea addresses_D_ht+0x328b, %rdi
clflush (%rsi)
nop
cmp $21886, %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x1308b, %rbx
xor %rcx, %rcx
movb $0x61, (%rbx)
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x14898, %rsi
lea addresses_UC_ht+0xe8b, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $48, %rcx
rep movsq
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x1238b, %rdi
nop
sub $39511, %r9
movb $0x61, (%rdi)
nop
inc %r10
lea addresses_normal_ht+0xbf0b, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
dec %r10
lea addresses_D_ht+0x1388b, %r13
nop
inc %rbx
movw $0x6162, (%r13)
nop
and $14337, %rbx
lea addresses_WT_ht+0x18bfd, %r15
add $57133, %rsi
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r9
xor %rsi, %rsi
lea addresses_normal_ht+0x15c8b, %rcx
clflush (%rcx)
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x368b, %rbx
xor %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
xor $40973, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x1c3ed, %r12
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r12)
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x1db3b, %r14
nop
nop
nop
nop
add $1692, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
sub $11515, %r9

// Load
mov $0xa53, %rax
nop
nop
add %r9, %r9
mov (%rax), %edi
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x88b, %rbp
inc %rdi
movl $0x51525354, (%rbp)
nop
and %rbp, %rbp

// Store
lea addresses_WC+0x117bb, %rbx
nop
nop
nop
cmp $28952, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x7c11e2000000015b, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
movb $0x51, (%rdi)
and %r14, %r14

// Store
mov $0x3cdfb90000000713, %r14
clflush (%r14)
nop
nop
nop
nop
xor $47699, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_WT+0x268b, %r9
nop
nop
nop
inc %rbx
mov (%r9), %r12w
dec %r14

// Load
lea addresses_A+0x3c8b, %rbp
nop
inc %r14
mov (%rbp), %r9
sub $8167, %r12

// Store
lea addresses_A+0x3c8b, %rax
nop
nop
xor $9724, %rbx
movb $0x51, (%rax)
and %rbp, %rbp

// Store
mov $0xc8b, %r12
sub $62302, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r12)

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
nop
nop
nop
xor $48294, %r12

// Faulty Load
lea addresses_A+0x3c8b, %r14
nop
nop
nop
nop
nop
add %rax, %rax
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 1997}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
