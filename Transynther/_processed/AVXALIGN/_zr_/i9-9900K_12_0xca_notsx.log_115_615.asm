.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rdx
push %rsi
lea addresses_UC_ht+0xa63c, %r9
clflush (%r9)
nop
nop
add $3865, %rdx
mov (%r9), %bx
nop
sub $59187, %r14
lea addresses_normal_ht+0xb512, %r11
nop
sub $5657, %rdx
mov (%r11), %esi
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x2d92, %r14
xor %rbp, %rbp
movl $0x51525354, (%r14)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_US+0x132, %rcx
and $4128, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
and $42201, %rcx

// Faulty Load
lea addresses_RW+0x2d92, %r14
nop
nop
nop
nop
sub %rcx, %rcx
vmovntdqa (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'00': 115}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
