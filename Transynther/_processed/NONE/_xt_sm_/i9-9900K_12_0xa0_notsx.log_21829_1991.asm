.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x916c, %rcx
nop
nop
sub %rbx, %rbx
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1c80c, %r15
inc %rdx
movb (%r15), %r11b
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x5d6c, %r15
sub %rdi, %rdi
mov (%r15), %r8
and %rdi, %rdi
lea addresses_WT_ht+0xe16c, %rdi
nop
cmp $20522, %rdx
movb (%rdi), %bl
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x736c, %rdx
nop
nop
nop
nop
sub %r11, %r11
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
and %r8, %r8
lea addresses_A_ht+0x9dec, %rcx
nop
nop
nop
add $23677, %r11
mov (%rcx), %r8
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x246c, %rsi
lea addresses_A_ht+0x18084, %rdi
nop
nop
cmp %r8, %r8
mov $98, %rcx
rep movsl
nop
nop
sub $50016, %r11
lea addresses_WT_ht+0xf1b4, %rcx
nop
nop
nop
nop
add %r15, %r15
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1dcf8, %r11
nop
nop
nop
nop
add $9983, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r11
vmovntdq %ymm7, (%r11)
nop
nop
nop
and $51224, %rsi
lea addresses_WT_ht+0x1f6c, %rdx
nop
nop
nop
sub $31778, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
cmp $35488, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi

// Load
mov $0x4cc, %rbp
nop
nop
add %r13, %r13
movb (%rbp), %r12b
nop
and $24554, %r13

// Store
lea addresses_A+0x756c, %rbp
nop
sub $8533, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
cmp %r12, %r12

// Store
lea addresses_normal+0xed6c, %r11
nop
nop
nop
cmp $4922, %r13
movb $0x51, (%r11)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x1c16c, %rdi
nop
xor %r13, %r13
movl $0x51525354, (%rdi)
and $62449, %r11

// Faulty Load
lea addresses_A+0x756c, %rax
nop
nop
sub $57787, %r13
mov (%rax), %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
