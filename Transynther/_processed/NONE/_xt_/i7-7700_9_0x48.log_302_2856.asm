.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b482, %r12
nop
nop
nop
dec %rdx
movl $0x61626364, (%r12)
nop
add %r12, %r12
lea addresses_D_ht+0x16b42, %rax
add %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
xor $17631, %rax
lea addresses_D_ht+0xb3c2, %r11
cmp $2625, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x6d17, %rsi
lea addresses_D_ht+0x1202, %rdi
nop
nop
xor %rbp, %rbp
mov $64, %rcx
rep movsq
and %rbp, %rbp
lea addresses_D_ht+0x23c2, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rax
sub %rcx, %rcx
lea addresses_A_ht+0xcbc2, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
add $18976, %rcx
lea addresses_normal_ht+0xb3c2, %rsi
lea addresses_D_ht+0x2f7c, %rdi
nop
nop
nop
inc %rax
mov $101, %rcx
rep movsb
dec %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x2982, %rdx
nop
nop
nop
nop
and $1011, %r8
movb $0x51, (%rdx)
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x91c2, %rsi
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
and %r9, %r9

// Load
lea addresses_RW+0x4fc2, %r15
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %ecx
nop
and %r9, %r9

// Store
lea addresses_WT+0x8182, %rax
nop
nop
sub %r8, %r8
movl $0x51525354, (%rax)
dec %r15

// Store
lea addresses_UC+0x9142, %rsi
nop
nop
nop
nop
nop
add $25629, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
inc %rax

// Load
mov $0xbc4, %rsi
nop
nop
cmp $5877, %r8
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WT+0x1c7c2, %r15
nop
nop
nop
nop
dec %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $52573, %rsi

// Store
lea addresses_RW+0x11d02, %r15
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
add %rdx, %rdx

// Store
lea addresses_WC+0x17e0a, %rcx
nop
nop
dec %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
nop
xor $54557, %rsi

// Faulty Load
lea addresses_RW+0x4fc2, %rdx
nop
xor $15838, %rax
movb (%rdx), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'32': 302}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
