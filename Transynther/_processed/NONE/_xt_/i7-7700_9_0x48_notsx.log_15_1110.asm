.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x1d6, %rsi
lea addresses_normal+0xd536, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $51177, %r12
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_RW+0x109d6, %rsi
sub %rcx, %rcx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_P'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'32': 15}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
