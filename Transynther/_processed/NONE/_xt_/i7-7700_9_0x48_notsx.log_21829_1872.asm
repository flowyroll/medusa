.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16b40, %r8
nop
nop
nop
cmp %rax, %rax
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r9
lfence
lea addresses_D_ht+0xadcc, %rsi
lea addresses_A_ht+0x18a4c, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $27, %rcx
rep movsq
nop
xor $42404, %rdi
lea addresses_D_ht+0x13f46, %rcx
nop
nop
nop
and $52808, %rdx
mov (%rcx), %esi
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1cf4, %rax
nop
nop
nop
nop
and %rdx, %rdx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
add %rax, %rax
lea addresses_A_ht+0x12ecc, %rdi
nop
nop
sub %r8, %r8
mov (%rdi), %ecx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x2d4c, %r9
nop
nop
nop
nop
nop
sub $8979, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x64fa, %rcx
and %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
xor $40919, %rdx
lea addresses_WT_ht+0x1b3ac, %rsi
lea addresses_UC_ht+0x13dcc, %rdi
nop
nop
nop
add %rbx, %rbx
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x684c, %rsi
nop
nop
nop
nop
nop
add $5805, %r9
movw $0x6162, (%rsi)
nop
inc %r9
lea addresses_A_ht+0x6acc, %rcx
clflush (%rcx)
xor %r8, %r8
movl $0x61626364, (%rcx)
and %rdx, %rdx
lea addresses_normal_ht+0xa778, %rsi
lea addresses_WT_ht+0x1294c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $11247, %r8
mov $64, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_A_ht+0x5dcc, %rsi
lea addresses_normal_ht+0xfc5c, %rdi
dec %rdx
mov $32, %rcx
rep movsq
add %rdi, %rdi
lea addresses_WC_ht+0x244c, %rsi
lea addresses_WC_ht+0x81cc, %rdi
nop
nop
nop
add $40473, %rdx
mov $51, %rcx
rep movsl
nop
nop
cmp $56903, %rbx
lea addresses_normal_ht+0xbbea, %rbx
and $48610, %r8
mov (%rbx), %rdx
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x89cc, %rsi
lea addresses_WT_ht+0xc1cc, %rdi
nop
nop
nop
nop
inc %r9
mov $121, %rcx
rep movsl
cmp %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbx
push %rcx

// Faulty Load
lea addresses_UC+0x3dcc, %r13
nop
nop
nop
inc %r10
mov (%r13), %cx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
