.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8fd, %rdi
nop
nop
nop
nop
nop
xor $1410, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
sub $23732, %r9
lea addresses_WC_ht+0x7b36, %rsi
lea addresses_WT_ht+0x72f5, %rdi
nop
and $60760, %r14
mov $113, %rcx
rep movsw
nop
nop
lfence
lea addresses_D_ht+0x14e35, %rsi
lea addresses_WT_ht+0x129b5, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $31, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_normal_ht+0xab5, %rsi
lea addresses_UC_ht+0x1d1b5, %rdi
clflush (%rdi)
nop
nop
nop
inc %rdx
mov $113, %rcx
rep movsb
nop
nop
nop
nop
and $50193, %rdx
lea addresses_D_ht+0xea81, %rsi
nop
nop
sub %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xc0f5, %r10
nop
nop
and %rdx, %rdx
mov (%r10), %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1c115, %rdi
nop
inc %rcx
movw $0x6162, (%rdi)
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xe1f5, %rsi
nop
nop
add $32568, %r9
movw $0x6162, (%rsi)
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x11a91, %rdi
clflush (%rdi)
nop
nop
add $29161, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdi)
nop
inc %r14
lea addresses_A_ht+0xe1b5, %rsi
lea addresses_D_ht+0x19e0d, %rdi
nop
nop
nop
xor $19565, %rbx
mov $18, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_A_ht+0x34b5, %rbx
nop
xor $2248, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x6db5, %rsi
lea addresses_normal_ht+0x1d5b5, %rdi
nop
sub $16809, %rdx
mov $115, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_UC_ht+0xe88d, %rdi
clflush (%rdi)
nop
xor %rsi, %rsi
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x195b5, %rsi
lea addresses_WC_ht+0x2829, %rdi
nop
dec %rdx
mov $107, %rcx
rep movsb
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x25b5, %rsi
nop
nop
nop
cmp $9002, %rbx
movb (%rsi), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
