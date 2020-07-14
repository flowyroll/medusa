.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2004, %rdx
nop
nop
nop
nop
and %rax, %rax
movb $0x61, (%rdx)
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x163f5, %rsi
lea addresses_WT_ht+0xc445, %rdi
nop
nop
cmp $52587, %rax
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
add $62221, %rax
lea addresses_WT_ht+0x15245, %r12
nop
nop
nop
nop
nop
inc %rsi
movups (%r12), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x10f45, %rdi
nop
nop
nop
and $17049, %rsi
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
xor $58730, %rsi
lea addresses_WT_ht+0x1a4e5, %rsi
lea addresses_WT_ht+0x1184d, %rdi
nop
nop
nop
add $49890, %rdx
mov $25, %rcx
rep movsw
nop
mfence
lea addresses_WT_ht+0x1d845, %rsi
lea addresses_normal_ht+0x12055, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $31, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x7a1f, %r11
nop
nop
xor $4530, %rax
mov (%r11), %cx
nop
nop
inc %r12
lea addresses_WC_ht+0xa2a7, %r12
nop
nop
nop
nop
nop
and $16250, %rax
mov (%r12), %rdx
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xe805, %r12
and %rsi, %rsi
mov (%r12), %rcx
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x45dd, %rbx
nop
nop
nop
cmp $37896, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rbx)
nop
nop
add %r15, %r15

// Store
lea addresses_UC+0x15b45, %rax
nop
nop
nop
and $11136, %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and $40397, %r12

// Load
lea addresses_normal+0x1af45, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $39867, %r9
mov (%rbx), %r13w
nop
nop
cmp $64856, %rbx

// Store
lea addresses_WC+0xab45, %r9
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_WC+0x1a545, %r13
nop
nop
nop
nop
nop
cmp $57769, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
cmp $64538, %r13

// Store
lea addresses_UC+0x15b45, %rax
xor $54771, %r13
movl $0x51525354, (%rax)
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_RW+0x1d345, %rbx
nop
inc %r13
movb (%rbx), %r9b
nop
dec %rbx

// Store
lea addresses_normal+0xd5a5, %r9
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r9)
nop
nop
inc %rax

// REPMOV
lea addresses_UC+0x5849, %rsi
lea addresses_normal+0x4145, %rdi
cmp %r10, %r10
mov $32, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_D+0x15685, %r12
nop
sub %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
xor $61515, %r15

// Store
lea addresses_normal+0x1b6e5, %r9
nop
nop
nop
nop
nop
and $26984, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
mfence

// Store
lea addresses_PSE+0x7ad5, %rcx
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
inc %r15

// Load
lea addresses_normal+0xcf45, %rdi
nop
add %r13, %r13
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
cmp $35754, %r13

// REPMOV
lea addresses_RW+0xf943, %rsi
lea addresses_UC+0x19f45, %rdi
nop
cmp %rbx, %rbx
mov $11, %rcx
rep movsb
nop
nop
cmp $64396, %rax

// Faulty Load
lea addresses_UC+0x15b45, %r15
nop
nop
nop
nop
xor %r13, %r13
mov (%r15), %r12w
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
