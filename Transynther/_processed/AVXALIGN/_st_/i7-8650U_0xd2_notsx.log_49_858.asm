.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xa526, %r12
nop
and $58082, %rax
mov (%r12), %r13
nop
and $11439, %r10
lea addresses_WC_ht+0x16bc2, %r13
nop
nop
nop
and $23489, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r13
vmovaps %ymm5, (%r13)
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x8526, %rsi
lea addresses_D_ht+0x14f5a, %rdi
clflush (%rsi)
sub $51396, %rbx
mov $14, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1852c, %rbx
nop
nop
nop
cmp $11719, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rbx)
nop
inc %rbx
lea addresses_normal_ht+0x7d26, %rsi
lea addresses_normal_ht+0x4646, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $58, %rcx
rep movsb
nop
inc %r10
lea addresses_D_ht+0x175e6, %rax
nop
nop
sub $50031, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rax)
nop
nop
and $1038, %rax
lea addresses_UC_ht+0xa96e, %rbx
xor $33191, %rcx
mov (%rbx), %ebp
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x80a6, %rax
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rax), %r10d
nop
nop
nop
dec %rax
lea addresses_D_ht+0x1bb26, %rsi
lea addresses_D_ht+0x1ba1a, %rdi
nop
nop
nop
sub %r13, %r13
mov $71, %rcx
rep movsw
nop
nop
nop
nop
add $42044, %rbx
lea addresses_normal_ht+0xb526, %r12
nop
and %r10, %r10
mov (%r12), %rax
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rbx

// Store
lea addresses_RW+0x2026, %r11
clflush (%r11)
nop
nop
nop
xor $34984, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r11)
cmp %r11, %r11

// Store
lea addresses_PSE+0x5b26, %rbx
nop
xor %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
sub $45221, %r10

// Store
mov $0x39e3d40000000126, %rbx
nop
nop
nop
nop
nop
add $46789, %r8
movl $0x51525354, (%rbx)
nop
nop
cmp $31213, %r8

// Faulty Load
lea addresses_D+0xa326, %r10
nop
nop
cmp %r14, %r14
movb (%r10), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'36': 49}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
