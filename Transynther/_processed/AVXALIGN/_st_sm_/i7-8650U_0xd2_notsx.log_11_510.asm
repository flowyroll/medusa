.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xae5c, %rsi
lea addresses_UC_ht+0xd1a0, %rdi
nop
nop
xor %r13, %r13
mov $1, %rcx
rep movsq
and $36818, %rcx
lea addresses_WC_ht+0x198c8, %r13
clflush (%r13)
nop
nop
dec %r11
mov (%r13), %ebx
nop
nop
xor $56043, %rbx
lea addresses_normal_ht+0x11ba0, %r13
clflush (%r13)
nop
nop
nop
nop
add $38254, %r14
movl $0x61626364, (%r13)
nop
nop
and %r13, %r13
lea addresses_D_ht+0x16680, %rdi
nop
nop
nop
dec %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x14160, %rsi
lea addresses_UC_ht+0x1c650, %rdi
xor %r10, %r10
mov $83, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_UC_ht+0x67a0, %rsi
lea addresses_WT_ht+0x18c20, %rdi
nop
nop
nop
dec %r11
mov $12, %rcx
rep movsb
nop
cmp $36667, %r13
lea addresses_UC_ht+0x1e4a0, %rbx
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xe6a0, %rsi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %r14w
nop
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x193a0, %rsi
lea addresses_D_ht+0x14008, %rdi
nop
nop
inc %r13
mov $63, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_A_ht+0x16168, %r13
nop
nop
nop
add %r14, %r14
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0xa59c, %r13
nop
nop
xor $12676, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r13)
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x1e3a0, %r10
nop
sub $44036, %rdx
movb $0x51, (%r10)
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x1e3a0, %rdi
nop
nop
sub $25909, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
add $18856, %rdx

// Store
lea addresses_WT+0x1ac50, %rdx
nop
add %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdx)
dec %rsi

// Store
lea addresses_PSE+0xca54, %rsi
nop
nop
nop
nop
sub $12124, %r10
movw $0x5152, (%rsi)
nop
xor %r11, %r11

// Faulty Load
lea addresses_normal+0x1e3a0, %r10
nop
nop
xor $13043, %rdi
movb (%r10), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'51': 11}
51 51 51 51 51 51 51 51 51 51 51
*/
