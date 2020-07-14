.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a7b1, %r13
nop
cmp %r12, %r12
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x9c91, %rsi
lea addresses_D_ht+0x9cf1, %rdi
nop
and $35869, %r13
mov $127, %rcx
rep movsb
nop
xor $54727, %rdi
lea addresses_D_ht+0x69b1, %rdi
nop
and $16678, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x29c1, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $31889, %r15
movl $0x61626364, (%rcx)
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x71b1, %r15
nop
nop
add %rcx, %rcx
movb (%r15), %r13b
nop
nop
nop
nop
sub $50393, %rsi
lea addresses_UC_ht+0x8fb1, %r12
nop
nop
nop
nop
nop
add $22283, %rcx
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x14fe3, %r15
nop
and %r12, %r12
movl $0x61626364, (%r15)
nop
and $8606, %r13
lea addresses_UC_ht+0x1136c, %rdi
nop
add $23379, %r15
mov (%rdi), %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xfb1, %rsi
lea addresses_WT_ht+0x12131, %rdi
nop
nop
cmp %r15, %r15
mov $10, %rcx
rep movsl
sub %r13, %r13
lea addresses_UC_ht+0x25b1, %rsi
lea addresses_normal_ht+0x6591, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $27694, %r15
mov $22, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x2bb1, %rsi
lea addresses_A_ht+0x599d, %rdi
cmp %rbx, %rbx
mov $22, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xc3b1, %r15
and $44101, %rsi
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
xor $17317, %rcx
lea addresses_D_ht+0x29b1, %rcx
nop
nop
nop
nop
and $35454, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x13b1, %rsi
lea addresses_normal+0xf7b1, %rdi
nop
nop
cmp $27286, %r10
mov $47, %rcx
rep movsb
nop
dec %r8

// Faulty Load
lea addresses_US+0xf7b1, %rax
and $50783, %rsi
movb (%rax), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'28': 1, '92': 1, '02': 1}
02 92 28
*/
