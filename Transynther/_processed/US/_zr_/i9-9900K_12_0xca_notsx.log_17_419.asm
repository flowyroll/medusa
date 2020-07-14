.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf897, %rsi
lea addresses_WC_ht+0xf0b3, %rdi
nop
nop
nop
nop
add $111, %rax
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x5897, %r11
nop
xor %r8, %r8
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
