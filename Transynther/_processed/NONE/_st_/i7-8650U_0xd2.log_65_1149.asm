.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16504, %rsi
lea addresses_normal_ht+0x2c44, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $36, %rcx
rep movsq
nop
dec %r15
lea addresses_WC_ht+0x14e64, %rsi
nop
xor %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1e45c, %rbx
nop
nop
and %r10, %r10
movb (%rbx), %r15b
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0xe604, %r10
nop
nop
add $50381, %r14
movl $0x61626364, (%r10)
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0xc090, %rsi
lea addresses_normal_ht+0xa304, %rdi
clflush (%rdi)
cmp $31978, %r15
mov $121, %rcx
rep movsb
add $15224, %rsi
lea addresses_WC_ht+0x16384, %rsi
lea addresses_WT_ht+0x1a004, %rdi
nop
add $53174, %r13
mov $88, %rcx
rep movsb
nop
and $64034, %r13
lea addresses_WT_ht+0xa0a4, %rdi
nop
sub $4794, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
and $49549, %r13
lea addresses_UC_ht+0xa6d2, %rsi
lea addresses_A_ht+0x1b424, %rdi
nop
add %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
and %r10, %r10
lea addresses_A_ht+0x147b4, %rsi
lea addresses_normal_ht+0x103e4, %rdi
nop
nop
nop
nop
nop
and $39305, %r13
mov $20, %rcx
rep movsq
nop
nop
nop
nop
add $46307, %rcx
lea addresses_UC_ht+0x232a, %r10
xor $52533, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Store
mov $0x105b320000000d84, %r9
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r9)
nop
sub %r11, %r11

// Store
lea addresses_PSE+0x1fc, %rcx
nop
nop
and $64082, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
sub $54195, %r11

// Store
lea addresses_normal+0x11604, %r11
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
cmp $44719, %r14

// Store
lea addresses_UC+0x19e04, %r11
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r11)
nop
xor $26860, %rcx

// Store
lea addresses_A+0x1aa04, %r11
nop
add $23128, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %r11
vmovntdq %ymm7, (%r11)
nop
nop
nop
nop
add $63664, %r11

// Faulty Load
lea addresses_UC+0x3a04, %r15
xor $24708, %rdx
mov (%r15), %r14d
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'54': 65}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
