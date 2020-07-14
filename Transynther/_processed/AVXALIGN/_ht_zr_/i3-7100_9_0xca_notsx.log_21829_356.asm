.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3d7a, %rdx
nop
nop
nop
nop
cmp $9258, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rdx)
nop
and %rsi, %rsi
lea addresses_A_ht+0x8706, %rsi
lea addresses_UC_ht+0x23a6, %rdi
nop
nop
nop
nop
dec %r15
mov $66, %rcx
rep movsq
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xc836, %rdi
nop
and $8661, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x2f26, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x13c86, %rcx
nop
nop
add $25077, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $43392, %rsi
lea addresses_A_ht+0x7f26, %rcx
clflush (%rcx)
cmp $25253, %r11
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
cmp $32156, %rsi
lea addresses_A_ht+0x30a6, %r11
sub $42590, %rcx
mov (%r11), %r15w
nop
nop
nop
xor $14216, %rdx
lea addresses_D_ht+0x1113, %rsi
lea addresses_WC_ht+0x17b26, %rdi
nop
nop
xor %r8, %r8
mov $91, %rcx
rep movsw
nop
inc %rcx
lea addresses_WC_ht+0x7946, %r8
nop
nop
nop
nop
dec %rbx
movb (%r8), %dl
nop
nop
and $21985, %r8
lea addresses_UC_ht+0x5126, %rsi
lea addresses_UC_ht+0xf66, %rdi
nop
nop
nop
nop
sub $41841, %rdx
mov $99, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x139d5, %rdx
nop
nop
nop
dec %r8
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm1
vpextrq $0, %xmm1, %rsi
nop
cmp %r11, %r11
lea addresses_D_ht+0x676, %rsi
lea addresses_UC_ht+0x3b26, %rdi
nop
nop
nop
nop
sub $14734, %rdx
mov $30, %rcx
rep movsw
sub $7863, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x196fe, %r12
nop
nop
nop
nop
nop
xor $49876, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
and $13648, %rbx

// Store
lea addresses_WT+0x11ba6, %r10
nop
sub $742, %r11
movb $0x51, (%r10)
nop
nop
add %rdx, %rdx

// Store
lea addresses_A+0x9526, %r10
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r10)
cmp %r12, %r12

// Store
mov $0x4613160000000046, %rdx
and %r12, %r12
movb $0x51, (%rdx)
nop
nop
inc %rdi

// Faulty Load
lea addresses_normal+0xcb26, %rdi
nop
nop
add $16722, %rbx
movaps (%rdi), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WT', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'46': 5717, '48': 4, '00': 13801, '47': 1, '45': 2306}
00 00 00 00 00 46 00 00 46 00 46 45 00 46 00 00 00 00 46 45 00 46 00 00 46 45 00 45 00 00 00 46 00 00 45 00 00 46 00 00 00 00 00 46 00 00 46 45 00 00 46 45 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 45 00 00 00 00 00 00 46 00 00 00 46 45 00 46 46 00 00 46 00 00 46 00 00 00 00 46 45 00 46 45 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 45 00 46 46 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 46 00 46 00 00 46 00 00 46 00 00 46 45 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 46 00 00 46 00 00 46 45 00 00 47 00 00 46 00 00 46 00 00 46 45 00 46 00 00 46 00 00 46 00 00 46 00 00 46 45 00 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 45 00 00 00 00 46 00 00 46 00 00 00 46 45 00 46 00 00 46 45 00 00 00 00 46 00 00 00 00 46 45 00 00 46 00 46 45 00 00 46 00 00 00 00 46 45 00 46 00 00 46 45 00 46 00 00 46 00 00 46 00 46 45 00 46 45 00 46 45 00 46 00 00 46 00 00 00 00 00 46 00 46 45 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 46 45 00 46 00 00 46 00 00 46 00 46 45 00 00 46 00 46 45 00 00 46 00 46 45 00 00 00 46 45 00 00 45 00 00 46 00 00 00 00 00 00 46 45 00 00 00 00 45 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 45 00 46 00 46 00 46 00 00 46 45 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 00 00 46 45 00 00 00 45 00 00 00 46 45 00 46 45 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 45 00 00 46 00 00 00 00 00 00 46 00 45 00 46 00 00 46 00 00 46 45 00 46 00 00 46 45 00 46 45 00 00 46 00 00 00 00 46 45 00 46 45 00 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 46 00 46 45 00 00 46 00 00 46 00 00 00 46 45 00 00 45 00 00 46 00 00 46 00 00 00 00 46 46 00 46 00 00 46 00 46 00 45 00 00 46 00 00 45 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 46 00 46 00 00 00 46 00 00 00 46 00 45 00 45 00 00 00 46 00 00 46 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 46 00 45 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 45 00 46 00 00 46 00 00 46 45 00 46 00 46 45 00 00 00 00 46 00 00 46 00 00 46 45 00 46 45 00 00 46 00 46 00 00 46 45 00 00 00 00 00 46 45 00 46 45 00 46 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 46 45 46 00 00 00 46 00 00 46 46 00 46 00 00 46 45 00 46 45 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 46 45 00 46 00 00 46 00 00 46 45 00 46 45 00 00 46 00 00 00 00 46 45 00 00 00 46 45 00 00 00 00 46 45 00 46 00 00 00 46 00 00 46 00 46 45 00 00 00 00 46 45 00 00 00 46 45 00 00 46 00 46 00 00 46 00 00 00 46 45 00 00 00 46 45 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 45 00 00 46 45 00 00 46 00 00 00 00 46 45 00 46 45 00 00 00 00 46 45 00 00 00 46 00 00 46 45 00 00 45 00 46 45 00 46 45 00 00 00 00 46 45 00 00 45 00 00 46 00 00 46 00 00 45 00 46 00 00 46 00 00 46 45 00 00 00 46 45 00 46 45
*/
