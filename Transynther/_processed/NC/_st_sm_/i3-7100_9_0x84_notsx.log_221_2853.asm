.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe3c3, %r13
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x3ecc, %r13
nop
nop
nop
xor $15397, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
xor $49127, %r11
lea addresses_normal_ht+0x19aa3, %rsi
lea addresses_D_ht+0x1c7a3, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $35, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_WC_ht+0x7375, %r11
nop
nop
nop
sub $64576, %rbp
mov (%r11), %r14d
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0xd3a3, %r11
xor %rbp, %rbp
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rdi
and %rdi, %rdi
lea addresses_A_ht+0x1eba3, %rsi
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
sub $9698, %rbx
lea addresses_UC_ht+0x1416f, %r11
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x15a3, %rcx
nop
nop
nop
cmp $33580, %r10
movb (%rcx), %r14b
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x19fa3, %rsi
lea addresses_UC_ht+0x18fa3, %rdi
cmp $186, %r11
mov $38, %rcx
rep movsl
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x182e3, %rsi
lea addresses_WT_ht+0x9dbb, %rdi
nop
cmp $26722, %rbp
mov $26, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WT+0x1a523, %r11
nop
nop
nop
nop
cmp $24770, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
cmp $10243, %rdx

// Store
lea addresses_WC+0x16da3, %rdi
nop
and %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_PSE+0x117a3, %rdx
nop
nop
nop
sub $30244, %r11
movw $0x5152, (%rdx)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x29a3, %r11
nop
nop
dec %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rdi

// Store
mov $0x68ce8c0000000ba3, %r13
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r13)
nop
nop
xor $35203, %r10

// Store
lea addresses_PSE+0x111c3, %rdx
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%rdx)
nop
nop
cmp %rdi, %rdi

// Load
mov $0x68ce8c0000000ba3, %rdx
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rdx), %r10w
cmp $4778, %r10

// Store
mov $0x4264360000000aa3, %r15
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x195a3, %r13
nop
nop
nop
nop
nop
cmp $6933, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movaps %xmm0, (%r13)
nop
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0x68ce8c0000000ba3, %r15
nop
nop
nop
nop
add %rbp, %rbp
movb (%r15), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'51': 221}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
