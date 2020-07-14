.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc03e, %rsi
lea addresses_normal_ht+0x9abe, %rdi
add $24360, %r12
mov $99, %rcx
rep movsq
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x133e, %rsi
lea addresses_D_ht+0x1811e, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $123, %rcx
rep movsw
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x9abe, %rsi
lea addresses_A_ht+0x193e, %rdi
nop
nop
nop
add $62216, %r10
mov $39, %rcx
rep movsl
nop
nop
add $15138, %rdi
lea addresses_WC_ht+0x10f9e, %rsi
lea addresses_A_ht+0x16cbe, %rdi
cmp %r13, %r13
mov $70, %rcx
rep movsq
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x9abe, %r10
inc %r11
mov (%r10), %r12
nop
cmp %r11, %r11
lea addresses_normal_ht+0x1ba82, %r11
nop
nop
sub %r13, %r13
mov (%r11), %r10d
nop
cmp %r13, %r13
lea addresses_A_ht+0x26be, %rsi
lea addresses_A_ht+0x10ce6, %rdi
nop
nop
nop
and %r12, %r12
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x189e, %rdi
clflush (%rdi)
nop
dec %rsi
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
xor $30943, %r13
lea addresses_D_ht+0x1a6be, %r10
nop
nop
nop
nop
xor $62813, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r10)
nop
nop
sub $18303, %r11
lea addresses_D_ht+0x42be, %r13
nop
nop
nop
nop
cmp $44768, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%r13)
sub %r12, %r12
lea addresses_normal_ht+0x2abe, %rbx
sub %rcx, %rcx
movb (%rbx), %r10b
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x93fe, %rsi
lea addresses_WT_ht+0x333e, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $55, %rcx
rep movsw
add %rdi, %rdi
lea addresses_UC_ht+0x76fe, %rsi
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
mov $0x4477c3000000085e, %r9
nop
nop
nop
sub $12108, %r12
movl $0x51525354, (%r9)
xor $34376, %rbp

// Store
lea addresses_normal+0xc74e, %r15
nop
inc %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)

// Exception!!!
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
sub $31190, %r10

// Store
lea addresses_UC+0xabe, %rdi
nop
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add $20784, %r9

// Store
lea addresses_D+0x27be, %r12
clflush (%r12)
nop
nop
nop
add %r9, %r9
movb $0x51, (%r12)
nop
nop
nop
nop
and $64661, %r10

// Store
mov $0x97e, %rdi
xor %rax, %rax
movl $0x51525354, (%rdi)
nop
cmp $42517, %r12

// Faulty Load
lea addresses_normal+0x3abe, %r10
dec %rax
mov (%r10), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'34': 55}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
