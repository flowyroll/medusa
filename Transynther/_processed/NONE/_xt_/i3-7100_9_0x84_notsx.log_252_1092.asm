.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x165dc, %rdi
nop
nop
nop
add $51103, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $10519, %rax
lea addresses_A_ht+0x97fc, %rsi
lea addresses_normal_ht+0x981c, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $81, %rcx
rep movsl
nop
nop
add %r14, %r14
lea addresses_A_ht+0xb29c, %r10
nop
sub $9972, %r14
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x48d6, %rsi
lea addresses_WT_ht+0x1d4ec, %rdi
dec %rbx
mov $82, %rcx
rep movsq
nop
sub %r14, %r14
lea addresses_normal_ht+0xb31c, %r10
clflush (%r10)
nop
nop
sub $26377, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
add $60780, %rbp
lea addresses_UC_ht+0x12d9c, %rsi
nop
nop
nop
xor $63387, %rbx
mov (%rsi), %rax
dec %rsi
lea addresses_WC_ht+0x1a90, %rsi
lea addresses_WT_ht+0xfd9c, %rdi
cmp %rbp, %rbp
mov $70, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
mov $0x16ae8900000001b4, %r14
nop
nop
nop
xor $31033, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
xor $409, %rax

// Store
lea addresses_D+0x341c, %rax
nop
nop
nop
nop
nop
add $65485, %rdi
movl $0x51525354, (%rax)
dec %r9

// Load
lea addresses_RW+0x1e64c, %r9
nop
cmp %r11, %r11
mov (%r9), %edi
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_D+0x1a71c, %r11
nop
nop
nop
cmp %rbp, %rbp
mov (%r11), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'36': 252}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
