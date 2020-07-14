.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rdx
push %rsi
lea addresses_A_ht+0x81cb, %rdx
nop
nop
xor $40380, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1d2cf, %r11
clflush (%r11)
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0xca00, %rax
nop
nop
dec %rdi
movb $0x51, (%rax)
nop
nop
nop
nop
sub $52089, %rdi

// REPMOV
lea addresses_UC+0x115cf, %rsi
mov $0x6810900000000ecf, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $12, %rcx
rep movsb
cmp %rdi, %rdi

// Store
mov $0xe9f, %rsi
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_A+0x1b741, %r15
and $27982, %rsi
movw $0x5152, (%r15)
and %rsi, %rsi

// Store
mov $0xf8f, %rcx
nop
add $49276, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
cmp $20219, %r13

// Store
lea addresses_A+0x19c4f, %r15
nop
add $5620, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
add $6483, %rcx

// Store
lea addresses_A+0x1767f, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
xor $36769, %rdi

// Load
lea addresses_D+0xc28f, %rdi
nop
nop
nop
nop
nop
add $28613, %r11
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
cmp $16902, %r11

// Store
lea addresses_D+0x13837, %rsi
add $58484, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rsi)
nop
add $15413, %rax

// Faulty Load
lea addresses_US+0x16ecf, %rcx
nop
nop
nop
xor $54662, %rsi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
