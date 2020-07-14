.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e8bd, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
sub $12102, %rsi
lea addresses_WC_ht+0xd577, %rsi
lea addresses_WC_ht+0x18215, %rdi
and $28176, %r14
mov $34, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_UC_ht+0x735, %rbx
cmp %r10, %r10
movb $0x61, (%rbx)
cmp $1173, %rcx
lea addresses_WC_ht+0x1988a, %rsi
lea addresses_WC_ht+0x19555, %rdi
clflush (%rsi)
xor %r13, %r13
mov $117, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xd335, %r14
nop
sub %rbp, %rbp
mov (%r14), %ecx
nop
nop
nop
nop
nop
add $40820, %rcx
lea addresses_WT_ht+0x13235, %rbp
nop
nop
nop
nop
and %rbx, %rbx
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1503d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $51615, %rbp
movw $0x6162, (%rdi)
dec %rbp
lea addresses_WC_ht+0x1b575, %rsi
lea addresses_WT_ht+0x101f5, %rdi
nop
nop
inc %rbx
mov $105, %rcx
rep movsl
nop
nop
nop
cmp $32268, %rdi
lea addresses_A_ht+0x2a95, %r13
and %rbx, %rbx
mov (%r13), %rdi
cmp $56786, %r13
lea addresses_A_ht+0x1dec1, %rbx
nop
and %r10, %r10
mov (%rbx), %rsi
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x11b35, %rsi
lea addresses_UC+0x1eb35, %rdi
nop
add $34990, %r13
mov $61, %rcx
rep movsw
cmp %rcx, %rcx

// Store
lea addresses_PSE+0x9889, %rdx
nop
and %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor $23112, %rdi

// Store
lea addresses_US+0x18f35, %rdx
clflush (%rdx)
nop
dec %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rdx)
nop
add %rdx, %rdx

// Store
lea addresses_US+0x18f35, %r13
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%r13)
nop
nop
nop
sub $48747, %rdi

// Store
lea addresses_PSE+0x14735, %r15
and $40680, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
xor $13813, %rdi

// Store
lea addresses_A+0xf1b5, %rcx
clflush (%rcx)
nop
nop
cmp $39935, %r9
movl $0x51525354, (%rcx)
nop
nop
nop
add $6909, %rdx

// Store
lea addresses_A+0x1b9f5, %r9
nop
nop
inc %rdi
movw $0x5152, (%r9)
and $32748, %r9

// Faulty Load
lea addresses_US+0x18f35, %r13
nop
nop
sub $47482, %r9
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'f2': 1, '14': 1, '44': 1, 'ab': 4, '18': 8, '6d': 1, 'e7': 105, '82': 1, '9a': 1, '48': 7548, '03': 1, '41': 1, 'e0': 1, '71': 1, '1c': 1, '17': 3, 'f6': 1, 'cb': 2, '2a': 1, '27': 1, 'f0': 1, '06': 54, '76': 1, 'd6': 9, 'a4': 1, 'b6': 1, '19': 1, '00': 14075, 'da': 1, 'd5': 1}
00 00 00 00 00 00 00 48 00 48 00 00 e7 00 00 00 48 48 48 00 00 00 00 00 00 00 48 48 00 48 00 48 00 00 48 48 48 48 48 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 06 00 48 00 00 48 48 48 00 00 48 00 00 48 48 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 06 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 48 00 48 06 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 48 00 00 00 48 00 00 48 48 48 48 00 48 48 00 48 00 00 00 00 00 48 00 00 48 00 48 48 48 48 00 00 00 e7 00 48 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 48 48 48 48 48 00 00 48 48 00 00 48 00 48 48 48 00 48 48 48 00 00 00 48 48 48 00 48 00 00 48 48 48 48 48 48 00 48 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 48 48 48 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 00 48 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 48 00 48 48 00 48 48 48 00 00 00 00 00 00 48 00 48 00 48 48 48 48 00 00 00 48 00 00 48 48 48 48 48 00 00 00 00 00 48 00 48 00 00 48 48 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 48 00 00 00 00 48 48 48 00 00 48 48 48 48 48 00 00 00 00 48 00 00 48 48 48 00 00 48 00 00 00 00 48 00 00 48 06 00 48 48 48 00 48 00 48 00 00 00 00 00 48 48 48 00 48 48 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 06 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 a4 00 00 48 48 00 48 00 00 00 00 48 48 48 48 48 00 48 00 48 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 48 48 48 48 00 00 48 00 00 48 48 48 00 00 00 00 00 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 00 48 00 00 48 00 00 00 48 48 00 48 48 00 48 00 00 48 48 00 48 48 48 00 00 00 48 48 48 48 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 48 00 00 00 48 00 00 00 18 00 00 00 00 48 48 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 48 48 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 48 48 00 48 00 48 48 48 48 48 00 00 00 48 48 48 00 00 00 00 00 00 e7 00 00 48 48 00 00 00 00 00 48 00 48 48 48 00 00 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 48 00 48 48 48 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 e7
*/
