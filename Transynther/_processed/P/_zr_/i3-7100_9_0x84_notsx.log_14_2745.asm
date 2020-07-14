.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5a99, %rax
nop
inc %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x163db, %rdx
and %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
xor $58102, %r12
lea addresses_normal_ht+0x5417, %rsi
lea addresses_A_ht+0xebd9, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $56, %rcx
rep movsb
nop
nop
nop
xor $32300, %rsi
lea addresses_A_ht+0x1a019, %rcx
nop
nop
nop
nop
xor %r12, %r12
mov (%rcx), %rax
nop
nop
add $54184, %r12
lea addresses_WT_ht+0x17ce0, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $35385, %r12
movb (%rsi), %al
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x17151, %rdx
inc %r14
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
add $40154, %rcx
lea addresses_UC_ht+0x18819, %rdi
nop
nop
inc %rcx
movw $0x6162, (%rdi)
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1bc19, %rdi
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
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
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0x9cb6, %rax
nop
nop
nop
nop
nop
inc %rdi
mov (%rax), %r14
nop
xor $59635, %rbx

// Store
lea addresses_A+0x11ac9, %rdx
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x9819, %r15
add %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %r15
movaps %xmm5, (%r15)
nop
dec %r13

// Store
lea addresses_PSE+0xf29b, %r13
nop
nop
nop
nop
nop
inc %r14
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and $19350, %rdx

// Faulty Load
mov $0x19, %r13
nop
nop
nop
nop
xor $20523, %rax
mov (%r13), %r15d
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
