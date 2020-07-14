.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e8b7, %r13
nop
nop
nop
nop
nop
xor $17978, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
cmp $59112, %r15
lea addresses_D_ht+0x4a77, %r13
nop
nop
nop
nop
add %r14, %r14
mov (%r13), %r8w
and %r14, %r14
lea addresses_UC_ht+0xccb7, %r8
clflush (%r8)
sub $46664, %r10
movb (%r8), %r13b
nop
nop
inc %rax
lea addresses_A_ht+0x5b7, %r14
nop
nop
inc %rax
movb (%r14), %r8b
nop
nop
nop
and $60488, %rax
lea addresses_WC_ht+0xb7, %rax
nop
nop
and $14343, %r13
movw $0x6162, (%rax)
cmp %r14, %r14
lea addresses_WC_ht+0xfcb7, %rsi
nop
nop
lfence
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp $17140, %r8
lea addresses_A_ht+0x9eb7, %rsi
lea addresses_normal_ht+0x1d1e5, %rdi
nop
nop
nop
xor %r13, %r13
mov $18, %rcx
rep movsb
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x4db7, %rsi
nop
nop
nop
add %rcx, %rcx
movb (%rsi), %r14b
nop
nop
cmp $13572, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_normal+0x389f, %rbx
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
nop
nop
nop
add $20386, %r11

// Store
lea addresses_D+0x80f7, %r11
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovntdq %ymm3, (%r11)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_WT+0x84b7, %r12
nop
nop
nop
nop
cmp %r9, %r9
mov (%r12), %r11w
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 69}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
