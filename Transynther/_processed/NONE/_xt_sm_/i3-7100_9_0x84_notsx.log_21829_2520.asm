.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc966, %rsi
lea addresses_WC_ht+0x1552, %rdi
nop
add %r8, %r8
mov $18, %rcx
rep movsl
nop
xor $38683, %rsi
lea addresses_WC_ht+0xe78a, %rsi
lea addresses_WC_ht+0x3e4a, %rdi
nop
nop
dec %rax
mov $119, %rcx
rep movsq
nop
nop
xor $17549, %r8
lea addresses_A_ht+0xbf0a, %rdi
nop
nop
and $54702, %r14
mov (%rdi), %eax
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xe5d4, %rsi
lea addresses_UC_ht+0xdf0a, %rdi
nop
nop
sub $28363, %r11
mov $45, %rcx
rep movsl
nop
nop
add %r8, %r8
lea addresses_A_ht+0x151ce, %rsi
lea addresses_D_ht+0x15da1, %rdi
nop
nop
nop
and $43587, %rbx
mov $16, %rcx
rep movsb
nop
nop
nop
nop
sub $64855, %r14
lea addresses_WC_ht+0x16408, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %rax, %rax
mov (%r8), %bx
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0xfe4d, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1b30a, %rsi
lea addresses_D_ht+0x17f0a, %rdi
nop
nop
inc %rax
mov $36, %rcx
rep movsq
nop
nop
add %r8, %r8
lea addresses_D_ht+0x10e0a, %rsi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rsi)
xor $22344, %rax
lea addresses_A_ht+0x1b6a, %rbx
nop
nop
nop
and %r14, %r14
movb $0x61, (%rbx)
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x125a, %rbx
nop
nop
nop
and %r8, %r8
movb (%rbx), %cl
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xb60a, %rcx
nop
nop
nop
nop
nop
inc %r8
mov (%rcx), %rbx
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x92e2, %r14
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r14)
nop
nop
cmp $50770, %r11

// Store
lea addresses_PSE+0x1f0a, %r14
nop
nop
nop
cmp $39863, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
cmp $32100, %r9

// Store
lea addresses_PSE+0x1f0a, %rcx
nop
cmp $55543, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rcx)
nop
dec %r12

// Load
lea addresses_D+0x920a, %rcx
nop
nop
dec %r11
mov (%rcx), %r14w
nop
nop
sub $16978, %rcx

// Store
lea addresses_normal+0xb90a, %r13
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r13)
xor $30993, %r13

// REPMOV
lea addresses_D+0x1b70a, %rsi
lea addresses_D+0x180a, %rdi
nop
nop
nop
nop
nop
and $20979, %r13
mov $39, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0x5a76, %r13
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0xaf0a, %r9
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r9)
nop
nop
nop
sub $15601, %r14

// Store
lea addresses_D+0x270a, %rsi
nop
nop
sub $12539, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
xor $20836, %rdi

// Faulty Load
lea addresses_PSE+0x1f0a, %r12
nop
nop
nop
sub $1826, %r11
mov (%r12), %r14d
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
