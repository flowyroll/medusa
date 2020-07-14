.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2fc7, %rsi
lea addresses_WC_ht+0xcf6f, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp %rax, %rax
mov $77, %rcx
rep movsw
nop
and %r11, %r11
lea addresses_UC_ht+0x340f, %rsi
lea addresses_normal_ht+0x666f, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $125, %rcx
rep movsl
nop
nop
nop
add $58561, %rcx
lea addresses_normal_ht+0x158f2, %r14
nop
nop
add %rsi, %rsi
mov (%r14), %rax
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x616f, %rsi
lea addresses_A_ht+0x16e6f, %rdi
nop
add %rax, %rax
mov $16, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_A_ht+0x526f, %rsi
lea addresses_WT_ht+0x916f, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $118, %rcx
rep movsw
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1a76f, %rsi
lea addresses_RW+0x9ecf, %rdi
xor %r11, %r11
mov $0, %rcx
rep movsq
nop
nop
dec %r11

// Store
lea addresses_normal+0xa367, %rdi
nop
cmp %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
and %rcx, %rcx

// Store
lea addresses_RW+0xf76f, %r11
nop
nop
nop
nop
nop
add $152, %rsi
movw $0x5152, (%r11)
nop
xor $15074, %r12

// Store
lea addresses_RW+0x247f, %rax
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x456f, %r15
nop
nop
nop
xor $12518, %r12
movb $0x51, (%r15)
sub $19159, %r12

// Load
lea addresses_normal+0x15d6f, %rcx
nop
nop
dec %r11
mov (%rcx), %r12
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_RW+0x1d01d, %rsi
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
sub $43815, %r15

// Store
lea addresses_PSE+0x1416f, %r15
clflush (%r15)
add %rsi, %rsi
movw $0x5152, (%r15)
nop
nop
nop
cmp $6154, %rsi

// Faulty Load
lea addresses_PSE+0x1416f, %rdi
nop
nop
sub %r11, %r11
mov (%rdi), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'52': 617}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
