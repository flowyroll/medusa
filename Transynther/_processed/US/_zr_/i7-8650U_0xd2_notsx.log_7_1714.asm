.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rsi
lea addresses_normal_ht+0xb94d, %r13
nop
nop
nop
nop
nop
cmp $43045, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0x9b55, %r8
nop
nop
nop
nop
nop
add $59189, %rsi
movb $0x51, (%r8)
xor $37366, %rax

// Faulty Load
lea addresses_US+0x1c715, %r8
nop
nop
nop
nop
and %rbp, %rbp
movb (%r8), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
