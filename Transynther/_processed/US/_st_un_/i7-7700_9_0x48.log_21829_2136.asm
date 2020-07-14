.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1e77d, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rsi), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'3c': 3903, 'ff': 17926}
ff 3c 3c 3c ff ff ff ff ff 3c 3c ff ff ff ff 3c ff ff 3c ff ff ff ff ff 3c ff 3c 3c ff 3c 3c 3c ff ff ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff 3c ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff ff ff 3c ff 3c 3c ff ff 3c ff 3c 3c ff ff 3c ff 3c 3c ff ff ff 3c 3c 3c ff ff ff ff 3c 3c 3c 3c 3c ff ff ff 3c ff ff ff 3c 3c 3c ff 3c ff ff ff 3c 3c 3c 3c ff 3c 3c ff 3c 3c ff ff ff ff ff ff ff 3c 3c 3c 3c 3c ff ff ff ff 3c ff 3c 3c ff 3c ff ff ff ff 3c 3c ff ff 3c 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff 3c ff 3c ff ff ff ff 3c ff ff ff ff 3c ff ff 3c ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c 3c ff 3c ff ff ff ff 3c 3c ff ff 3c 3c ff 3c 3c 3c 3c 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff 3c ff 3c ff ff ff 3c ff ff ff ff ff ff 3c 3c 3c ff ff 3c ff ff 3c 3c 3c 3c 3c ff ff 3c 3c ff 3c ff ff ff 3c 3c 3c ff ff ff 3c ff ff ff ff ff ff 3c 3c 3c ff ff 3c ff ff ff ff ff ff 3c 3c ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c ff 3c ff ff 3c ff ff ff ff ff ff 3c ff 3c ff ff ff ff 3c 3c 3c 3c 3c 3c 3c ff ff ff ff ff ff ff 3c ff 3c ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff ff 3c 3c ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff 3c 3c ff ff ff ff 3c ff 3c 3c ff ff ff ff 3c ff ff ff ff 3c 3c 3c ff 3c 3c ff ff ff ff 3c 3c ff ff ff ff 3c 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff 3c 3c ff ff ff 3c 3c ff ff ff 3c 3c ff ff 3c ff ff ff ff ff 3c 3c 3c 3c 3c ff ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff 3c 3c 3c 3c ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c 3c ff ff 3c ff ff ff ff ff ff 3c 3c 3c ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff ff 3c 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
