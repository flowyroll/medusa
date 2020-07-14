.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xba22, %rsi
lea addresses_WT_ht+0x13b22, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $5, %rcx
rep movsq
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1b4a6, %rsi
lea addresses_A_ht+0xb316, %rdi
nop
nop
nop
nop
add $49175, %r9
mov $95, %rcx
rep movsq
xor $48319, %rcx
lea addresses_WC_ht+0x47e2, %rsi
lea addresses_normal_ht+0x59a4, %rdi
nop
nop
nop
and %r9, %r9
mov $100, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_WT_ht+0x19822, %rsi
nop
nop
nop
nop
nop
and $51308, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x13722, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov (%rdi), %rbp
nop
nop
nop
nop
nop
and $58154, %rcx
lea addresses_WC_ht+0xb062, %r9
nop
nop
and $45874, %r13
movb (%r9), %cl
nop
nop
nop
nop
cmp $29847, %r13
lea addresses_A_ht+0x6022, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x9d22, %r8
nop
nop
nop
sub $38096, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r8
vmovntdq %ymm0, (%r8)
nop
nop
nop
cmp $18837, %rcx
lea addresses_normal_ht+0x6556, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbp)
nop
cmp $62725, %rdi
lea addresses_WC_ht+0x1eda2, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $3637, %rcx
mov (%rdi), %rbp
nop
nop
nop
add $39437, %rsi
lea addresses_D_ht+0x3322, %rcx
nop
nop
nop
nop
nop
cmp $18157, %r8
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x18cc2, %rsi
lea addresses_UC_ht+0x525c, %rdi
clflush (%rdi)
sub %r15, %r15
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x18ca2, %rsi
mfence
mov (%rsi), %ecx
sub %rbp, %rbp
lea addresses_WC_ht+0x1c722, %r15
nop
nop
cmp $18356, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
sub $43599, %rbp
lea addresses_UC_ht+0x11d3a, %r8
nop
nop
nop
nop
nop
sub $8740, %rdi
movb $0x61, (%r8)
nop
nop
nop
sub $61920, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0x13b22, %rcx
nop
nop
nop
and $16215, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movaps %xmm4, (%rcx)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0x14496, %rax
xor %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
add $41643, %rcx

// Store
lea addresses_WC+0x26a2, %r14
nop
nop
nop
nop
dec %r15
movw $0x5152, (%r14)
nop
nop
dec %rsi

// Store
lea addresses_US+0x2722, %rcx
dec %rax
movl $0x51525354, (%rcx)
nop
xor $60326, %r10

// Faulty Load
lea addresses_US+0x2722, %r10
clflush (%r10)
nop
and %r14, %r14
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'00': 175, '49': 8}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
