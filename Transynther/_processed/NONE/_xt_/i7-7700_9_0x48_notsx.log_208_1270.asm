.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa3d0, %rdx
xor $37809, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x142f4, %r8
add %r10, %r10
movb $0x61, (%r8)
nop
nop
nop
nop
nop
sub $17392, %r12
lea addresses_WT_ht+0x1628, %rbp
nop
add $14463, %rax
mov (%rbp), %r10d
nop
nop
nop
and $56707, %rdx
lea addresses_WT_ht+0x17db4, %rsi
lea addresses_A_ht+0x12be4, %rdi
nop
nop
nop
inc %r14
mov $111, %rcx
rep movsw
nop
dec %r14
lea addresses_WT_ht+0xbaf4, %rsi
lea addresses_WC_ht+0xd4b4, %rdi
nop
nop
nop
dec %r14
mov $96, %rcx
rep movsb
xor $14879, %rax
lea addresses_normal_ht+0xd31c, %rsi
lea addresses_normal_ht+0x1d5d4, %rdi
nop
nop
nop
add $59904, %rax
mov $8, %rcx
rep movsq
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x122f4, %rdi
nop
nop
nop
nop
and %rax, %rax
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
xor $43312, %r12
lea addresses_A_ht+0x9ef4, %rdi
nop
nop
nop
xor $48494, %r12
movw $0x6162, (%rdi)
nop
nop
nop
cmp $20766, %r14
lea addresses_WT_ht+0x1def4, %rsi
lea addresses_UC_ht+0x2638, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $57892, %rcx
lea addresses_UC_ht+0x10ef4, %rdi
nop
and $33744, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xa121, %r12
nop
nop
dec %r10
movl $0x61626364, (%r12)
nop
nop
sub %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rsi

// Store
lea addresses_normal+0x1eef4, %rsi
nop
nop
and %r13, %r13
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
xor $36396, %r8

// Load
lea addresses_WT+0x1caf4, %r11
nop
nop
nop
nop
add $15251, %r10
movb (%r11), %r8b
nop
nop
add $37703, %r13

// Store
mov $0x72451300000008bc, %r8
nop
nop
nop
nop
nop
sub $64052, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
and $60802, %r11

// Faulty Load
lea addresses_WT+0x1caf4, %r11
nop
nop
nop
add %r12, %r12
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'39': 208}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
