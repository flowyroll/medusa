.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7b50, %rsi
lea addresses_WT_ht+0xfdc0, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $100, %rcx
rep movsq
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x4950, %r11
nop
nop
nop
nop
add %r8, %r8
movb $0x61, (%r11)
sub %rcx, %rcx
lea addresses_UC_ht+0x18120, %rsi
lea addresses_A_ht+0x19a50, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $40909, %r8
lea addresses_UC_ht+0x2ac, %rsi
lea addresses_WC_ht+0x1eed0, %rdi
nop
nop
add %r11, %r11
mov $95, %rcx
rep movsq
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0xa9f0, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
movw $0x6162, (%rdi)
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x18e90, %rbp
nop
nop
nop
nop
nop
inc %rdi
mov (%rbp), %cx
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1e350, %r13
nop
nop
nop
cmp $62201, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
sub $55206, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_A+0x14a50, %rdi
nop
nop
nop
nop
cmp $39433, %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WC+0x1dd56, %rax
dec %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movaps %xmm2, (%rax)
add $5495, %rax

// Load
lea addresses_A+0x3950, %r8
nop
nop
and $41347, %r12
movb (%r8), %r13b
nop
nop
add %r11, %r11

// Store
mov $0x1208880000000c12, %r13
nop
nop
dec %r12
movw $0x5152, (%r13)
nop
xor %r12, %r12

// Store
lea addresses_normal+0x1798, %r11
nop
nop
nop
nop
nop
inc %rdi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $4845, %r8

// Faulty Load
lea addresses_US+0x13150, %rdi
nop
nop
nop
and %r13, %r13
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'00': 89}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
