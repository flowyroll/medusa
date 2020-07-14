.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9be6, %rsi
lea addresses_WT_ht+0x16606, %rdi
cmp %rbx, %rbx
mov $127, %rcx
rep movsw
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x21e6, %r8
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
nop
sub $8439, %rbp
lea addresses_normal_ht+0x1c7e5, %rsi
lea addresses_WC_ht+0x9e6, %rdi
nop
nop
nop
add %r9, %r9
mov $82, %rcx
rep movsq
xor %r8, %r8
lea addresses_WT_ht+0xee62, %rsi
add %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
inc %r8
lea addresses_WC_ht+0x118e6, %rcx
nop
sub %rbp, %rbp
mov (%rcx), %bx
nop
sub $35238, %rdi
lea addresses_UC_ht+0x1b551, %rbx
nop
nop
nop
nop
nop
xor $55241, %rbp
mov (%rbx), %r9
sub $56889, %r9
lea addresses_D_ht+0x102e6, %rdi
inc %rcx
movb (%rdi), %r8b
cmp %r8, %r8
lea addresses_D_ht+0x13966, %rbp
nop
sub $39941, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
nop
nop
nop
add $36420, %r9
lea addresses_WC_ht+0x1be6, %r9
inc %rbx
mov (%r9), %rcx
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x5206, %rdi
nop
nop
dec %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
add $35890, %r8
lea addresses_WC_ht+0xdb0c, %rbp
nop
nop
sub $58664, %rcx
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
add $21930, %rcx
lea addresses_normal_ht+0xffea, %rsi
lea addresses_WT_ht+0x121e6, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $49, %rcx
rep movsw
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xa866, %rbp
cmp $52006, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x13e6, %rsi
lea addresses_normal_ht+0x153e6, %rdi
nop
nop
nop
xor $14296, %r8
mov $110, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1a4e6, %r9
clflush (%r9)
nop
nop
nop
nop
xor $28895, %rbx
movb (%r9), %cl
nop
nop
xor $16800, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x13fa6, %r12
nop
nop
nop
nop
nop
xor $1958, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
add $51905, %rdx

// Faulty Load
lea addresses_US+0xa3e6, %r9
nop
nop
cmp %r11, %r11
mov (%r9), %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 115}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
