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
lea addresses_D_ht+0x15e2c, %rsi
lea addresses_D_ht+0x17559, %rdi
nop
nop
sub %rbx, %rbx
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x12959, %rdi
nop
nop
sub $58986, %rcx
mov (%rdi), %r9d
nop
nop
nop
xor $25882, %rbx
lea addresses_WT_ht+0x1db69, %rdx
nop
nop
xor $24247, %r8
mov (%rdx), %r9d
nop
nop
nop
sub $47723, %rbx
lea addresses_WC_ht+0x1d5bd, %rsi
nop
nop
nop
and $62339, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
xor $12719, %rbx
lea addresses_D_ht+0x18d99, %rbx
xor $59106, %rdi
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
xor %rcx, %rcx
lea addresses_normal_ht+0x15bd8, %rsi
lea addresses_A_ht+0x11699, %rdi
add $2277, %rax
mov $103, %rcx
rep movsw
nop
cmp $62926, %rax
lea addresses_A_ht+0xcbd9, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %edx
nop
add $62189, %r9
lea addresses_A_ht+0x14159, %rdi
nop
nop
nop
nop
sub $25848, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
xor $61406, %rsi
lea addresses_D_ht+0x3791, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %rcx
mov (%rbx), %r9w
nop
nop
nop
add $14086, %rcx
lea addresses_A_ht+0x51d9, %rsi
nop
nop
add $64699, %rdx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
xor $36693, %rax
lea addresses_normal_ht+0x12159, %rax
nop
nop
nop
sub $48186, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rax
vmovaps %ymm3, (%rax)
dec %rdx
lea addresses_A_ht+0x1c959, %rdx
nop
nop
nop
nop
nop
add $44852, %r8
mov (%rdx), %rsi
nop
nop
nop
nop
cmp %r9, %r9
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
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_WT+0xb159, %rcx
nop
nop
add $23318, %rsi
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 1553, '45': 1420, '44': 8197}
46 46 44 44 44 46 45 44 45 44 46 44 46 46 44 46 44 44 44 44 45 44 44 44 45 44 44 45 44 44 45 46 44 44 44 44 46 44 44 44 44 46 44 44 46 44 44 45 44 46 45 45 44 44 45 46 44 44 45 46 44 46 44 46 45 44 44 44 44 46 44 45 44 46 44 44 46 44 46 44 45 44 44 44 45 46 46 44 46 46 45 44 44 46 44 44 44 44 44 46 44 44 44 46 46 44 44 44 44 45 46 44 45 44 44 45 44 46 44 45 45 45 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 45 46 44 44 44 44 44 44 44 45 44 46 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 45 44 44 44 44 44 45 46 45 44 44 44 44 44 44 46 44 44 45 45 44 45 44 44 44 46 44 46 45 44 44 45 44 46 46 46 45 45 44 44 45 45 44 46 44 45 44 46 46 44 45 46 45 44 44 44 44 46 45 45 44 44 45 45 45 44 45 44 45 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 46 44 44 44 44 46 46 45 46 44 45 44 46 44 45 44 44 44 44 46 44 44 44 44 44 46 46 44 44 44 44 46 44 44 44 44 44 44 45 44 44 46 44 46 44 45 44 46 46 44 44 44 44 45 44 44 44 45 44 45 45 46 46 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 46 44 46 44 44 46 45 45 45 45 46 46 44 44 46 46 45 45 44 44 44 44 45 46 44 45 44 46 45 45 45 44 44 46 45 44 44 45 44 46 44 44 44 44 44 46 45 44 44 44 46 44 45 44 44 46 44 46 44 44 44 44 45 44 44 46 46 44 44 45 44 45 45 44 44 45 44 45 44 44 44 46 45 44 45 44 44 44 44 44 45 44 44 45 44 46 44 46 44 44 46 46 44 46 44 45 44 44 45 45 44 46 44 46 45 46 44 45 45 46 44 45 44 44 45 46 44 45 44 44 45 44 44 46 44 44 44 44 45 44 44 44 45 44 44 44 46 46 44 45 45 45 45 44 44 46 44 44 45 44 45 46 45 44 46 44 44 45 44 45 44 44 46 44 44 44 44 46 44 44 46 44 46 44 44 44 44 44 45 44 45 44 44 45 45 46 44 44 44 45 45 45 44 45 44 44 44 46 44 44 44 46 44 45 44 46 44 45 46 45 44 46 45 44 46 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 45 45 45 44 45 45 45 45 46 45 44 44 46 45 46 44 44 44 44 44 44 46 44 45 44 44 46 44 44 44 44 46 44 44 44 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 45 45 44 46 45 44 46 44 46 44 44 45 44 45 45 46 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 45 46 45 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 45 44 46 46 44 44 44 45 44 45 44 44 44 44 44 44 46 44 44 46 44 46 44 45 45 44 46 44 44 44 45 46 46 44 46 44 44 44 45 45 45 46 44 44 46 45 46 45 44 45 44 44 44 45 46 45 44 44 45 45 44 44 44 45 44 45 44 44 44 46 44 46 44 44 46 45 44 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 46 45 44 45 44 44 45 44 44 44 44 45 44 44 46 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 46 44 46 45 46 44 44 46 44 44 44 44 44 44 45 44 46 44 44 44 44 44 45 46 45 44 44 44 44 44 44 44 44 44 44 45 46 46 45 46 45 45 44 46 44 44 45 46 44 46 44 44 44 44 44 44 44 46 44 44 44 46 45 44 46 44 44 44 44 44 44 44
*/
