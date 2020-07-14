.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
lea addresses_A_ht+0x10276, %rdi
nop
nop
nop
nop
and $20841, %r15
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
and $27743, %rbp
lea addresses_UC_ht+0x1c776, %r9
nop
nop
xor %r12, %r12
movb (%r9), %r11b
nop
nop
sub $12499, %r12
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_PSE+0xb276, %r9
nop
nop
nop
nop
add $15444, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovaps %ymm0, (%r9)
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_US+0x1da76, %r9
nop
nop
nop
sub $20831, %r12
mov (%r9), %esi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
