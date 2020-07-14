.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1078, %rsi
lea addresses_D_ht+0xaf18, %rdi
nop
nop
nop
nop
nop
add $51065, %r8
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x15350, %r9
and %r12, %r12
movl $0x51525354, (%r9)
nop
add %r12, %r12

// REPMOV
lea addresses_WC+0x1a93e, %rsi
lea addresses_normal+0xad78, %rdi
xor $48352, %r9
mov $27, %rcx
rep movsb
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_D+0x16878, %r14
clflush (%r14)
nop
nop
add $59221, %rsi
movl $0x51525354, (%r14)
dec %r9

// Store
mov $0x40ddeb0000000e48, %r14
nop
nop
nop
nop
cmp $24767, %r9
movb $0x51, (%r14)
nop
xor %r14, %r14

// Faulty Load
mov $0x31afc90000000478, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdi), %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'00': 1}
00
*/
