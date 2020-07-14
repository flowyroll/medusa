.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a73d, %rsi
lea addresses_A_ht+0xf399, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $43, %rcx
rep movsq
nop
and %r13, %r13
lea addresses_WC_ht+0x674e, %rcx
nop
nop
nop
nop
nop
xor $22469, %rdx
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xa28, %rsi
lea addresses_A+0x1227d, %rdi
nop
and %rdx, %rdx
mov $5, %rcx
rep movsw
nop
nop
nop
and %r14, %r14

// Store
lea addresses_RW+0x180fd, %r9
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%r9)
cmp $13283, %r15

// Store
lea addresses_A+0x1cdf9, %rsi
nop
nop
nop
nop
xor $43988, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_RW+0x15aaf, %r9
nop
nop
nop
xor %rcx, %rcx
mov (%r9), %r14d
nop
nop
nop
nop
nop
sub $1957, %r9

// Faulty Load
lea addresses_US+0x66fd, %r14
nop
nop
nop
nop
add %r9, %r9
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'44': 7885, '48': 762, '00': 13182}
00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 44 00 00 00 00 44 44 00 44 00 00 44 00 44 00 44 00 44 44 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 44 00 44 00 44 00 00 44 44 44 00 00 44 00 00 44 00 00 44 00 00 44 44 00 00 00 00 44 00 00 48 00 44 00 00 00 44 00 44 44 00 44 00 44 00 44 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 44 44 44 00 00 00 00 48 00 44 00 44 44 00 00 00 44 00 00 00 44 00 44 00 44 00 44 44 00 00 00 44 44 00 00 00 44 00 44 00 00 44 00 00 00 44 00 44 00 00 00 00 44 00 00 00 44 44 48 00 44 48 00 00 00 00 00 44 00 00 00 44 00 44 00 00 44 44 00 00 44 00 00 44 44 00 44 44 00 00 00 00 00 44 44 44 00 44 44 00 44 00 44 00 00 00 44 48 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 44 00 00 44 00 00 00 44 44 00 00 00 44 00 44 44 00 00 00 44 44 48 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 48 00 00 44 00 44 44 00 00 48 44 00 00 00 44 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 48 00 00 44 00 00 44 00 44 00 44 44 00 00 48 48 00 00 44 44 44 00 00 00 00 44 44 00 00 00 44 44 00 00 00 44 00 00 44 44 48 00 00 00 00 00 00 00 00 44 44 44 44 00 00 44 00 00 00 44 44 44 00 00 00 00 44 44 48 00 44 00 44 00 48 44 44 44 44 48 00 44 44 00 44 44 00 44 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 48 44 44 44 00 00 00 48 00 44 00 44 00 44 00 44 44 00 44 44 00 44 00 00 44 00 44 00 00 00 00 00 00 44 00 44 44 44 44 48 44 00 44 00 44 44 00 00 00 44 00 00 44 00 00 00 00 44 44 44 00 44 00 00 00 00 00 48 00 44 00 44 00 00 00 00 00 44 00 44 44 00 44 44 00 00 44 48 44 00 00 00 00 00 00 00 44 00 00 00 44 00 44 44 00 44 44 00 44 00 00 00 00 00 00 00 44 00 00 44 00 44 44 44 00 00 00 00 00 44 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 44 00 00 00 44 00 44 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 44 44 00 44 00 00 00 44 00 44 00 00 00 00 00 44 44 00 44 00 44 44 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 44 00 00 44 44 44 00 00 44 44 00 44 44 44 44 00 44 00 44 44 00 00 44 00 00 44 00 00 00 44 44 00 00 00 00 00 44 44 00 00 00 44 00 00 44 48 00 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 00 00 00 48 00 00 00 00 48 00 44 00 00 00 44 44 44 00 00 44 00 00 00 00 00 44 44 44 44 00 44 44 44 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 44 44 00 00 00 00 00 00 48 00 00 00 44 00 00 00 48 00 00 00 00 44 00 44 44 00 44 44 48 44 00 44 44 44 00 00 00 00 00 00 00 44 44 00 44 00 00 44 44 00 44 00 44 00 44 00 44 00 00 44 44 00 44 44 00 00 00 44 00 00 48 00 44 44 00 00 00 44 00 44 00 44 44 00 44 44 00 44 00 00 00 00 44 48 44 00 00 00 44 44 00 44 00 00 00 44 00 00 44 44 00 00 00 00 44 44 00 44 00 44 00 44 00 48 00 00 00 44 00 44 00 44 00 00 00 44 00 00 44 00 48 00 44 00 00 00 00 00 44 00 00 44 44 00 44 44 00 44 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 48 00 44 44 00 00 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 48 00 00 00 00
*/
