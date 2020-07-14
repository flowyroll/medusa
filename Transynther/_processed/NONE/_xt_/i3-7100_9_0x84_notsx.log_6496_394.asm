.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1adbb, %rbx
nop
nop
nop
sub $43111, %r13
movl $0x61626364, (%rbx)
nop
nop
nop
sub $39564, %r12
lea addresses_WC_ht+0xbb3b, %rsi
nop
nop
nop
xor $45241, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rsi
movntdq %xmm3, (%rsi)
nop
and $22275, %r13
lea addresses_A_ht+0x773b, %rsi
nop
nop
nop
nop
nop
xor $29640, %r13
mov (%rsi), %ebx
nop
sub $63877, %r11
lea addresses_WC_ht+0x5fbb, %r11
nop
nop
nop
nop
xor $33116, %rdi
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
add $19756, %r11
lea addresses_A_ht+0xdc1b, %rsi
lea addresses_WT_ht+0x1cfbb, %rdi
nop
nop
nop
nop
cmp $42951, %rbx
mov $37, %rcx
rep movsq
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0xf3b, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %r11w
nop
nop
nop
nop
nop
add $20889, %rdi
lea addresses_D_ht+0xf0bb, %rsi
lea addresses_A_ht+0x1b6bb, %rdi
nop
nop
nop
inc %r11
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x182bb, %rsi
lea addresses_UC_ht+0x1077b, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $31, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x12223, %rsi
clflush (%rsi)
nop
nop
dec %r12
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x307b, %r13
nop
nop
nop
nop
nop
cmp $50370, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
add $60985, %rcx
lea addresses_A_ht+0x14cbb, %rdi
xor %r11, %r11
movb (%rdi), %r13b
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x33b, %rsi
xor %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
add $62449, %r11

// Store
lea addresses_US+0x1ee3b, %rcx
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_UC+0x5cab, %rdi
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
xor $44965, %rcx

// Load
lea addresses_WT+0xc9bb, %r15
clflush (%r15)
nop
nop
and %rsi, %rsi
movb (%r15), %al
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_D+0x1cbb, %rcx
and $63006, %rsi
mov (%rcx), %eax
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
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 6496}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
