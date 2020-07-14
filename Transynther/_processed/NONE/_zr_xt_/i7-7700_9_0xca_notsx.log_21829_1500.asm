.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x773f, %rsi
lea addresses_A_ht+0x651f, %rdi
nop
cmp $33764, %r8
mov $11, %rcx
rep movsl
lfence
lea addresses_A_ht+0x8ed6, %rsi
lea addresses_A_ht+0x1c273, %rdi
xor %r13, %r13
mov $117, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x19563, %rcx
clflush (%rcx)
sub $65477, %r10
movw $0x6162, (%rcx)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x17caf, %r10
nop
nop
nop
nop
and $18926, %rdi
movups (%r10), %xmm0
vpextrq $0, %xmm0, %rcx
nop
add %rcx, %rcx
lea addresses_normal_ht+0x953f, %r10
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r10), %di
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xf3f, %rsi
lea addresses_D_ht+0x1b93f, %rdi
add %r8, %r8
mov $100, %rcx
rep movsb
nop
sub $13291, %r10
lea addresses_WT_ht+0x16551, %rsi
nop
nop
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x533f, %rdi
nop
nop
nop
nop
cmp $36170, %rsi
movl $0x61626364, (%rdi)
nop
sub %r10, %r10
lea addresses_D_ht+0x17d38, %r13
nop
nop
add %rbx, %rbx
movw $0x6162, (%r13)
nop
sub %r8, %r8
lea addresses_normal_ht+0x2fbf, %rbx
add %rsi, %rsi
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
add $29035, %rdi
lea addresses_A_ht+0x1935f, %rsi
lea addresses_D_ht+0x238b, %rdi
and %r10, %r10
mov $3, %rcx
rep movsb
nop
add $161, %rcx
lea addresses_WC_ht+0x773f, %r8
sub $4376, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r8)
add $2129, %rsi
lea addresses_normal_ht+0x68bf, %r13
nop
nop
nop
sub %r8, %r8
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1cfbf, %rsi
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
dec %r13

// Store
lea addresses_A+0x163f, %r13
nop
nop
nop
nop
nop
xor $42984, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_WC+0x273f, %rax
and $10146, %rbx
mov (%rax), %r14d
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0xef3f, %rsi
clflush (%rsi)
and $20185, %rax
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13

// REPMOV
lea addresses_PSE+0x15f3f, %rsi
lea addresses_A+0x1ff3f, %rdi
nop
nop
nop
nop
nop
add $12952, %r12
mov $101, %rcx
rep movsl
cmp %r12, %r12

// Store
lea addresses_A+0x8b3f, %rcx
nop
nop
nop
cmp $34968, %r13
movw $0x5152, (%rcx)
nop
nop
dec %rsi

// Faulty Load
lea addresses_A+0xdf3f, %rsi
nop
sub $20393, %rcx
mov (%rsi), %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
