.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1579, %rbp
nop
nop
nop
nop
nop
cmp $24548, %rax
movb (%rbp), %r9b
nop
nop
nop
nop
xor $60224, %rax
lea addresses_WC_ht+0xf9e9, %rsi
lea addresses_A_ht+0x1a5ed, %rdi
nop
xor %r14, %r14
mov $81, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x6869, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %rdi
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x3279, %rdi
and %rsi, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xe029, %rsi
lea addresses_A_ht+0x1beb5, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $69, %rcx
rep movsb
nop
dec %rbx
lea addresses_D_ht+0xd011, %rax
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
xor $65221, %rax
lea addresses_D_ht+0x171f5, %rax
nop
nop
nop
nop
nop
xor $56679, %r14
movw $0x6162, (%rax)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x13721, %rsi
lea addresses_WC_ht+0x6279, %rdi
nop
nop
and %rbx, %rbx
mov $11, %rcx
rep movsq
nop
add $32431, %rsi
lea addresses_D_ht+0x12279, %rbx
nop
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
xor $23674, %rax
lea addresses_normal_ht+0x379, %rsi
lea addresses_A_ht+0x54e1, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $115, %rcx
rep movsq
nop
nop
cmp $38052, %rcx
lea addresses_A_ht+0x6639, %rdi
nop
nop
nop
cmp $24631, %rsi
movb (%rdi), %al
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_D+0x1ba79, %r13
xor %rax, %rax
movb $0x51, (%r13)
nop
nop
nop
add $52186, %r15

// Store
mov $0x79, %r9
clflush (%r9)
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r9)
nop
nop
cmp %rax, %rax

// Load
lea addresses_US+0x17639, %r13
clflush (%r13)
nop
nop
nop
cmp $26644, %rbp
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_UC+0x14a19, %rcx
nop
nop
nop
nop
nop
add $49492, %r15
movw $0x5152, (%rcx)
cmp %rcx, %rcx

// Faulty Load
mov $0x6e4e450000000a79, %r15
nop
nop
nop
xor %r9, %r9
movb (%r15), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 3805, '51': 18024}
51 51 51 00 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 00 51 51 00 51 00 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 00 51 00 00 00 00 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 00 00 51 00 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 00 00 00 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 00 00 00 51 51 00 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 00 00 51 51 51 00 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 00 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 00 00 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 00 51 00 00 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 00 00 00 00 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
