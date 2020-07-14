.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1579e, %rbx
and $30573, %r12
movl $0x61626364, (%rbx)
nop
nop
inc %rbx
lea addresses_UC_ht+0x1cc8e, %rsi
lea addresses_UC_ht+0x17fce, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $34, %rcx
rep movsw
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1348e, %rsi
nop
nop
nop
and $41733, %rcx
movb (%rsi), %r13b
nop
nop
cmp $6927, %rdi
lea addresses_WT_ht+0x9e8a, %r14
nop
nop
sub $33816, %rbx
movb $0x61, (%r14)
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x1348e, %r13
nop
nop
nop
dec %rbx
mov (%r13), %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x3a8e, %rdi
nop
nop
dec %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rdi)
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x9d8e, %rbx
nop
cmp %rcx, %rcx
mov (%rbx), %r14
add $63943, %rsi
lea addresses_WT_ht+0x1a05e, %r14
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $27547, %rcx
lea addresses_UC_ht+0x15f4e, %rsi
lea addresses_normal_ht+0x1c8e, %rdi
nop
nop
xor %r11, %r11
mov $2, %rcx
rep movsw
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x16db2, %r11
nop
nop
nop
nop
nop
sub $4681, %rsi
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x9cce, %rdi
nop
nop
nop
nop
sub $19673, %rsi
mov (%rdi), %r13w
sub $60476, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x8fde, %r8
nop
nop
cmp $34589, %rbp
movl $0x51525354, (%r8)
inc %rax

// Store
lea addresses_normal+0x798e, %rbp
cmp %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
and $49224, %rbp

// Load
lea addresses_normal+0x714e, %rbp
nop
nop
cmp %r8, %r8
mov (%rbp), %r10d
nop
nop
nop
cmp $42350, %r13

// Load
lea addresses_UC+0x1033e, %r13
nop
nop
nop
nop
nop
and $5397, %rbx
movb (%r13), %r8b
nop
nop
nop
inc %rbp

// Store
lea addresses_US+0x1c48e, %rax
nop
nop
and %rbp, %rbp
movb $0x51, (%rax)
xor %rax, %rax

// Store
lea addresses_UC+0xcc8e, %rbx
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
xor $3618, %rbx

// Store
lea addresses_A+0x1148e, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $56088, %r8
movb $0x51, (%rdx)
nop
nop
nop
nop
xor $46543, %r13

// Store
lea addresses_UC+0xcc8e, %rdx
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
dec %r8

// Faulty Load
lea addresses_UC+0xcc8e, %rdx
add %r8, %r8
movb (%rdx), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'58': 86, '54': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 54 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
