.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1df1f, %rdi
nop
and %rbx, %rbx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x2fff, %rsi
lea addresses_D_ht+0x18f1f, %rdi
nop
nop
nop
xor %rax, %rax
mov $115, %rcx
rep movsq
dec %rsi
lea addresses_WC_ht+0xcf1f, %rdi
nop
nop
nop
dec %rdx
movw $0x6162, (%rdi)
inc %rbx
lea addresses_D_ht+0x5f3f, %rbx
nop
nop
add %rsi, %rsi
movb (%rbx), %al
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x631f, %rbx
nop
nop
nop
xor $32288, %r9
movb (%rbx), %cl
nop
nop
sub $20725, %r9
lea addresses_WT_ht+0x1531f, %rcx
nop
nop
nop
add %rsi, %rsi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rdi
cmp %rcx, %rcx
lea addresses_normal_ht+0x15b1f, %rdx
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xf31f, %rsi
lea addresses_WT_ht+0x1438f, %rdi
nop
nop
nop
nop
sub $32882, %r13
mov $100, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x1c27f, %r9
nop
nop
add %r13, %r13
mov (%r9), %ax
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0xe78f, %rsi
nop
nop
cmp $32981, %rcx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
add $41324, %rcx
lea addresses_normal_ht+0x31f, %rbx
nop
nop
nop
nop
nop
cmp $38810, %rdx
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x10f1f, %rbp
nop
sub $5190, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
and $9525, %rbp

// Load
lea addresses_normal+0x1bc1f, %r9
nop
nop
xor %rdi, %rdi
mov (%r9), %r13
sub $8437, %rbp

// Store
lea addresses_US+0x12d4f, %rcx
clflush (%rcx)
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0xee7, %rdi
nop
nop
nop
add $36041, %r11
movw $0x5152, (%rdi)
nop
sub $4663, %rcx

// Store
lea addresses_A+0x1b1f, %r13
nop
nop
inc %rcx
movw $0x5152, (%r13)
nop
nop
inc %r15

// Store
lea addresses_US+0x4b1f, %r15
xor $35573, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movaps %xmm4, (%r15)
nop
nop
nop
inc %rcx

// Store
lea addresses_UC+0x18e20, %r13
dec %rdi
movl $0x51525354, (%r13)
dec %rdi

// Load
mov $0xc1f, %r15
nop
nop
add %r13, %r13
movb (%r15), %cl
add %rbp, %rbp

// Load
lea addresses_D+0x1aef, %rdi
nop
xor $30336, %r9
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x753b, %r9
cmp $12205, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
xor $53492, %r11

// Store
lea addresses_UC+0x431f, %r13
clflush (%r13)
nop
add %rbp, %rbp
movb $0x51, (%r13)
nop
nop
nop
nop
cmp $44246, %rcx

// Faulty Load
lea addresses_A+0x1b1f, %r11
clflush (%r11)
sub %r9, %r9
mov (%r11), %bp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 84}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
