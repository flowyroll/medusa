.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9451, %rsi
lea addresses_D_ht+0x1ede1, %rdi
nop
nop
nop
nop
xor $12897, %r15
mov $70, %rcx
rep movsw
inc %rax
lea addresses_D_ht+0x1d181, %r9
nop
xor %rbp, %rbp
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x114c1, %rsi
lea addresses_WT_ht+0xd9d1, %rdi
nop
nop
cmp %r12, %r12
mov $85, %rcx
rep movsl
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x6fd1, %rsi
lea addresses_WC_ht+0x139d1, %rdi
nop
nop
xor %rbp, %rbp
mov $78, %rcx
rep movsl
cmp $32093, %r15
lea addresses_UC_ht+0x89d1, %rcx
nop
nop
nop
nop
cmp $8300, %rbp
mov (%rcx), %rax
nop
nop
and $36631, %r9
lea addresses_A_ht+0xe36a, %r9
nop
nop
nop
sub %rax, %rax
movb $0x61, (%r9)
and $30721, %r12
lea addresses_WC_ht+0x83d1, %r15
sub $44152, %rbp
movl $0x61626364, (%r15)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0xb651, %rdi
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
cmp $25317, %r9
lea addresses_WC_ht+0xaf69, %r9
clflush (%r9)
sub $19831, %rdi
movb (%r9), %cl
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x17c5a, %rax
nop
and %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
xor $42022, %rsi
lea addresses_UC_ht+0x45a1, %rbp
nop
nop
nop
nop
nop
sub %rcx, %rcx
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
xor $34967, %rbp
lea addresses_A_ht+0x19a69, %rcx
nop
add $13008, %rsi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rbp
nop
dec %r9
lea addresses_UC_ht+0x71d1, %rsi
lea addresses_UC_ht+0x186e1, %rdi
nop
nop
nop
xor %r15, %r15
mov $52, %rcx
rep movsq
nop
nop
nop
nop
sub $51671, %rdi
lea addresses_UC_ht+0x8dd1, %rax
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rax)
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rdi

// Load
lea addresses_UC+0x1e420, %r11
inc %r8
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
sub %rdi, %rdi

// Faulty Load
mov $0x7b674b00000005d1, %r10
clflush (%r10)
nop
nop
xor %rbx, %rbx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdi
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'48': 8, 'ce': 1, '46': 1109, '70': 1, '49': 12881, '00': 7827, '84': 1, '2c': 1}
00 49 49 49 00 00 00 49 00 49 00 49 49 46 49 49 49 49 00 49 00 49 49 00 00 49 00 49 49 00 00 49 00 49 00 49 49 00 49 00 49 00 49 49 00 46 49 00 49 49 00 49 49 49 49 00 49 49 46 00 49 49 46 49 00 49 49 00 49 00 49 49 00 49 49 49 46 49 00 00 49 00 00 00 49 49 00 49 00 49 46 49 49 49 49 46 00 00 49 49 00 49 00 49 49 00 49 49 00 49 00 49 49 49 49 46 00 49 49 00 49 49 49 49 49 49 49 00 49 00 49 49 00 49 00 49 49 49 49 46 49 00 49 49 49 49 49 49 49 00 49 49 00 46 00 49 49 00 49 49 00 49 00 49 49 49 00 00 49 49 49 00 49 49 49 46 00 00 00 49 49 49 00 49 49 00 49 49 00 49 49 49 00 00 49 49 49 49 00 49 00 49 49 49 00 49 49 00 49 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 46 00 49 00 00 49 00 49 49 46 00 49 49 00 00 00 49 46 00 49 49 49 00 49 00 46 49 00 49 49 00 49 00 49 00 49 00 49 46 49 00 49 49 00 00 00 49 49 00 49 49 00 49 49 49 49 46 49 49 49 49 00 49 49 49 00 49 49 49 00 49 00 49 49 00 49 00 49 49 00 00 49 49 00 49 00 49 49 00 49 49 49 00 00 49 49 49 00 49 49 49 00 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 00 46 49 00 49 00 49 49 49 00 00 49 00 46 00 49 49 49 00 49 49 49 00 00 49 49 00 49 49 00 49 49 00 49 00 49 00 49 49 00 49 00 00 49 00 00 49 49 49 46 49 00 49 49 00 00 49 49 00 49 00 49 00 49 49 49 49 49 49 49 49 49 46 00 49 49 49 46 00 49 49 49 49 49 49 49 00 49 49 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 49 00 49 00 49 49 49 49 00 00 49 49 46 00 49 00 49 49 00 49 00 00 49 00 49 49 00 49 49 49 49 00 49 49 46 00 49 49 00 00 00 49 00 00 49 49 00 49 49 00 49 00 46 49 00 49 00 00 49 49 49 00 00 49 49 00 49 49 49 46 49 49 00 49 49 00 00 49 49 00 49 00 49 00 49 00 49 49 49 00 49 49 00 49 00 49 00 00 00 49 00 49 00 49 46 00 00 49 49 00 49 49 00 49 00 49 49 00 49 00 49 46 49 49 49 49 00 00 00 49 00 00 49 46 49 00 49 00 00 49 00 00 00 00 00 00 00 49 49 00 49 49 49 49 49 00 00 49 49 00 00 49 00 00 49 49 00 49 49 49 49 49 46 00 00 00 00 00 49 49 00 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 00 00 00 00 49 49 00 49 46 49 49 46 49 00 00 49 00 00 49 49 49 00 49 49 00 49 00 49 00 00 49 00 00 49 49 00 49 49 49 00 00 00 49 00 49 49 49 00 46 00 49 49 46 00 00 49 49 49 00 49 49 49 00 49 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 49 00 00 49 49 00 49 49 49 00 00 49 49 00 49 00 49 00 49 49 00 49 00 00 49 49 49 49 00 49 49 49 46 00 49 49 49 49 49 00 49 49 00 49 00 49 49 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 49 49 00 49 49 49 00 49 49 00 49 49 49 00 00 00 49 00 49 49 00 49 46 49 00 49 49 00 49 00 49 00 00 49 00 46 00 00 49 49 00 00 00 49 49 00 49 00 49 00 49 49 00 49 00 49 00 49 49 46 49 49 00 49 49 49 00 49 49 00 49 49 00 49 00 00 00 49 00 49 00 49 49 00 00 49 00 49 49 00 00 46 49 49 49 49 00 49 49 00 00 46 49 00 49 00 00 49 00 49 00 00 49 49 00 49 49 00 00 00 49 00 49 00 00 00 00 49 49 49 49 00 49 49 00 49 00 46 00 49 49 49 00 00 00 49 00 00 49 49 49 00 49 49 00 49 00 00 49 49 00 00 00 49 49 49 00 46 00 49 49 49 00 00 00 49 00 00 00 49 49 00 49 49 46 00 49 00 00 49 49 00 49 49 00 00 49 46
*/
