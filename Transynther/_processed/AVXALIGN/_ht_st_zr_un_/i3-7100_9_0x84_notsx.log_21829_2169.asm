.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x57, %rsi
nop
inc %r15
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r11
nop
add $50153, %r10
lea addresses_A_ht+0x7dd2, %rsi
lea addresses_D_ht+0x1bb57, %rdi
nop
nop
nop
nop
nop
sub $45867, %r14
mov $0, %rcx
rep movsb
nop
nop
nop
nop
sub $51096, %r15
lea addresses_WC_ht+0xcc57, %r14
nop
nop
nop
and $637, %rsi
movl $0x61626364, (%r14)
nop
nop
cmp $16498, %rcx
lea addresses_WT_ht+0x17557, %rsi
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rsi), %r10d
dec %rcx
lea addresses_UC_ht+0x12057, %rsi
lea addresses_WT_ht+0x19bb7, %rdi
clflush (%rdi)
sub %rax, %rax
mov $123, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x10c57, %rsi
lea addresses_D_ht+0x5e7f, %rdi
nop
nop
nop
nop
sub $19249, %r14
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x13bf, %rsi
lea addresses_D_ht+0x1b457, %rdi
nop
nop
nop
inc %r14
mov $94, %rcx
rep movsw
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x121a7, %rsi
lea addresses_A_ht+0x13ec7, %rdi
nop
nop
nop
and %r14, %r14
mov $118, %rcx
rep movsq
nop
sub $15620, %r11
lea addresses_UC_ht+0x17a57, %rsi
lea addresses_normal_ht+0x1866f, %rdi
nop
and %r10, %r10
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1e057, %r15
nop
sub %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x9357, %rax
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rax)
nop
sub %r10, %r10
lea addresses_normal_ht+0x1c857, %r14
nop
add $64794, %r10
movb $0x61, (%r14)
nop
nop
nop
nop
nop
xor $35891, %rsi
lea addresses_A_ht+0xad87, %rcx
cmp $54084, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
nop
xor $46471, %r11
lea addresses_WC_ht+0x4c57, %rax
nop
nop
nop
nop
nop
cmp $4074, %r11
mov (%rax), %edi
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xbc57, %rsi
lea addresses_WC_ht+0xa757, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $27, %rcx
rep movsl
nop
nop
nop
nop
sub $11499, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xbc57, %rsi
dec %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0x1e8fc, %rbp
nop
and %r13, %r13
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0x1115f, %rdi
nop
nop
nop
nop
nop
dec %r14
movb $0x51, (%rdi)
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x1bc57, %r12
nop
nop
xor $9213, %rdi
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'2d': 3, '47': 1, '52': 1, '2a': 4, '45': 1593, '40': 1, '08': 4, '68': 1, '48': 7, '46': 2532, '49': 2, '00': 17677, 'ff': 2, '53': 1}
00 00 00 00 45 46 00 00 00 00 00 46 45 45 46 00 00 00 00 46 45 46 00 00 00 00 46 00 00 00 45 00 00 45 00 45 45 45 46 45 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 46 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 46 45 46 00 00 46 00 00 00 00 45 00 46 00 00 46 46 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 45 46 46 00 46 45 00 46 46 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 46 46 45 46 00 00 00 00 00 46 00 46 46 00 46 00 46 45 46 00 00 00 00 46 00 46 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 46 00 00 46 46 46 00 00 00 00 00 00 46 00 00 45 45 46 00 00 00 00 00 00 00 00 00 45 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 46 45 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 45 46 45 00 00 45 45 46 00 00 00 00 00 00 00 46 00 00 45 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 00 46 00 46 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 45 00 46 00 46 46 00 00 45 45 00 45 00 45 46 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 45 00 00 46 45 00 00 00 00 46 00 00 45 00 08 46 00 00 46 00 00 45 00 00 00 00 45 46 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 45 45 45 45 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 45 00 00 00 00 00 46 46 45 46 00 46 46 45 46 45 00 00 46 45 00 00 46 45 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 45 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 45 46 00 46 00 00 00 00 46 00 00 00 08 00 46 46 00 00 00 00 46 00 46 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 45 45 00 00 00 00 00 00 45 46 00 46 45 00 00 00 00 00 00 46 00 00 00 46 00 00 00 45 00 00 00 46 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 45 45 00 00 00 00 00 00 45 45 00 45 00 46 45 00 00 00 00 00 00 46 00 00 45 00 00 45 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 46 00 45 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 46 00 00 00 00 00 46 00 00 45 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 45 00 45 52 00 00 00 00 46 46 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 45 46 00 00 00 00 00 00 00 00 46
*/
