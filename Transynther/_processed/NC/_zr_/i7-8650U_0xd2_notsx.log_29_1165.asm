.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16049, %r12
nop
nop
nop
xor $15296, %r11
mov (%r12), %ax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x5ebe, %rsi
lea addresses_WT_ht+0x1d63e, %rdi
add %rbx, %rbx
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x162db, %r11
nop
nop
nop
cmp %rax, %rax
mov (%r11), %ecx
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x9949, %rdi
sub $35799, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
inc %rsi
lea addresses_D_ht+0x15902, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov (%rsi), %r11d
nop
cmp $17405, %rcx
lea addresses_WC_ht+0x19142, %rbx
nop
nop
nop
nop
xor %rax, %rax
mov (%rbx), %rsi
nop
nop
nop
nop
add $959, %rdx
lea addresses_A_ht+0x1d542, %rsi
xor %rax, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0xd40a, %rcx
sub $56906, %r11
mov (%rcx), %bx
nop
nop
nop
nop
sub $51540, %rbx
lea addresses_normal_ht+0x3102, %rsi
lea addresses_D_ht+0x8842, %rdi
nop
nop
nop
nop
dec %r12
mov $99, %rcx
rep movsq
nop
nop
add $34659, %rcx
lea addresses_WC_ht+0x14e62, %rsi
lea addresses_WC_ht+0xe42, %rdi
nop
nop
nop
nop
nop
xor $32679, %r11
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1ef82, %rax
clflush (%rax)
nop
nop
nop
nop
sub $51584, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x1c7c2, %rsi
lea addresses_A_ht+0xfd42, %rdi
nop
and %rbx, %rbx
mov $13, %rcx
rep movsq
nop
dec %r11
lea addresses_A_ht+0xa142, %rsi
lea addresses_D_ht+0x13090, %rdi
sub $46932, %r12
mov $10, %rcx
rep movsw
add $12191, %r11
lea addresses_WC_ht+0x1df42, %rbx
nop
nop
nop
add $12071, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rsi

// Store
mov $0x52c5a50000000692, %rbx
nop
nop
and $57827, %r9
movl $0x51525354, (%rbx)
nop
dec %r10

// Load
mov $0x2ffa290000000942, %r14
nop
nop
nop
nop
nop
and %rbx, %rbx
movb (%r14), %r9b
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x2422, %r15
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r15)
nop
sub $33143, %r15

// Load
lea addresses_PSE+0x11d42, %rsi
nop
nop
nop
xor %r12, %r12
movb (%rsi), %r9b
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x142, %rbx
cmp %r10, %r10
movw $0x5152, (%rbx)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_A+0x1b142, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub $15407, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r12)
nop
nop
and $56282, %r15

// Faulty Load
mov $0x2ffa290000000942, %r9
nop
nop
nop
xor %r14, %r14
mov (%r9), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
