.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf207, %rdi
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rdi)
cmp $46218, %r14
lea addresses_UC_ht+0x9207, %rsi
lea addresses_D_ht+0x11c27, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $103, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x27c7, %rdi
nop
nop
and %rsi, %rsi
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
xor %rsi, %rsi
lea addresses_WC_ht+0x1196f, %rsi
lea addresses_normal_ht+0x139c7, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
and $60011, %r14
lea addresses_normal_ht+0x17107, %r8
xor $51336, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r8)
nop
cmp $39044, %rdi
lea addresses_WT_ht+0x1347, %rsi
and $30649, %rcx
mov (%rsi), %r13d
nop
nop
sub $32277, %r8
lea addresses_UC_ht+0x10937, %r8
nop
nop
nop
nop
nop
dec %rsi
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x2f77, %rsi
nop
nop
nop
nop
nop
inc %r13
mov (%rsi), %ecx
add %rdi, %rdi
lea addresses_WT_ht+0xc507, %r13
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r13)
lfence
lea addresses_WC_ht+0x1c903, %rbx
nop
nop
nop
nop
nop
dec %r8
mov (%rbx), %rcx
nop
nop
nop
nop
cmp $3890, %r13
lea addresses_UC_ht+0x1393c, %rbx
nop
nop
nop
nop
nop
and $60149, %rdi
movb $0x61, (%rbx)
nop
add $7743, %rsi
lea addresses_normal_ht+0x1b7d2, %rsi
lea addresses_WC_ht+0x1c2e9, %rdi
clflush (%rsi)
and $2645, %rax
mov $45, %rcx
rep movsl
sub $62253, %r8
lea addresses_WC_ht+0x1e55b, %rsi
nop
nop
nop
xor $46393, %r14
movb $0x61, (%rsi)
nop
nop
dec %rax
lea addresses_WT_ht+0x7607, %rsi
lea addresses_normal_ht+0x7887, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $71, %rcx
rep movsq
nop
nop
nop
xor $10156, %r8
lea addresses_D_ht+0x1c2e3, %r13
nop
add $23724, %rcx
movb (%r13), %r8b
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_WC+0x10b9e, %r9
nop
add $52974, %rdi
movups (%r9), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
dec %r15

// Store
lea addresses_A+0x15d07, %r12
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%r12)
nop
and $3838, %r9

// Store
lea addresses_RW+0x13a7, %r15
nop
nop
inc %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r15)
nop
cmp $1815, %r12

// Store
lea addresses_A+0x6a07, %rdi
nop
add %rax, %rax
movl $0x51525354, (%rdi)
nop
nop
dec %rdi

// Store
lea addresses_UC+0x1ba57, %r15
cmp %rbx, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_A+0x6a07, %rbx
nop
nop
nop
nop
nop
and $55353, %r11
mov (%rbx), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'54': 11}
54 54 54 54 54 54 54 54 54 54 54
*/
