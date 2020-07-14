.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1791b, %rsi
lea addresses_normal_ht+0x100db, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $12, %rcx
rep movsw
add $49437, %rax
lea addresses_WC_ht+0x100fb, %r9
nop
nop
nop
nop
nop
and $16898, %r11
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
sub $25685, %rcx
lea addresses_UC_ht+0xe0fb, %rdi
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
dec %r11
lea addresses_D_ht+0x187fb, %rsi
lea addresses_UC_ht+0x3723, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $26, %rcx
rep movsl
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x8fb, %rdi
nop
nop
nop
sub $40084, %rsi
mov (%rdi), %r9
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x2b8f, %rsi
lea addresses_D_ht+0x4cfb, %rdi
nop
nop
nop
nop
cmp $29964, %r13
mov $110, %rcx
rep movsl
nop
nop
nop
nop
nop
add $38142, %rdi
lea addresses_UC_ht+0x84fb, %r13
nop
and %r11, %r11
mov (%r13), %si
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x19b7b, %rbp
nop
nop
nop
nop
sub $30888, %r11
mov (%rbp), %ax
cmp %r13, %r13
lea addresses_A_ht+0xfb, %rsi
lea addresses_D_ht+0x16783, %rdi
nop
cmp $18830, %rbp
mov $91, %rcx
rep movsq
dec %rdi
lea addresses_D_ht+0x122f7, %r13
nop
nop
nop
xor %r11, %r11
mov (%r13), %rbp
nop
nop
nop
nop
nop
sub $20868, %rax
lea addresses_UC_ht+0x3bca, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rsi), %edi
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x89fb, %rcx
nop
nop
nop
add $53313, %r9
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
cmp $12694, %rbp
lea addresses_A_ht+0x1b4fb, %rsi
lea addresses_A_ht+0x11dfb, %rdi
nop
nop
and $30402, %rax
mov $123, %rcx
rep movsq
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x907b, %rax
nop
cmp %rdi, %rdi
movb (%rax), %r11b
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rdx

// Load
lea addresses_UC+0x95db, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%r15), %r9
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WC+0x131fb, %r14
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9

// Load
mov $0x490e13000000079b, %r15
dec %r9
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
and %r10, %r10

// Load
mov $0x10919800000008fb, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %rdx
mov (%r15), %r13w
nop
nop
nop
add %r9, %r9

// Store
lea addresses_UC+0xe5fb, %r15
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
nop
nop
sub $46276, %r14

// Faulty Load
mov $0x10919800000008fb, %r13
nop
xor $34312, %r10
movb (%r13), %dl
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 9403}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
