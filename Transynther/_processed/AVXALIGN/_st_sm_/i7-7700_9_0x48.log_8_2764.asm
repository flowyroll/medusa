.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdi
push %rsi

// Store
mov $0x6cb058000000030d, %rdi
dec %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovntdq %ymm5, (%rdi)
nop
sub %r9, %r9

// Store
lea addresses_WT+0x14ef5, %r11
nop
and %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r11)
nop
add %r10, %r10

// Faulty Load
lea addresses_WT+0x14ef5, %rax
nop
cmp $39156, %r11
mov (%rax), %r9d
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'58': 8}
58 58 58 58 58 58 58 58
*/
