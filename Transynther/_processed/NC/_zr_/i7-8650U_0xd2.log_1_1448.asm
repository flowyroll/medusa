.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdx
lea addresses_D_ht+0x2554, %r15
clflush (%r15)
nop
nop
sub $6214, %rbp
movb (%r15), %r14b
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xfa9, %r12
sub %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r12)
xor %r15, %r15
lea addresses_A_ht+0x1ca17, %rbp
nop
nop
nop
nop
add $17779, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
sub $16884, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rbx

// Store
lea addresses_WC+0x1f206, %r12
nop
nop
nop
cmp $56235, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0x515fd40000000ad9, %r10
nop
nop
nop
xor $51122, %r14
movw $0x5152, (%r10)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_normal+0x123d9, %r12
nop
nop
nop
xor $4654, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor $28263, %rax

// Store
lea addresses_A+0x5e03, %rbp
and %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
and %rbx, %rbx

// Load
lea addresses_D+0x8f9, %r11
nop
nop
inc %r14
mov (%r11), %r10
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x1b7d9, %rbx
nop
sub $40926, %r11
movb $0x51, (%rbx)
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x343f, %r14
nop
nop
sub $24969, %r10
movb $0x51, (%r14)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_RW+0x10dd9, %rbp
nop
inc %rbx
movw $0x5152, (%rbp)
nop
sub %rbx, %rbx

// Load
lea addresses_PSE+0x12edd, %r10
dec %r14
mov (%r10), %ebp
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x133f9, %rax
nop
nop
nop
nop
nop
xor $25929, %rbp
movb $0x51, (%rax)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
mov $0x2eac410000000bd9, %r14
nop
inc %rax
mov (%r14), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
