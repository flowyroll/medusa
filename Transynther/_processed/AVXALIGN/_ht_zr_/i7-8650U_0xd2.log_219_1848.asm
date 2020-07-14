.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a74a, %rsi
lea addresses_normal_ht+0x1d91d, %rdi
nop
nop
cmp $41167, %r12
mov $32, %rcx
rep movsl
nop
nop
add %rax, %rax
lea addresses_UC_ht+0xe2ca, %rsi
lea addresses_A_ht+0x1314a, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $122, %rcx
rep movsl
nop
nop
nop
xor $14327, %r12
lea addresses_UC_ht+0x341a, %rsi
lea addresses_A_ht+0x1974a, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $52, %rcx
rep movsl
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1d165, %rdi
nop
nop
nop
nop
nop
xor $19361, %rax
movb (%rdi), %r8b
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xb73a, %rsi
nop
sub %rcx, %rcx
mov (%rsi), %ebp
nop
nop
nop
nop
and $41968, %rsi
lea addresses_WC_ht+0x1ee4a, %rsi
lea addresses_UC_ht+0x12f4a, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $650, %r11
mov $12, %rcx
rep movsw
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x194a, %rsi
lea addresses_WC_ht+0x1790a, %rdi
nop
nop
nop
nop
dec %r11
mov $75, %rcx
rep movsq
nop
nop
inc %rcx
lea addresses_D_ht+0xa6ca, %rdi
and $47900, %rsi
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
add $47674, %r12
lea addresses_UC_ht+0xe14a, %rsi
lea addresses_WT_ht+0x1e05a, %rdi
nop
nop
add $34427, %r12
mov $23, %rcx
rep movsb
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1774a, %rsi
lea addresses_D_ht+0x7caa, %rdi
nop
nop
nop
sub %r11, %r11
mov $47, %rcx
rep movsb
nop
nop
nop
nop
and $16166, %r12
lea addresses_normal_ht+0x1bd12, %rcx
nop
nop
nop
inc %rdi
mov (%rcx), %r12
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_A+0x131ca, %rdx
inc %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_US+0xa0da, %r13
nop
nop
nop
nop
nop
xor %rax, %rax
movb (%r13), %cl
nop
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x1924a, %rdx
nop
nop
nop
nop
nop
sub $50899, %r14
movb $0x51, (%rdx)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_D+0x434a, %r8
clflush (%r8)
nop
nop
nop
xor $23740, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r8)
sub %r13, %r13

// Store
lea addresses_WT+0x1eeca, %r13
xor %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
nop
and %r13, %r13

// Store
lea addresses_WC+0x13155, %r14
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r14)
nop
nop
inc %rdx

// Store
lea addresses_WT+0xb84a, %r9
nop
add %rax, %rax
movb $0x51, (%r9)
dec %r9

// Store
lea addresses_UC+0x194d2, %r13
dec %rdx
movw $0x5152, (%r13)
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_US+0x1ef4a, %r14
nop
nop
nop
sub %r8, %r8
vmovntdqa (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 216, '45': 2, '49': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
