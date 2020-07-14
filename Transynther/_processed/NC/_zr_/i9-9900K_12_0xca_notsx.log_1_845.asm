.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7613, %rbx
nop
nop
nop
nop
xor $5191, %rax
movb (%rbx), %r10b
inc %rbx
lea addresses_A_ht+0xf713, %r8
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r8)
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1e9b3, %rdx
xor %r15, %r15
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0xff54, %rsi
lea addresses_A_ht+0x14b53, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $126, %rcx
rep movsq
nop
nop
nop
nop
cmp $63191, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x238f, %rsi
lea addresses_WT+0x18f79, %rdi
dec %r9
mov $126, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
mov $0x613, %rsi
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovntdq %ymm7, (%rsi)
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
mov $0x18a0620000000613, %r9
clflush (%r9)
nop
nop
nop
cmp $57149, %rsi
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
