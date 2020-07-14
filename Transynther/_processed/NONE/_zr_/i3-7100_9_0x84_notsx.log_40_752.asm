.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2c59, %rdi
nop
nop
sub $11910, %r15
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
sub $47762, %r8
lea addresses_normal_ht+0x99, %rax
nop
nop
nop
nop
nop
add $45346, %r14
movb $0x61, (%rax)
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x12599, %rsi
lea addresses_D_ht+0xe519, %rdi
nop
nop
nop
nop
xor $8087, %r14
mov $68, %rcx
rep movsl
nop
nop
nop
and $61087, %rdi
lea addresses_UC_ht+0xc911, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rsi), %rbp
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xf059, %rax
nop
nop
nop
inc %r15
mov (%rax), %edi
nop
sub $25335, %rdi
lea addresses_WC_ht+0x1de99, %rax
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rax
vmovaps %ymm3, (%rax)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xf899, %rsi
lea addresses_normal_ht+0x1a851, %rdi
nop
nop
nop
nop
cmp $22476, %r14
mov $110, %rcx
rep movsq
nop
nop
nop
nop
sub $17301, %rbp
lea addresses_WC_ht+0x1ac99, %rdi
nop
nop
add $28006, %rax
movb $0x61, (%rdi)
nop
nop
nop
cmp $9883, %rdi
lea addresses_normal_ht+0xab59, %r14
nop
and %rsi, %rsi
movups (%r14), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rdi

// Load
mov $0x3f68060000000939, %rbx
nop
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
cmp %r14, %r14

// Store
lea addresses_RW+0x1fc19, %rbx
add %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rbx)

// Exception!!!
nop
mov (0), %rbx
nop
nop
nop
nop
nop
xor $20670, %r11

// Store
lea addresses_PSE+0x1a875, %rbx
nop
nop
nop
nop
nop
inc %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_A+0x7c99, %rbx
nop
nop
nop
cmp %rdi, %rdi
mov (%rbx), %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
