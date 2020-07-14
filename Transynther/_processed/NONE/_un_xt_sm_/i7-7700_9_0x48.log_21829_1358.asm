.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xbb9, %r8
dec %r9
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x928d, %rsi
lea addresses_normal_ht+0x1e4d9, %rdi
nop
inc %r12
mov $31, %rcx
rep movsq
nop
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x1d689, %r8
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r8
movntdq %xmm6, (%r8)
nop
nop
nop
nop
nop
add $43999, %r12
lea addresses_A_ht+0x32b9, %r12
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r12)
cmp $46592, %r12
lea addresses_normal_ht+0x4eb9, %rdi
nop
and $30628, %rdx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r11
inc %r9
lea addresses_D_ht+0x81e9, %rsi
lea addresses_D_ht+0x9f99, %rdi
nop
nop
nop
nop
and $37632, %r8
mov $41, %rcx
rep movsq
cmp $24406, %rdx
lea addresses_WT_ht+0x32b9, %rsi
lea addresses_WT_ht+0x1539, %rdi
nop
nop
cmp $20472, %r9
mov $34, %rcx
rep movsq
nop
sub $16216, %rdi
lea addresses_WT_ht+0x1b4db, %rsi
lea addresses_UC_ht+0x1516d, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x2739, %rsi
lea addresses_WC_ht+0x9df1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r9, %r9
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xa45, %rsi
lea addresses_A+0x17cb9, %rdi
nop
nop
nop
nop
mfence
mov $92, %rcx
rep movsw
nop
nop
xor $238, %r8

// Store
lea addresses_UC+0x60b9, %r13
and $34341, %rbx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_UC+0x60b9, %rcx
clflush (%rcx)
and $54467, %rdi
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'52': 21699, '79': 130}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 79 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 79 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
