.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16b6, %r13
nop
nop
nop
nop
cmp %r12, %r12
mov (%r13), %rbp
sub $58639, %r12
lea addresses_normal_ht+0xb9c6, %r15
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r15)
and $47743, %r13
lea addresses_D_ht+0xb4f6, %rsi
lea addresses_WC_ht+0x164b6, %rdi
clflush (%rsi)
nop
nop
dec %rdx
mov $47, %rcx
rep movsl
nop
xor $41790, %r15
lea addresses_D_ht+0x562e, %r12
xor $57719, %r15
movl $0x61626364, (%r12)
cmp $17035, %rdi
lea addresses_normal_ht+0xe2b6, %rsi
lea addresses_UC_ht+0xfcb6, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $72, %rcx
rep movsw
nop
nop
nop
nop
sub $26258, %rcx
lea addresses_A_ht+0xcb6, %r12
sub %rdx, %rdx
movb $0x61, (%r12)
xor %r15, %r15
lea addresses_A_ht+0xaf66, %r13
cmp %rcx, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
xor $26474, %r15
lea addresses_UC_ht+0x2cb6, %rcx
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1a8b6, %r15
nop
nop
nop
nop
nop
cmp $26081, %r13
mov (%r15), %bp
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xb5b6, %rbp
nop
nop
sub $54821, %r13
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xa8b6, %rsi
nop
add $24194, %rbp
movb $0x61, (%rsi)
inc %r12
lea addresses_WC_ht+0x160a6, %rsi
lea addresses_A_ht+0x1c276, %rdi
add %rdx, %rdx
mov $82, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x19bd8, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %r13
movw $0x6162, (%rbp)
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x1ccb6, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdi), %r12d
nop
sub $22447, %rdi
lea addresses_A_ht+0xc37e, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r13), %cx
nop
add $60229, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x8ab6, %rbp
nop
nop
xor $15623, %rsi
mov (%rbp), %r11d
nop
sub $8286, %r8

// Store
lea addresses_UC+0x8166, %rbp
dec %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %rbp
vmovaps %ymm0, (%rbp)
nop
nop
nop
nop
and $45330, %rdx

// Load
lea addresses_normal+0x172b6, %rdx
xor $12452, %rbx
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
dec %r8

// Store
lea addresses_normal+0x6cb6, %rbp
nop
nop
nop
add $54887, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
mov $0x7eeee90000000cb6, %rbx
nop
nop
nop
xor %rdx, %rdx
mov (%rbx), %r11w
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'54': 875, '00': 15, '24': 1}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
