.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5ae4, %r11
xor $46692, %r10
movl $0x61626364, (%r11)
and $56756, %rcx
lea addresses_WT_ht+0x96e4, %rsi
lea addresses_A_ht+0x8e40, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $21, %rcx
rep movsq
inc %rcx
lea addresses_WC_ht+0x1c6e4, %rsi
xor $2391, %r9
mov (%rsi), %rcx
nop
nop
nop
nop
add $16438, %rcx
lea addresses_normal_ht+0x1c22c, %rdi
nop
nop
nop
nop
nop
and $55900, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x6484, %r10
nop
dec %rax
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x4a86, %rsi
lea addresses_UC_ht+0x11e4, %rdi
nop
nop
inc %r12
mov $56, %rcx
rep movsb
nop
nop
xor $59609, %r9
lea addresses_WT_ht+0x6e3c, %rsi
lea addresses_UC_ht+0xf1dc, %rdi
nop
nop
xor %r12, %r12
mov $63, %rcx
rep movsb
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Load
lea addresses_WT+0x12be4, %rax
nop
nop
nop
nop
add $19092, %r9
movb (%rax), %r13b
cmp $63251, %rsi

// Store
lea addresses_PSE+0x3ee4, %r8
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x1d7e4, %r13
nop
nop
nop
nop
sub $8603, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
inc %r8

// Store
lea addresses_A+0x1ac24, %rax
clflush (%rax)
nop
nop
nop
cmp $55004, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
cmp $3001, %r13

// Faulty Load
lea addresses_WC+0x1a6e4, %r15
nop
nop
nop
cmp $6865, %r9
movb (%r15), %al
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
