.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfe57, %rdi
sub $22711, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
add $35870, %rbp
lea addresses_normal_ht+0x1e0f7, %rsi
lea addresses_normal_ht+0xefbf, %rdi
nop
add %rbp, %rbp
mov $56, %rcx
rep movsl
nop
nop
nop
sub $11290, %rsi
lea addresses_D_ht+0x11417, %rsi
lea addresses_D_ht+0x1a17, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $23, %rcx
rep movsw
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x7757, %rsi
nop
and %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_A+0x9217, %r13
nop
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%r13)
xor $51839, %r8

// Load
lea addresses_UC+0x12c1a, %rsi
nop
nop
cmp $43188, %r8
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
xor $44200, %rdx

// Load
lea addresses_D+0x1844f, %rdi
nop
nop
nop
nop
nop
xor $52376, %rdx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x14e17, %rsi
dec %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
sub $14836, %rax

// Load
lea addresses_A+0x11db7, %rsi
nop
nop
and $33964, %r8
mov (%rsi), %eax
inc %r13

// Faulty Load
lea addresses_PSE+0xf217, %rax
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
