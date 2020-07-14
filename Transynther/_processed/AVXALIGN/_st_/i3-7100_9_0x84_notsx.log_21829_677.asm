.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd257, %r11
inc %rsi
mov (%r11), %r9
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1057, %rdx
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
xor $44206, %rdx
lea addresses_A_ht+0x13f7, %rdx
nop
and %r15, %r15
movb $0x61, (%rdx)
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1a457, %rsi
lea addresses_UC_ht+0x10c57, %rdi
nop
cmp $6201, %r11
mov $71, %rcx
rep movsb
nop
sub $6282, %rcx
lea addresses_A_ht+0x16977, %r15
add $25895, %r9
movb $0x61, (%r15)
nop
dec %rbx
lea addresses_A_ht+0xc92b, %rsi
lea addresses_WT_ht+0x15757, %rdi
clflush (%rsi)
nop
nop
and $13459, %rbx
mov $3, %rcx
rep movsb
nop
xor $22804, %rdi
lea addresses_A_ht+0x15257, %rdi
nop
nop
and %r11, %r11
mov (%rdi), %cx
nop
nop
nop
nop
nop
cmp $485, %rcx
lea addresses_UC_ht+0x2857, %rsi
xor %rdi, %rdi
mov (%rsi), %rcx
xor %rdx, %rdx
lea addresses_UC_ht+0x1a057, %rsi
lea addresses_D_ht+0x1657, %rdi
xor $21158, %r9
mov $65, %rcx
rep movsl
nop
add %r15, %r15
lea addresses_normal_ht+0x1d197, %rsi
lea addresses_normal_ht+0x1e817, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $9, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1ab57, %r11
nop
sub %rbx, %rbx
movb (%r11), %dl
nop
add $53011, %r15
lea addresses_normal_ht+0x15c57, %rcx
nop
nop
nop
nop
sub $20433, %rbx
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
and %r15, %r15
lea addresses_UC_ht+0x140df, %rcx
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rcx)
and $33200, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x11cd7, %rsi
lea addresses_PSE+0x1757, %rdi
nop
nop
nop
add $21205, %rax
mov $62, %rcx
rep movsw
nop
xor %r9, %r9

// REPMOV
lea addresses_normal+0x2857, %rsi
lea addresses_A+0x9657, %rdi
nop
nop
xor %rbp, %rbp
mov $72, %rcx
rep movsb
nop
add $15797, %r9

// REPMOV
lea addresses_PSE+0x1b857, %rsi
lea addresses_A+0xe057, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $41, %rcx
rep movsw
nop
and $59674, %rcx

// Load
lea addresses_D+0x1b1b8, %r13
nop
nop
nop
sub $26000, %rbx
mov (%r13), %edi
nop
nop
nop
nop
nop
cmp %rax, %rax

// REPMOV
lea addresses_normal+0x1b217, %rsi
lea addresses_PSE+0x1b857, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
and $64937, %rax

// Load
lea addresses_normal+0x9ec7, %rbp
nop
nop
nop
nop
nop
add %r13, %r13
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_A+0xc7b7, %r9
nop
nop
nop
xor $55209, %r13
movl $0x51525354, (%r9)
lfence

// Store
lea addresses_normal+0x12657, %rsi
nop
nop
nop
nop
nop
sub %r13, %r13
movb $0x51, (%rsi)
nop
nop
nop
add $48402, %r13

// Store
mov $0xfaf, %rbx
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovntdq %ymm1, (%rbx)
nop
nop
add $22470, %rdi

// Faulty Load
lea addresses_PSE+0x1b857, %rdi
nop
add %r9, %r9
mov (%rdi), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
