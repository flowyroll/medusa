.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12ed1, %rsi
lea addresses_normal_ht+0x13611, %rdi
nop
cmp $27171, %r8
mov $34, %rcx
rep movsl
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x10191, %r11
xor %r15, %r15
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'00': 93}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
