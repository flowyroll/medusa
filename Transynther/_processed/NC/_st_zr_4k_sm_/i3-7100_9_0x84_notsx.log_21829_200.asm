.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18951, %rsi
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rsi)
sub %r11, %r11
lea addresses_A_ht+0xe1a3, %rbx
add %rdi, %rdi
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x12231, %r13
clflush (%r13)
nop
nop
nop
nop
dec %r9
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x150f1, %r9
nop
inc %r8
mov (%r9), %di
nop
nop
dec %rbx
lea addresses_D_ht+0x1bdf1, %rbx
add %r13, %r13
movw $0x6162, (%rbx)
nop
nop
nop
nop
add $45348, %rsi
lea addresses_D_ht+0x39dd, %rsi
lea addresses_WT_ht+0x7da9, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $94, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x5df1, %r11
nop
nop
nop
nop
nop
and $13296, %rsi
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x11df1, %rsi
lea addresses_WC_ht+0x33f1, %rdi
nop
cmp $15085, %r9
mov $100, %rcx
rep movsl
nop
nop
nop
nop
and $37131, %rdi
lea addresses_WT_ht+0xab91, %r11
xor $49241, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x10175, %r8
nop
nop
nop
nop
sub $14422, %rdi
movb (%r8), %r11b
nop
nop
inc %r8
lea addresses_normal_ht+0x89f1, %rsi
lea addresses_UC_ht+0x170e1, %rdi
nop
inc %rbx
mov $94, %rcx
rep movsl
nop
nop
xor $31439, %r11
lea addresses_UC_ht+0x1e351, %rdi
nop
nop
nop
nop
nop
add $56706, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
and $19058, %r13
lea addresses_A_ht+0x55f1, %rdi
cmp %r9, %r9
mov (%rdi), %r8
nop
add $47250, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_A+0xe7b7, %r13
clflush (%r13)
nop
nop
add %r8, %r8
movb $0x51, (%r13)

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
xor $5200, %rax

// Store
lea addresses_RW+0x1bdf1, %rax
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rax)
nop
xor %r8, %r8

// Store
lea addresses_normal+0x5861, %r13
nop
nop
xor %rax, %rax
movb $0x51, (%r13)
nop
nop
and %r14, %r14

// Store
lea addresses_UC+0x55f1, %rax
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
cmp $34456, %r13

// Store
lea addresses_PSE+0x15df1, %r8
nop
sub $20356, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r8)
cmp %r8, %r8

// Store
mov $0x412f280000000df1, %r13
nop
cmp %r14, %r14
movb $0x51, (%r13)
dec %rax

// Store
lea addresses_D+0x1b6d1, %rax
nop
nop
cmp $10070, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
dec %r12

// Store
lea addresses_A+0xf9c1, %r13
nop
nop
nop
cmp $27636, %rbp
movb $0x51, (%r13)
nop
and $19107, %rax

// Store
lea addresses_RW+0x95f1, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%r8)
nop
dec %r14

// Faulty Load
mov $0x412f280000000df1, %r8
clflush (%r8)
nop
nop
cmp %r12, %r12
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 4210, '51': 17619}
51 51 00 00 51 00 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 00 51 51 00 00 00 00 51 51 51 00 51 51 51 51 51 51 00 00 51 51 00 51 00 51 00 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 00 51 00 00 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 00 51 00 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51 00 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 00 51 00 00 00 51 51 51 00 51 51 51
*/
