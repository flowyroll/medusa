.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x105ca, %rsi
lea addresses_WC_ht+0x190d0, %rdi
cmp %r13, %r13
mov $43, %rcx
rep movsl
add %r11, %r11
lea addresses_normal_ht+0x944a, %r11
nop
nop
nop
nop
inc %r8
mov (%r11), %rsi
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1e5ea, %rsi
lea addresses_UC_ht+0x1c3ca, %rdi
nop
add %r8, %r8
mov $7, %rcx
rep movsq
and $55079, %r8
lea addresses_WT_ht+0x11492, %r8
nop
nop
nop
nop
sub $53737, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
xor $24912, %r13
lea addresses_D_ht+0xd24a, %rsi
lea addresses_D_ht+0x4180, %rdi
nop
nop
nop
and $54254, %r12
mov $63, %rcx
rep movsw
nop
nop
nop
nop
xor $3279, %r13
lea addresses_UC_ht+0x17bca, %rsi
lea addresses_normal_ht+0x81ca, %rdi
clflush (%rsi)
cmp $52512, %r9
mov $63, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xe98a, %r11
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
cmp $35136, %r9
lea addresses_normal_ht+0x10fca, %rsi
lea addresses_D_ht+0x133ca, %rdi
nop
nop
nop
and %r9, %r9
mov $5, %rcx
rep movsb
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x1b3ca, %r11
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%r11)
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1a132, %rsi
lea addresses_A_ht+0x18dda, %rdi
nop
nop
inc %r13
mov $65, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x198a, %rsi
lea addresses_WT_ht+0x27ca, %rdi
cmp %r11, %r11
mov $83, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x43ca, %r8
nop
cmp $32160, %r12
movb (%r8), %r11b
nop
nop
nop
nop
xor $12873, %rdi
lea addresses_WC_ht+0xb942, %rsi
lea addresses_WT_ht+0xcdf2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r9, %r9
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1a9ca, %rsi
lea addresses_WT_ht+0x986a, %rdi
nop
xor $62239, %r12
mov $95, %rcx
rep movsb
nop
dec %r11
lea addresses_A_ht+0xc3ca, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rsi), %r13d
nop
nop
nop
nop
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Load
lea addresses_normal+0x13fca, %r12
nop
nop
nop
xor $45205, %r14
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x90a, %r15
add $23721, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r15)
nop
sub %r15, %r15

// Store
lea addresses_WC+0x1ca, %r14
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r14)
nop
and %rdx, %rdx

// Load
lea addresses_UC+0x6442, %r12
nop
and %rdx, %rdx
mov (%r12), %r15w
nop
nop
nop
nop
nop
xor $1367, %rax

// Faulty Load
lea addresses_US+0x63ca, %r8
nop
nop
sub %rdx, %rdx
mov (%r8), %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 793}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
