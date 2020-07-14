.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ea50, %r14
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1d740, %rsi
lea addresses_WT_ht+0xe8b0, %rdi
nop
xor %r11, %r11
mov $19, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xe130, %rcx
add $60347, %r11
mov (%rcx), %ebx
add $32042, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x67e0, %r14
clflush (%r14)
nop
nop
nop
nop
cmp $36277, %r8
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x6050, %r14
and $46491, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_PSE+0x67e1, %r8
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r8)
nop
nop
inc %r15

// Load
lea addresses_normal+0x10450, %r14
nop
nop
nop
inc %rsi
mov (%r14), %cx
nop
and $35474, %rsi

// REPMOV
lea addresses_PSE+0xc50, %rsi
lea addresses_normal+0x10450, %rdi
xor %rbx, %rbx
mov $94, %rcx
rep movsl
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0xaab0, %r8
nop
dec %rbx
movb $0x51, (%r8)
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_normal+0x10450, %r14
nop
nop
nop
nop
sub $28482, %rbx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'33': 230}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
