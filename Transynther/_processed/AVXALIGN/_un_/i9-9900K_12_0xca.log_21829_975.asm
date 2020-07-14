.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1967c, %rsi
lea addresses_UC_ht+0x1ebc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $26029, %rbp
mov $125, %rcx
rep movsq
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0xf7a4, %r8
nop
nop
nop
nop
nop
xor $57861, %rbp
movb $0x61, (%r8)
nop
nop
nop
add $6541, %rcx
lea addresses_UC_ht+0x12f3c, %rdi
clflush (%rdi)
nop
nop
add $16761, %rax
movb (%rdi), %r12b
nop
nop
nop
nop
add $6646, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xc3c, %rsi
lea addresses_normal+0xafb, %rdi
nop
nop
nop
and %r8, %r8
mov $119, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1b3c, %r13
clflush (%r13)
nop
nop
nop
nop
inc %rax
mov (%r13), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_P', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'20': 3, 'b9': 21825, 'f6': 1}
b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9
*/
