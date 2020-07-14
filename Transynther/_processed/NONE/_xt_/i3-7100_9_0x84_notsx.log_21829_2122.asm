.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xaf0, %r8
nop
nop
nop
sub %r13, %r13
mov (%r8), %rcx
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x1e780, %rcx
nop
nop
and %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xdcb0, %rbx
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rbx)
nop
sub %r13, %r13
lea addresses_UC_ht+0x198c0, %r13
nop
nop
nop
nop
nop
dec %rdi
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x16db0, %rsi
xor %r13, %r13
mov (%rsi), %ebx
and $61180, %rdi
lea addresses_UC_ht+0x4e30, %rdi
nop
nop
nop
xor $34530, %r8
movl $0x61626364, (%rdi)
nop
nop
sub $52413, %r13
lea addresses_A_ht+0x13d30, %rsi
lea addresses_normal_ht+0x722a, %rdi
nop
nop
cmp %r8, %r8
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x151b0, %r13
nop
nop
nop
nop
and $25765, %r12
mov (%r13), %rbx
nop
nop
nop
nop
nop
add $60610, %rcx
lea addresses_A_ht+0x4540, %rsi
nop
nop
nop
nop
add $49720, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub $39397, %rbx
lea addresses_A_ht+0x130b0, %rsi
lea addresses_WC_ht+0x1edc8, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $120, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x12e70, %rsi
nop
nop
xor %rbp, %rbp
movb $0x61, (%rsi)
nop
and $62841, %r8
lea addresses_A_ht+0x2db0, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%r13), %rdi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1eab0, %rcx
nop
nop
nop
and %rbx, %rbx
movb $0x61, (%rcx)
xor %r12, %r12
lea addresses_normal_ht+0xadb0, %rsi
lea addresses_WT_ht+0x1de00, %rdi
nop
nop
nop
cmp $47315, %r12
mov $39, %rcx
rep movsw
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx

// Store
lea addresses_WC+0x1f2b0, %r12
clflush (%r12)
nop
dec %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r12)
nop
nop
and $8983, %rax

// Store
lea addresses_A+0x8610, %rcx
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
xor $5157, %r12

// Store
lea addresses_normal+0xf650, %rcx
nop
and %rax, %rax
movl $0x51525354, (%rcx)
sub %r14, %r14

// Store
lea addresses_normal+0x16b30, %r12
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
add %r13, %r13

// Store
mov $0xd88, %r14
clflush (%r14)
nop
nop
nop
add $1801, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_normal+0x100b0, %rbp
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rbp)

// Exception!!!
mov (0), %r13
nop
nop
nop
nop
dec %r14

// Load
lea addresses_A+0x6130, %r14
nop
nop
nop
xor $50591, %rcx
movups (%r14), %xmm4
vpextrq $1, %xmm4, %r11
nop
add $43941, %rbp

// Store
lea addresses_A+0x18bc0, %rax
nop
nop
nop
cmp $12335, %r11
movl $0x51525354, (%rax)
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0x99b0, %r13
nop
nop
nop
nop
nop
cmp $17088, %r14
mov (%r13), %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
