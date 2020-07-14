.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b23, %r8
clflush (%r8)
cmp $47950, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x8123, %rsi
lea addresses_A_ht+0x3923, %rdi
nop
nop
xor $18430, %r13
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x119b1, %r14
clflush (%r14)
nop
nop
sub $47287, %rdi
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x2c23, %rsi
lea addresses_UC_ht+0x12cbf, %rdi
and %rbx, %rbx
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x15123, %rdi
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %r13
nop
and %r8, %r8
lea addresses_normal_ht+0x19ae3, %rsi
lea addresses_WC_ht+0x1d0a3, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $83, %rcx
rep movsq
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0xff9b, %r13
clflush (%r13)
nop
nop
nop
nop
sub $35216, %r14
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
and $63493, %r8
lea addresses_UC_ht+0x3b23, %rsi
lea addresses_normal_ht+0xa5f7, %rdi
clflush (%rsi)
nop
nop
cmp $32000, %rax
mov $24, %rcx
rep movsq
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1cb23, %rsi
lea addresses_UC_ht+0xa7e5, %rdi
nop
nop
nop
nop
nop
add $28801, %rax
mov $93, %rcx
rep movsl
add $46463, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx

// Store
lea addresses_A+0x19ca3, %r9
nop
nop
nop
and %r11, %r11
movb $0x51, (%r9)
and %rbx, %rbx

// Store
lea addresses_UC+0x2223, %r14
nop
nop
nop
add %r8, %r8
movw $0x5152, (%r14)
nop
nop
dec %r9

// Store
lea addresses_normal+0xf923, %r11
nop
cmp $5684, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovntdq %ymm6, (%r11)
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x10323, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%r15), %r14b
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'00': 372}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
