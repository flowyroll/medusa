.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xfdf3, %r8
nop
add $38431, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
add $65118, %r11
lea addresses_D_ht+0x4733, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r8
cmp $46636, %rdi
lea addresses_WT_ht+0x7ef3, %rsi
lea addresses_A_ht+0x15713, %rdi
clflush (%rdi)
nop
nop
and %r12, %r12
mov $101, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1af93, %rdi
nop
nop
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
dec %r12
lea addresses_A_ht+0x134b3, %r12
nop
nop
nop
sub $35988, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xb723, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%r11)
nop
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
mov $0x13d96b0000000ce5, %rdi
nop
and $42025, %rax
mov (%rdi), %r9d
nop
nop
nop
inc %rax

// Store
lea addresses_WT+0x4df3, %rax
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %rax
movaps %xmm1, (%rax)
nop
nop
nop
nop
nop
xor $9576, %r8

// Store
lea addresses_D+0x14df3, %rdi
sub $3701, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_normal+0x61f3, %r14
clflush (%r14)
add %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
nop
nop
sub $32699, %rax

// Store
mov $0x243e1b0000000793, %rbx
nop
nop
add $35497, %r8
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x1ed23, %r9
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
inc %rbx

// Faulty Load
lea addresses_D+0x14df3, %r14
and $16546, %rdi
mov (%r14), %ebx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
