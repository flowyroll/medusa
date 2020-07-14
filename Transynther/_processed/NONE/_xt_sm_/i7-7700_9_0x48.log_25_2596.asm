.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a110, %rsi
clflush (%rsi)
nop
nop
nop
inc %rbx
movl $0x61626364, (%rsi)
add $8895, %rcx
lea addresses_D_ht+0x2130, %rsi
lea addresses_A_ht+0xab90, %rdi
nop
nop
xor $33166, %rbx
mov $2, %rcx
rep movsl
add $20301, %r8
lea addresses_A_ht+0x13330, %rdi
nop
nop
nop
nop
and $27964, %rcx
movb (%rdi), %bl
nop
nop
inc %rdi
lea addresses_UC_ht+0x9df0, %rsi
lea addresses_normal_ht+0x1bad0, %rdi
clflush (%rdi)
nop
sub %r9, %r9
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $8180, %r8
lea addresses_UC_ht+0x8930, %rsi
lea addresses_WT_ht+0x123d0, %rdi
clflush (%rdi)
nop
and %r13, %r13
mov $123, %rcx
rep movsl
nop
nop
sub $56197, %rbx
lea addresses_D_ht+0x12550, %rdi
nop
add %r13, %r13
mov (%rdi), %esi
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0xf9b8, %r10
nop
nop
add $55480, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
nop
nop
and $56924, %r11

// Store
lea addresses_RW+0x77f8, %r14
dec %r9
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub $44511, %rdi

// Store
lea addresses_RW+0x4ca8, %r14
nop
nop
nop
nop
nop
cmp $28535, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
cmp $16436, %r9

// Store
lea addresses_A+0x8930, %rbp
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0xeb70, %r9
nop
add $21234, %r14
movl $0x51525354, (%r9)
nop
dec %r10

// Store
lea addresses_UC+0xb930, %r10
nop
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%r10)
add $52092, %r9

// Store
mov $0x60314b0000000208, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_WT+0x15e50, %r10
nop
nop
nop
nop
nop
add $49499, %rdx
movb (%r10), %r9b
nop
and $50864, %r10

// Faulty Load
lea addresses_A+0x8930, %rbp
nop
and %rdi, %rdi
movb (%rbp), %dl
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'51': 25}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
