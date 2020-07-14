.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19de7, %rsi
lea addresses_WT_ht+0x1bb27, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $14175, %r12
mov $71, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rcx
push %rdi

// Faulty Load
mov $0x7334a000000001e7, %rdi
nop
nop
sub %r9, %r9
mov (%rdi), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
