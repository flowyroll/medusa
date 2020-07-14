.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1737e, %r15
xor $56306, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
sub $41263, %r9
lea addresses_A_ht+0xa99e, %rsi
lea addresses_normal_ht+0xd37e, %rdi
cmp %r12, %r12
mov $60, %rcx
rep movsl
nop
sub %r15, %r15
lea addresses_D_ht+0x2d7e, %rdi
nop
nop
and $55277, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x37e, %rsi
lea addresses_WC_ht+0x7ba, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $62, %rcx
rep movsb
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Load
mov $0x44f4d60000000b7e, %r12
nop
nop
nop
nop
and $46458, %rdi
mov (%r12), %r15
dec %r15

// Store
lea addresses_RW+0x1777e, %rbx
nop
nop
nop
nop
nop
inc %rcx
movb $0x51, (%rbx)
nop
nop
dec %r12

// Store
lea addresses_A+0x7cfe, %r12
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
cmp $37670, %rcx

// Faulty Load
lea addresses_US+0x5b7e, %r10
nop
nop
sub %rdi, %rdi
mov (%r10), %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'45': 1, 'e3': 2116, '00': 228, '50': 72, '1a': 18, 'c0': 1, '47': 37}
e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 00 e3 e3 e3 50 50 e3 50 00 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 47 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 47 e3 e3 50 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 47 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 47 00 00 00 1a e3 00 47 00 00 1a 1a e3 47 00 00 e3 e3 00 00 00 00 00 00 00 00 e3 47 00 00 00 00 00 00 e3 00 00 00 00 00 47 e3 00 00 00 00 00 00 00 00 00 00 00 e3 00 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 50 e3 50 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 50 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 50 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 50 e3 00 e3 e3 e3 e3 e3 e3 e3 47 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 00 1a 1a 00 e3 e3 00 45 00 00 00 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 47 e3 00 e3 00 e3 1a 00 00 00 e3 00 00 00 00 00 00 00 00 00 00 e3 1a 1a 00 00 00 00 e3 00 00 1a 00 e3 00 e3 47 00 00 00 00 50 00 00 00 00 00 00 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 50 e3 e3 e3 47 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 00 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 47 e3 e3 e3 e3 e3 e3 e3 00 00 e3 e3 e3 e3 e3
*/
