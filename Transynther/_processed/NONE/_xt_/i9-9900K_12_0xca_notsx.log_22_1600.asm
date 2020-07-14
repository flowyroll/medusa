.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rdi
push %rsi
lea addresses_normal_ht+0xfc7a, %r10
xor %rdi, %rdi
mov (%r10), %si
nop
nop
nop
nop
nop
xor $22626, %r10
pop %rsi
pop %rdi
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rdx
push %rsi

// Load
lea addresses_D+0x15a82, %r8
nop
nop
nop
nop
cmp %r13, %r13
movb (%r8), %al
nop
nop
nop
nop
cmp $15948, %r8

// Store
mov $0x4ad340000000430, %rax
clflush (%rax)
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%rax)
and %r13, %r13

// Faulty Load
lea addresses_WT+0x15930, %r13
clflush (%r13)
nop
nop
add $24369, %rax
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'39': 22}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
