.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3e9c, %r10
nop
nop
sub $23212, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r10
movaps %xmm3, (%r10)
nop
nop
nop
nop
add $65425, %r14
lea addresses_WT_ht+0x1d37c, %rsi
lea addresses_WC_ht+0x1a84c, %rdi
nop
nop
and %r15, %r15
mov $77, %rcx
rep movsl
xor $23998, %r10
lea addresses_WC_ht+0xa1dc, %rsi
lea addresses_UC_ht+0x148dc, %rdi
nop
nop
nop
dec %r11
mov $22, %rcx
rep movsq
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xf31c, %r11
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r11)
nop
add $1830, %rsi
lea addresses_WC_ht+0x229d, %rsi
lea addresses_WT_ht+0x67dc, %rdi
cmp %r14, %r14
mov $75, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x39dc, %rsi
lea addresses_UC_ht+0x13fdc, %rdi
nop
nop
cmp %r13, %r13
mov $98, %rcx
rep movsl
nop
add $45428, %r15
lea addresses_WT_ht+0xd7dc, %rsi
nop
add $37652, %rcx
movb $0x61, (%rsi)
dec %rcx
lea addresses_normal_ht+0x13dc, %r10
nop
cmp $30706, %r13
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x17dc, %r14
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r14
movaps %xmm4, (%r14)
nop
nop
inc %rsi
lea addresses_WT_ht+0x1981c, %rsi
lea addresses_A_ht+0x14298, %rdi
nop
and %r13, %r13
mov $14, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x159dc, %r14
nop
inc %r13
mov (%r14), %edi
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x10544, %rcx
nop
nop
nop
nop
cmp $23661, %r11
mov (%rcx), %r10
and $16591, %r15
lea addresses_normal_ht+0x187a4, %rdi
nop
nop
nop
nop
nop
add $20909, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
mov $0x5fbeea00000009dc, %rcx
clflush (%rcx)
nop
nop
sub %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
add %rbp, %rbp

// Store
lea addresses_UC+0xabdc, %rdi
nop
nop
add $17804, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
add %r9, %r9

// Load
lea addresses_UC+0xabdc, %rdi
nop
nop
nop
nop
dec %r13
movb (%rdi), %dl
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0xf3dc, %rdi
nop
nop
nop
nop
nop
add $44102, %r9
movw $0x5152, (%rdi)
nop
nop
nop
nop
and $16205, %r15

// Store
lea addresses_RW+0x1ecdc, %r15
sub $23879, %rdi
movb $0x51, (%r15)
nop
nop
and %rdx, %rdx

// Store
mov $0xcdc, %rdx
nop
nop
nop
and $4382, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
cmp $22374, %rbp

// Store
mov $0xa30, %r15
nop
nop
and %r13, %r13
movl $0x51525354, (%r15)
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_UC+0xabdc, %rcx
add %rbp, %rbp
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'58': 21654, '00': 175}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
