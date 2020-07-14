.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1220e, %rsi
lea addresses_D_ht+0x1bb21, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $90, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xc577, %rsi
lea addresses_UC_ht+0x2617, %rdi
nop
nop
nop
sub %r10, %r10
mov $75, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_A_ht+0x1e137, %r13
nop
nop
nop
xor $52283, %rdx
movl $0x61626364, (%r13)
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xb677, %r8
nop
nop
nop
nop
add $3623, %rdx
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
xor $10158, %rdx
lea addresses_UC_ht+0x1c06f, %rcx
nop
inc %rdx
mov (%rcx), %r10d
nop
and $41208, %r8
lea addresses_D_ht+0x102b7, %rsi
lea addresses_WT_ht+0x12377, %rdi
nop
nop
nop
add %r8, %r8
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
add $18655, %r10
lea addresses_UC_ht+0x9e77, %rsi
nop
nop
cmp %rcx, %rcx
movb (%rsi), %r8b
nop
nop
nop
xor $14863, %rsi
lea addresses_WT_ht+0x102b7, %rdx
nop
nop
inc %r13
movb (%rdx), %r8b
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x497b, %rsi
clflush (%rsi)
nop
nop
nop
and %r13, %r13
movb $0x61, (%rsi)
cmp $49738, %rdi
lea addresses_A_ht+0x1d177, %rdx
inc %r8
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x344, %r11
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_UC+0x1a0b7, %rbp
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x1c777, %rdi
nop
and %rsi, %rsi
movb $0x51, (%rdi)
nop
nop
nop
nop
add $42682, %rbp

// Faulty Load
lea addresses_UC+0x19e77, %rbp
nop
nop
nop
nop
dec %rdi
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'4b': 14, 'ef': 1, '03': 13, '0f': 16, 'ce': 13, '37': 20, '29': 1, 'ff': 1, '38': 66, '00': 20718, '40': 7, 'c6': 1, '70': 18, '3d': 1, 'a5': 5, 'cb': 1, '31': 10, '01': 21, '46': 826, 'c3': 22, '69': 1, 'f3': 1, 'f9': 3, '34': 13, '28': 29, '97': 7}
00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4b 00 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
