.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xdac2, %r14
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
sub %rbx, %rbx
lea addresses_WT_ht+0x66c2, %rsi
add $57721, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rsi)
add $29038, %rcx
lea addresses_WC_ht+0x1df66, %rdi
nop
add %r9, %r9
mov (%rdi), %dx
nop
sub $52097, %rdi
lea addresses_WC_ht+0x18492, %rdx
nop
nop
nop
nop
add $10276, %r14
mov (%rdx), %r9d
nop
add $36675, %r14
lea addresses_D_ht+0x1e4c2, %r14
nop
nop
nop
nop
sub $24699, %rsi
mov (%r14), %rdi
nop
sub $34431, %r14
lea addresses_WT_ht+0x10442, %rdx
nop
xor $26370, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x14ac2, %r9
nop
nop
nop
nop
nop
add $20512, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
nop
nop
cmp $54955, %rcx
lea addresses_D_ht+0x17ac2, %rdi
nop
nop
and $4147, %rbx
movl $0x61626364, (%rdi)
nop
nop
xor $51748, %r9
lea addresses_UC_ht+0xc2, %rsi
lea addresses_WC_ht+0x1a2c2, %rdi
inc %r8
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1de26, %rbx
and %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rbx)
cmp %rdi, %rdi
lea addresses_WT_ht+0x16c2c, %rsi
lea addresses_WT_ht+0x1512, %rdi
and %r14, %r14
mov $49, %rcx
rep movsl
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1c3c2, %r9
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
mov $0x599e6f00000002c2, %rax
nop
nop
sub $57814, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
nop
xor $52466, %rbp

// Store
mov $0x66d7100000000342, %r13
nop
xor $36121, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_A+0x12f42, %rbp
nop
sub $24895, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rbp)
nop
nop
add %r10, %r10

// Store
lea addresses_normal+0x14122, %rsi
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rsi)
nop
and $33497, %r13

// Faulty Load
lea addresses_normal+0xbac2, %rbp
add %rdx, %rdx
mov (%rbp), %r10w
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'34': 21}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
