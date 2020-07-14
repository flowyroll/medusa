.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xe71d, %r12
nop
nop
nop
nop
dec %rdx
mov (%r12), %di
cmp $12418, %rcx
lea addresses_UC_ht+0x11b1d, %rsi
lea addresses_WT_ht+0x1321d, %rdi
dec %r10
mov $36, %rcx
rep movsq
nop
nop
nop
nop
add $24811, %rcx
lea addresses_WC_ht+0x176fb, %r10
nop
sub $1864, %rbx
movb (%r10), %dl
nop
nop
xor $59908, %rsi
lea addresses_A_ht+0xa2bd, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
add $20005, %rdi
lea addresses_WC_ht+0x1481d, %rsi
lea addresses_WT_ht+0x4df3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_RW+0x471d, %r13
nop
nop
nop
nop
nop
xor %r12, %r12
movb (%r13), %dl
nop
nop
nop
cmp %rdx, %rdx

// Store
mov $0x11d, %r12
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_A+0x731d, %rbx
nop
cmp $20611, %rdx
movl $0x51525354, (%rbx)
nop
nop
and $16883, %rbx

// Store
lea addresses_WT+0x6c09, %r13
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r13)
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_A+0x331d, %r12
nop
nop
nop
nop
inc %rsi
movb (%r12), %dl
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'54': 48}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
