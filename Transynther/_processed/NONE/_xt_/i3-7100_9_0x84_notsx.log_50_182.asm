.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7acd, %r10
nop
nop
dec %rbp
movl $0x61626364, (%r10)
nop
nop
xor $21285, %r15
lea addresses_normal_ht+0x1ce3b, %rsi
cmp %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x12026, %rbp
nop
nop
nop
nop
nop
add $44094, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
nop
sub $61959, %r9
lea addresses_UC_ht+0x1e091, %rsi
lea addresses_WT_ht+0x14305, %rdi
nop
and $14567, %rbp
mov $85, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xa7ad, %rcx
nop
nop
nop
sub $42104, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x3be5, %rdi
add $27147, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x11ecd, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbp), %r10
xor %rcx, %rcx
lea addresses_WT_ht+0x121cd, %rsi
lea addresses_D_ht+0x178d, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $33, %rcx
rep movsq
cmp %r11, %r11
lea addresses_WC_ht+0xda01, %rcx
nop
nop
nop
dec %r10
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
and $2917, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x30479f000000018d, %rcx
dec %rdx
movw $0x5152, (%rcx)
nop
cmp %r15, %r15

// Store
mov $0x4cb7e500000002cd, %r15
nop
sub $42893, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
cmp $29495, %r10

// Load
lea addresses_UC+0x6f27, %rcx
nop
nop
nop
xor %r13, %r13
mov (%rcx), %r10d
nop
nop
nop
nop
xor $25294, %r13

// Store
mov $0x1912090000000f3b, %rcx
nop
and $22292, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
add $16370, %rax

// Faulty Load
lea addresses_PSE+0x13acd, %rdx
nop
nop
nop
nop
and %r15, %r15
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 50}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
