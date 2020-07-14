.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
lea addresses_UC_ht+0xed7b, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $38215, %r9
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x863b, %rsi
lea addresses_RW+0xaee7, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $35, %rcx
rep movsw
nop
xor $57611, %r14

// Faulty Load
mov $0x7c02df000000043b, %rax
nop
nop
xor $42288, %r10
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_RW'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'e7': 15, '46': 6}
e7 e7 e7 e7 e7 e7 46 e7 e7 46 46 46 e7 e7 e7 46 e7 46 e7 e7 e7
*/
