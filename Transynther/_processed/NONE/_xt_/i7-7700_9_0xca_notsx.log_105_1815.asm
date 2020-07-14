.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15504, %r9
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r9)
cmp $32201, %rdi
lea addresses_D_ht+0x19504, %rsi
lea addresses_normal_ht+0x15704, %rdi
nop
nop
nop
add %rbx, %rbx
mov $0, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xfe04, %rsi
lea addresses_D_ht+0x6f04, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0xa104, %r9
nop
nop
nop
inc %r14
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x84, %r9
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
nop
nop
nop
xor $28320, %r14
lea addresses_A_ht+0x1b396, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $15946, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r9)
xor $43253, %rcx
lea addresses_A_ht+0x4d04, %r14
nop
add $36154, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
sub $3395, %rdi
lea addresses_WT_ht+0xfb18, %rsi
clflush (%rsi)
nop
nop
sub $29713, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x9748, %rcx
nop
nop
nop
nop
cmp $59530, %rsi
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x3504, %rsi
lea addresses_WT_ht+0x12d04, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $33, %rcx
rep movsq
sub $13996, %rcx
lea addresses_normal_ht+0xfb9f, %rdi
nop
nop
nop
and %r12, %r12
movw $0x6162, (%rdi)
nop
nop
cmp $55978, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x5a13790000000f04, %rsi
nop
nop
add $6127, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
xor $17936, %rdi

// Store
lea addresses_PSE+0xed04, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WT+0x13504, %r10
nop
nop
xor $5263, %r14
movb (%r10), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'39': 105}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
