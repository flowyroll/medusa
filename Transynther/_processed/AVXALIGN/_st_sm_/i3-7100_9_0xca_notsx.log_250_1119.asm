.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6731, %r11
nop
and %rdx, %rdx
movw $0x6162, (%r11)
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0xdc41, %rcx
cmp $15694, %r10
mov (%rcx), %ebp
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x4811, %rsi
lea addresses_normal_ht+0x7a83, %rdi
nop
nop
cmp $6580, %r15
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $27604, %rdx
lea addresses_UC_ht+0xb2f1, %rsi
lea addresses_UC_ht+0xef1, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $8610, %r10
mov $62, %rcx
rep movsq
nop
dec %r10
lea addresses_UC_ht+0x1c1f1, %rsi
lea addresses_normal_ht+0x9731, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $101, %rcx
rep movsl
add $28552, %rdi
lea addresses_UC_ht+0x78c1, %rsi
lea addresses_UC_ht+0x168f1, %rdi
nop
nop
nop
nop
inc %rbp
mov $64, %rcx
rep movsq
and $41345, %rcx
lea addresses_UC_ht+0x187f1, %rsi
add %r15, %r15
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
xor $57092, %r11
lea addresses_WT_ht+0x802d, %rdx
clflush (%rdx)
nop
nop
nop
sub $64418, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdx)
nop
inc %r10
lea addresses_normal_ht+0xca55, %rsi
lea addresses_D_ht+0x16f1, %rdi
nop
xor $11025, %r10
mov $71, %rcx
rep movsw
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x6f1, %rsi
lea addresses_UC_ht+0xe1b1, %rdi
nop
nop
nop
add $49937, %r10
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x17af1, %rsi
lea addresses_D_ht+0xc2d1, %rdi
nop
nop
nop
nop
cmp $37683, %r11
mov $121, %rcx
rep movsb
add %r15, %r15
lea addresses_WC_ht+0x1eef1, %rsi
lea addresses_A_ht+0x1b97f, %rdi
nop
nop
nop
nop
xor $53105, %r10
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xcef1, %rsi
lea addresses_D_ht+0x6ef1, %rdi
nop
nop
nop
add $13926, %rdx
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_normal+0x1b7f1, %r11
nop
nop
nop
nop
and $16702, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r11)
cmp %rdi, %rdi

// Store
lea addresses_normal+0xb331, %r15
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_US+0x13ef1, %r15
clflush (%r15)
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r15)
nop
nop
nop
xor $27084, %r8

// Store
lea addresses_US+0x13ef1, %r8
cmp %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
xor $50200, %r15

// Store
lea addresses_D+0xc68a, %rax
nop
nop
nop
cmp $8364, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub $6782, %r13

// Faulty Load
lea addresses_US+0x13ef1, %rdi
nop
nop
xor %r11, %r11
mov (%rdi), %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'58': 250}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
