.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4fe8, %rbx
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x3bf9, %r12
clflush (%r12)
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
mfence
lea addresses_UC_ht+0x3a32, %rsi
lea addresses_WT_ht+0x8540, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $110, %rcx
rep movsb
and %rsi, %rsi
lea addresses_UC_ht+0xeb6f, %rbx
sub %rsi, %rsi
movb (%rbx), %r15b
nop
add $64701, %rbx
lea addresses_normal_ht+0x18dea, %rsi
nop
nop
nop
sub $49282, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0xf077, %rsi
nop
nop
nop
sub $31079, %r10
movb (%rsi), %dl
nop
nop
nop
nop
nop
add $6263, %rcx
lea addresses_D_ht+0x1a008, %r10
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%r10)
nop
nop
lfence
lea addresses_UC_ht+0x1b288, %rsi
lea addresses_WT_ht+0x17539, %rdi
sub $46090, %r12
mov $13, %rcx
rep movsl
nop
nop
sub $44057, %rdi
lea addresses_A_ht+0x15ee0, %rsi
lea addresses_UC_ht+0xa648, %rdi
nop
nop
nop
and $22990, %rdx
mov $72, %rcx
rep movsq
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x1bfb8, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r15), %r10w
nop
sub $62870, %r15
lea addresses_normal_ht+0x11788, %rsi
lea addresses_normal_ht+0x10288, %rdi
clflush (%rsi)
add $49030, %r15
mov $99, %rcx
rep movsw
nop
nop
add $50444, %rbx
lea addresses_D_ht+0xa288, %rsi
lea addresses_D_ht+0x17d50, %rdi
clflush (%rsi)
nop
nop
nop
xor %r15, %r15
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
add $37172, %rdx
lea addresses_UC_ht+0xd4a8, %rsi
cmp %rdx, %rdx
mov (%rsi), %di
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x8948, %rbx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
mov $0x796f6f0000000a00, %rax
nop
xor %r8, %r8
movb $0x51, (%rax)
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_A+0x18a88, %r15
nop
dec %r14
mov (%r15), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'00': 500}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
