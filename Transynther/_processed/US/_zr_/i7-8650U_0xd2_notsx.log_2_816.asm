.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x26fb, %rdx
nop
nop
xor $57739, %r10
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x5a7b, %rsi
lea addresses_normal_ht+0x1d60b, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $60, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xc8bb, %r9
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r9)
sub $20175, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Load
mov $0x11cb490000000643, %r15
clflush (%r15)
nop
nop
nop
nop
nop
dec %r10
mov (%r15), %bp
nop
nop
nop
cmp $21332, %rax

// Faulty Load
lea addresses_US+0x4fbb, %rdi
and %r14, %r14
mov (%rdi), %ax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 2}
00 00
*/
