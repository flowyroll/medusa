.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x12a8f, %rsi
lea addresses_WC_ht+0x16153, %rdi
nop
nop
nop
add %r14, %r14
mov $10, %rcx
rep movsq
nop
nop
sub $192, %rdx
lea addresses_WT_ht+0x14dab, %rdx
nop
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%rdx)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xe8f5, %rsi
lea addresses_WC_ht+0x128ef, %rdi
nop
dec %r13
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $50410, %r13
lea addresses_D_ht+0x94ef, %rdx
clflush (%rdx)
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x28ef, %rsi
lea addresses_D_ht+0x151af, %rdi
inc %r14
mov $57, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1d6b2, %rsi
lea addresses_UC_ht+0x1be2f, %rdi
and %r14, %r14
mov $100, %rcx
rep movsb
nop
xor $34738, %r13
lea addresses_A_ht+0x1a4ef, %rsi
lea addresses_normal_ht+0x52d6, %rdi
clflush (%rdi)
nop
nop
and $20280, %r14
mov $29, %rcx
rep movsw
nop
nop
and $8443, %r13
lea addresses_WC_ht+0x7eef, %rdi
nop
and $22214, %rcx
movb (%rdi), %dl
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1a441, %rsi
nop
nop
cmp %r14, %r14
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1913f, %rsi
lea addresses_WT_ht+0x252a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add $54762, %r11
mov $81, %rcx
rep movsl
cmp $60656, %rdi
lea addresses_normal_ht+0x110ef, %r13
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r13)
dec %r14
lea addresses_UC_ht+0xdb6f, %r11
inc %r9
mov (%r11), %edi
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1966f, %rsi
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor $20033, %r13

// REPMOV
lea addresses_UC+0x4f2f, %rsi
lea addresses_D+0xcfef, %rdi
nop
nop
nop
add $12648, %r8
mov $49, %rcx
rep movsw
nop
nop
nop
and $4769, %rdi

// Store
lea addresses_RW+0xe5ef, %rcx
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
and $51281, %rsi

// Store
lea addresses_RW+0x19aef, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
cmp $15284, %r13

// Store
lea addresses_US+0x1e0ef, %r10
nop
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%r10)
nop
add $10805, %rdi

// Store
lea addresses_RW+0xeeef, %r13
nop
nop
nop
nop
add $4025, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r13)

// Exception!!!
nop
mov (0), %r13
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x14daf, %rcx
nop
nop
nop
add $30851, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x138ef, %r13
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%r13)
nop
add $11571, %rsi

// Store
lea addresses_US+0x164ef, %r11
sub $16655, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
xor $10066, %rdi

// Store
mov $0x30103e000000004f, %r10
nop
sub $31040, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x198ef, %r13
xor $60773, %rdi
mov (%r13), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
