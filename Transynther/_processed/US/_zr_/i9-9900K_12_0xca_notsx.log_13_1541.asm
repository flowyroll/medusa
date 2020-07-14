.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x87a5, %r10
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x83fd, %rsi
lea addresses_WT_ht+0x1f0f, %rdi
clflush (%rdi)
nop
nop
nop
xor $19078, %r14
mov $91, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1aaed, %rcx
nop
nop
nop
cmp $22357, %r9
movb (%rcx), %r14b
dec %r10
lea addresses_normal_ht+0x157e9, %rbp
nop
add %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
xor $29987, %rsi
lea addresses_D_ht+0x1de37, %rsi
lea addresses_WT_ht+0x3185, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor $48780, %r10
mov $12, %rcx
rep movsl
nop
nop
nop
and $55944, %rcx
lea addresses_D_ht+0x189d5, %rsi
lea addresses_D_ht+0x1287d, %rdi
add %r9, %r9
mov $95, %rcx
rep movsq
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x8f5, %rsi
lea addresses_UC_ht+0x16a5, %rdi
nop
nop
nop
and $27671, %r14
mov $63, %rcx
rep movsl
nop
nop
nop
sub $4056, %rsi
lea addresses_normal_ht+0x10f0d, %r10
nop
add $60528, %rsi
movl $0x61626364, (%r10)
xor $22161, %rbp
lea addresses_WT_ht+0xfba5, %rcx
nop
nop
inc %rdi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r9
nop
xor %r14, %r14
lea addresses_WC_ht+0x10cfd, %rbp
nop
nop
nop
nop
xor %r12, %r12
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
inc %r12
lea addresses_normal_ht+0x156b5, %rsi
lea addresses_UC_ht+0x142a5, %rdi
clflush (%rdi)
nop
nop
nop
dec %r14
mov $22, %rcx
rep movsw
nop
cmp %r9, %r9
lea addresses_WC_ht+0xeea5, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rdi)
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x86a5, %rax
nop
nop
dec %rdx
mov (%rax), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
