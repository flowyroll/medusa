.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11dd6, %rsi
lea addresses_A_ht+0xfb7e, %rdi
nop
cmp $17825, %r8
mov $73, %rcx
rep movsw
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x3ba, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $559, %r12
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
sub $17133, %rdi

// Store
lea addresses_RW+0x140fc, %rcx
cmp $34765, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0x145d6, %r8
nop
and %rax, %rax
mov (%r8), %ebp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'00': 100}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
