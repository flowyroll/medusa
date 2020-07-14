.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17bec, %r9
nop
xor %r13, %r13
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
add $36729, %r11
lea addresses_WT_ht+0x1478, %r9
add $18436, %rax
movw $0x6162, (%r9)
nop
nop
add %r13, %r13
lea addresses_A_ht+0xfeb8, %r8
clflush (%r8)
cmp $38323, %rcx
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xc9bc, %rsi
lea addresses_WC_ht+0x1377c, %rdi
nop
nop
nop
sub %r13, %r13
mov $58, %rcx
rep movsl
and $61317, %r9
lea addresses_A_ht+0x1cd8c, %r13
clflush (%r13)
nop
sub $5274, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r13)
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x123cc, %r13
nop
nop
nop
nop
and %rcx, %rcx
movb (%r13), %al
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x2c2c, %rbx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%rbx)
add %r11, %r11

// Store
lea addresses_WC+0x1665a, %r11
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
sub $18797, %r10

// Load
lea addresses_normal+0x630c, %r8
nop
nop
nop
nop
dec %r15
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
and $43694, %r10

// Store
mov $0x50c, %rcx
nop
nop
dec %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor $55972, %r10

// REPMOV
lea addresses_WC+0x348c, %rsi
lea addresses_WC+0x9c0c, %rdi
nop
nop
nop
nop
sub $20387, %rbx
mov $3, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx

// Faulty Load
mov $0x7b8261000000050c, %r15
nop
cmp %r10, %r10
movb (%r15), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 6906, '54': 14923}
00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 00 54 00 00 00 54 54 54 54 00 54 54 54 00 54 00 00 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 54 00 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 00 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 00 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 00 54 00 54 54 00 54 54 00 54 00 54 54 00 00 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 00 54 54 54 00 54 00 54 00 00 54 54 00 54 00 54 54 54 00 54 00 00 54 00 00 54 00 00 54 00 00 54 54 00 54 54 00 54 54 54 54 00 54 54 54 00 54 00 54 00 00 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 00 00 54 54 00 00 00 54 00 00 54 54 54 54 54 54 00 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 00 54 00 54 54 54 00 54 00 54 54 00 54 54 54 00 00 54 54 54 54 00 54 54 00 00 54 54 00 54 00 54 00 00 54 54 00 54 00 00 00 54 00 00 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 54 00 00 00 54 00 54 54 00 00 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 00 00 54 54 54 54 54 00 54 54 54 00 00 00 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 00 00 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 00 54 54 00 00 00 00 00 54 00 00 54 54 00 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 00 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 00 00 00 00 00 00 54 00 54 00 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 00 00 54 00 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 00 54 00 54 54 54 54 00 00 00 54 00 00 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 00 54 54 00 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 00 54 54 54 54 00 00 00 00 54 00 54 00 54 00 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 54 54 54 00 00 54 00 00 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 00 00 54 00 54 54 00 00 00 54 54 54 54 00 54 54 54 00 54 00 00 00 54 54 54 54 54 00 00 54 00 54 00 00 54 54 00 54 54 54 00 54 54 54 54 54 00 00 54 00 54 54 54 54 54 00 54 54 54 00 54 54 00 00 54 00 54 54 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 00 54 00 00 00 54 00 54 54 00 54 54 00 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 00 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 00 00 54 54 54 54 54 54
*/
