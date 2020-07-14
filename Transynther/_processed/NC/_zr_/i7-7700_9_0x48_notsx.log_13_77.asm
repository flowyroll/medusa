.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rsi
lea addresses_normal_ht+0x5e2e, %rsi
nop
nop
add %r10, %r10
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
sub %rsi, %rsi
pop %rsi
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xddc8, %rsi
mov $0x273b8d0000000114, %rdi
nop
nop
and $8167, %r8
mov $32, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi

// Faulty Load
mov $0x5ba2b500000008a6, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r15, %r15
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
