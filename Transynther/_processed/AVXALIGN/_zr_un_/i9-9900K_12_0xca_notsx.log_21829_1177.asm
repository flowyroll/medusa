.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_D_ht+0x6ce, %rbx
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
sub %r11, %r11
lea addresses_WC_ht+0x9716, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0xfbee, %rbp
nop
nop
nop
nop
nop
add %rbx, %rbx
mov (%rbp), %r15d
nop
nop
sub $34403, %r14
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rdi

// Load
mov $0x131ad30000000428, %r14
nop
and $59508, %rax
mov (%r14), %edi
nop
and %r13, %r13

// Faulty Load
mov $0x27ab7f0000000096, %r15
nop
xor %r13, %r13
mov (%r15), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'00': 2382, 'b2': 19447}
00 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 00 b2 b2 b2 b2 b2 00 00 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 00 00 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 00 b2 b2 00 b2 00 b2 b2 b2 b2 b2 00 00 b2 b2 00 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 00 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 00 b2 00 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 00 b2 00 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 00 b2 b2 b2 00 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 b2 b2 b2 00 00 b2 00 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 00 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 00 b2 b2 b2 b2 b2 b2 00 b2 b2 b2 b2 00 b2 b2 b2 b2
*/
