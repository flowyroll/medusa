.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf8b1, %rsi
lea addresses_WT_ht+0x13a81, %rdi
nop
nop
nop
and %r12, %r12
mov $23, %rcx
rep movsw
dec %rdi
lea addresses_UC_ht+0x98c5, %r8
clflush (%r8)
nop
nop
nop
nop
sub $6078, %rdi
movw $0x6162, (%r8)
nop
xor $42699, %r12
lea addresses_normal_ht+0xd4c5, %rcx
nop
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
and $60772, %r12
lea addresses_WT_ht+0x39c5, %r14
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xadc5, %rsi
lea addresses_UC_ht+0xf1c5, %rdi
nop
nop
nop
dec %r8
mov $108, %rcx
rep movsb
nop
nop
nop
add $26956, %rcx
lea addresses_A_ht+0x4e45, %rcx
nop
and %rax, %rax
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm5
vpextrq $1, %xmm5, %r12
and %r12, %r12
lea addresses_D_ht+0x2633, %rsi
lea addresses_WT_ht+0x109c5, %rdi
nop
nop
xor %rax, %rax
mov $126, %rcx
rep movsq
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x16dc5, %rsi
lea addresses_WC_ht+0x2a6d, %rdi
dec %r10
mov $111, %rcx
rep movsl
nop
nop
cmp $47918, %r8
lea addresses_WC_ht+0x36c5, %r14
nop
nop
nop
nop
inc %r12
mov (%r14), %r8w
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x17ac5, %rsi
lea addresses_A_ht+0x1ed7d, %rdi
nop
nop
and %rax, %rax
mov $4, %rcx
rep movsl
and $57172, %r14
lea addresses_WC_ht+0x49c5, %rdi
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r14w
nop
cmp $52014, %rax
lea addresses_D_ht+0x8215, %rsi
lea addresses_UC_ht+0x5e9d, %rdi
nop
nop
nop
nop
mfence
mov $101, %rcx
rep movsq
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x1b9c5, %rdx
nop
xor $38768, %rbp
movb (%rdx), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'00': 5}
00 00 00 00 00
*/
