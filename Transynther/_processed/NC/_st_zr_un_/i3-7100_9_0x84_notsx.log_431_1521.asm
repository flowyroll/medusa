.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x122d7, %rsi
lea addresses_D+0x5bd7, %rdi
sub %rax, %rax
mov $88, %rcx
rep movsl
xor $43389, %rdi

// Faulty Load
mov $0x7b45bb00000002d7, %r9
nop
nop
nop
nop
add %r15, %r15
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 94, 'ff': 2, '32': 333, 'ae': 2}
00 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 00 00 32 32 00 00 32 32 00 00 32 32 32 32 00 32 00 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 00 00 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 ae 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 ae 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 00 32 32 00 32 00 32 00 00 32 32 32 32 00 00 32 32 32 32 32 32 32 32 00 32 32 32 ff 32 32 32 00 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 00 32 00 32 00 32 00 32 00 32 32 32 00 32 32 32 00 32 32 00 00 32 00 32 32 32 32 32 00 32 32 32 32 32 00 32 00 32 32 00 00 32 32 32 00 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 00 32 32 32 00 32 00 32 00 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 ff 32 00 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 00 00 32 00 32 32 32 00 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 32 32 00 32 32 32 00 32 00 32 32 00
*/
