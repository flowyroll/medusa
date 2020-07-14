.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc000, %rsi
lea addresses_D_ht+0x6800, %rdi
nop
nop
nop
nop
cmp $21574, %r11
mov $18, %rcx
rep movsw
dec %r14
lea addresses_A_ht+0x17000, %r11
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
sub %r8, %r8
lea addresses_normal_ht+0xad38, %r8
nop
nop
inc %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r8)
nop
nop
dec %rdi
lea addresses_WT_ht+0x1e340, %r15
nop
nop
nop
nop
and %rdi, %rdi
mov (%r15), %r14w
add %rcx, %rcx
lea addresses_WT_ht+0x17e88, %rdi
nop
and %r11, %r11
movl $0x61626364, (%rdi)
dec %rcx
lea addresses_WC_ht+0x16bc4, %rdi
cmp %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x123c0, %rsi
lea addresses_WT_ht+0x85b8, %rdi
nop
nop
nop
cmp $17913, %rbp
mov $33, %rcx
rep movsq
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1b00, %r14
nop
sub $2420, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
cmp $44438, %rdi

// Load
lea addresses_WT+0x11744, %r14
clflush (%r14)
nop
add $1785, %rdi
mov (%r14), %r9
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_A+0x2cc0, %r15
nop
sub %rbx, %rbx
movw $0x5152, (%r15)
nop
inc %rdi

// Store
lea addresses_PSE+0x4900, %rdi
cmp $45535, %r15
movb $0x51, (%rdi)
nop
nop
inc %r15

// Store
lea addresses_WT+0xb8e6, %r14
inc %rbp
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_PSE+0x16deb, %rbx
nop
and $31125, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x1f380, %r14
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r14)
nop
sub %rsi, %rsi

// Load
lea addresses_D+0x8580, %r15
nop
nop
nop
nop
and %rdi, %rdi
mov (%r15), %r9d
nop
nop
xor $7136, %r15

// Store
lea addresses_PSE+0x26fe, %r9
nop
nop
and %r14, %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x11400, %rbx
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
mov $0x2c3590000000800, %rbx
nop
nop
sub $44562, %rsi
mov (%rbx), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
