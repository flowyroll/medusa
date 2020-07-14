.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xdfff, %r12
nop
inc %r14
movb (%r12), %r13b
nop
nop
inc %r12
lea addresses_UC_ht+0xe013, %rsi
lea addresses_WC_ht+0x108ad, %rdi
nop
sub %r11, %r11
mov $124, %rcx
rep movsw
nop
nop
nop
nop
sub $61033, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x32ed, %r15
nop
inc %r10
movb $0x51, (%r15)
nop
nop
xor $51798, %r10

// Store
lea addresses_WT+0x1caed, %r12
nop
nop
nop
sub $36890, %rax
movw $0x5152, (%r12)
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x32ed, %rbx
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
and $29997, %r15

// Store
lea addresses_A+0x32ed, %rsi
nop
inc %r15
movl $0x51525354, (%rsi)
and $55001, %r15

// Store
lea addresses_A+0x32ed, %r10
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
add %rax, %rax

// Load
lea addresses_PSE+0x1eaed, %rax
clflush (%rax)
nop
nop
cmp $38837, %rsi
mov (%rax), %edx

// Exception!!!
nop
nop
mov (0), %r15
nop
nop
nop
and %r12, %r12

// Store
lea addresses_A+0xf30d, %rdx
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0x32ed, %rsi
clflush (%rsi)
nop
and $54022, %r15
movb (%rsi), %r12b
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'54': 11}
54 54 54 54 54 54 54 54 54 54 54
*/
