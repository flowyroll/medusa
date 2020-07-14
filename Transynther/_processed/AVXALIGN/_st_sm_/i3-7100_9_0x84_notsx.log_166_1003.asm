.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x133d6, %rsi
lea addresses_WT_ht+0x1d994, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $91, %rcx
rep movsb
nop
nop
nop
nop
and $63405, %r13
lea addresses_WT_ht+0x918c, %r15
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
and $31892, %r12
lea addresses_WT_ht+0x8688, %rsi
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x7994, %r12
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %si
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x4d94, %rsi
lea addresses_D_ht+0x142d4, %rdi
clflush (%rdi)
nop
and %r15, %r15
mov $44, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x2fb4, %rcx
nop
nop
cmp %r15, %r15
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Load
mov $0x3ef4b0000000814, %rsi
nop
nop
nop
nop
and $57939, %r14
movb (%rsi), %r11b
nop
nop
nop
dec %r12

// Store
lea addresses_D+0x9994, %r14
nop
nop
sub $3064, %rbp
movw $0x5152, (%r14)
nop
and %rsi, %rsi

// Store
lea addresses_US+0x97a4, %rbp
nop
sub $23388, %r11
movl $0x51525354, (%rbp)
nop
dec %r11

// Store
lea addresses_normal+0xdc14, %rsi
clflush (%rsi)
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rsi)
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_D+0x9994, %r14
clflush (%r14)
add $53532, %rcx
mov (%r14), %bp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 166}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
