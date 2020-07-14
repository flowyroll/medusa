.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc365, %r13
nop
nop
nop
add %rcx, %rcx
mov (%r13), %r15
nop
sub %r15, %r15
lea addresses_A_ht+0xfff1, %rsi
lea addresses_WT_ht+0xc0e5, %rdi
nop
cmp $57124, %r9
mov $123, %rcx
rep movsw
and %rsi, %rsi
lea addresses_UC_ht+0xbee5, %rsi
lea addresses_normal_ht+0x1a4ce, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $1, %rcx
rep movsb
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x136c5, %r9
nop
nop
nop
nop
and $52216, %rbp
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rdi
dec %rdi
lea addresses_UC_ht+0x14785, %rsi
lea addresses_WT_ht+0x2585, %rdi
nop
nop
nop
nop
nop
add $37235, %rdx
mov $58, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x8dcf, %rbp
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rbp)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x3765, %rcx
clflush (%rcx)
inc %rsi
mov (%rcx), %di
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Load
lea addresses_US+0x78e5, %r14
nop
nop
xor %rdi, %rdi
mov (%r14), %r8
nop
nop
nop
nop
nop
cmp %r13, %r13

// REPMOV
lea addresses_RW+0xffe5, %rsi
lea addresses_D+0x125e5, %rdi
and $40179, %r14
mov $23, %rcx
rep movsb
nop
nop
dec %rcx

// Faulty Load
lea addresses_RW+0xffe5, %r8
nop
nop
inc %rdi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'32': 3}
32 32 32
*/
