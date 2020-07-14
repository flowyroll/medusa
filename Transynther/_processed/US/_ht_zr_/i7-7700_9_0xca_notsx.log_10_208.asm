.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x994c, %rsi
lea addresses_D_ht+0xeb3c, %rdi
nop
nop
nop
nop
nop
cmp $15934, %r14
mov $96, %rcx
rep movsw
nop
nop
nop
nop
cmp $52916, %r9
lea addresses_WC_ht+0xe8b0, %r10
nop
nop
nop
nop
mfence
movb $0x61, (%r10)
nop
nop
nop
and $36454, %r14
lea addresses_normal_ht+0x713c, %r14
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
add $8105, %rax
lea addresses_UC_ht+0xb3c, %rdi
nop
nop
nop
nop
add $33763, %r14
mov (%rdi), %rax
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x12704, %rsi
nop
nop
nop
and %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0xd08c, %rsi
lea addresses_WC_ht+0x448c, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $114, %rcx
rep movsw
nop
inc %rcx
lea addresses_WC_ht+0x10d3c, %rsi
nop
cmp %r14, %r14
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x140bc, %rsi
lea addresses_WT_ht+0x1567c, %rdi
clflush (%rdi)
nop
nop
nop
xor $28392, %r14
mov $121, %rcx
rep movsb
nop
cmp $34324, %r10
lea addresses_WT_ht+0xd53c, %r10
cmp $11150, %rcx
movw $0x6162, (%r10)
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1bb1c, %rsi
lea addresses_normal_ht+0x64c4, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $111, %rcx
rep movsw
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x693c, %rsi
lea addresses_UC_ht+0xa914, %rdi
nop
nop
nop
nop
inc %rax
mov $110, %rcx
rep movsq
nop
nop
nop
cmp $9282, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
mov $0x50fef1000000033c, %r8
nop
nop
nop
sub $15392, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%r8)
nop
nop
nop
nop
nop
xor $45162, %rsi

// Store
lea addresses_US+0x17f50, %r8
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r8)
sub $63718, %r10

// Faulty Load
lea addresses_US+0x17b3c, %r12
nop
nop
dec %rsi
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 6, '49': 1, '48': 2, '46': 1}
00 00 48 46 00 00 49 48 00 00
*/
