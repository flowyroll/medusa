.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b25a, %r14
nop
nop
nop
nop
inc %r10
movb (%r14), %r11b
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x35f7, %rsi
lea addresses_normal_ht+0x1205a, %rdi
clflush (%rdi)
nop
nop
add %rax, %rax
mov $105, %rcx
rep movsw
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x97da, %rsi
lea addresses_normal+0x16e69, %rdi
nop
nop
nop
nop
inc %r10
mov $92, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_US+0xb85a, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
