.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10afb, %r13
nop
nop
nop
dec %r14
mov (%r13), %r10
nop
nop
nop
cmp $63322, %r10
lea addresses_UC_ht+0xe9eb, %rsi
lea addresses_D_ht+0x4fb, %rdi
nop
nop
nop
xor $3723, %r13
mov $124, %rcx
rep movsw
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rsi

// Load
lea addresses_US+0x6cbb, %rsi
nop
nop
xor %r11, %r11
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_US+0xe14b, %rcx
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
xor $12194, %rcx

// Faulty Load
lea addresses_A+0xcefb, %r12
nop
nop
nop
nop
nop
and %r13, %r13
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'ff': 550, '00': 208, '47': 16, '04': 1, '52': 2}
ff ff 00 ff 00 ff ff ff 00 ff 00 ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff 00 ff 00 ff ff ff ff ff ff ff ff ff 00 ff 00 00 ff ff ff 00 00 00 ff ff ff ff 00 47 ff ff 00 00 ff ff ff ff ff ff ff 00 ff 00 ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff 00 ff ff ff 00 ff ff ff 47 00 ff ff 00 ff ff ff ff 00 ff ff 00 ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff 00 ff 00 00 ff ff ff ff ff 00 ff ff ff 00 ff ff 00 ff ff ff ff 00 00 ff ff ff ff ff ff ff 00 ff 47 ff ff ff 00 ff 00 ff ff 00 ff ff ff 00 00 00 ff 00 ff ff ff 47 ff 00 00 ff ff 00 00 ff 00 ff ff ff ff ff ff ff 00 ff ff ff ff ff ff 00 00 ff ff ff 00 ff ff ff ff ff ff 00 47 ff 00 ff 00 00 00 ff ff ff 00 ff ff ff ff ff ff ff 00 ff ff 00 ff ff ff 00 ff 00 00 00 00 ff ff ff ff 00 00 ff 00 ff ff ff ff 47 ff ff 00 ff ff ff ff 00 ff 00 ff ff ff 47 ff ff 00 00 ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff 00 ff 00 ff 00 ff ff 00 ff 00 ff ff ff 00 47 00 ff ff ff ff ff ff ff 00 00 ff ff 00 ff ff ff ff 00 ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff 00 ff 00 ff ff 00 ff ff 00 ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff 47 ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff 00 ff ff ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 00 ff 00 00 ff 00 ff ff ff 00 ff ff ff 00 00 ff ff ff ff ff ff 00 ff ff ff ff 00 ff 00 ff 00 ff 00 00 ff ff 00 ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff ff 00 ff ff 00 ff 00 00 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff 00 ff 00 00 47 ff ff ff ff 00 00 ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff 00 47 ff 00 00 00 00 ff 00 ff ff 00 00 ff ff ff ff ff 47 ff ff ff ff ff 00 ff ff 00 00 ff ff ff ff ff ff 00 00 47 ff ff ff ff ff ff ff ff ff ff 00 ff ff 00 ff 00 ff ff ff ff ff ff ff 00 ff ff ff ff 00 00 ff ff ff 00 ff ff 00 ff ff 00 00 ff ff ff 00 ff 00 47 ff ff ff ff 00 00 00 ff ff 00 ff ff ff ff ff 00 ff 00 00 00 ff ff 00 ff ff ff ff ff 00 00 ff ff ff 00 00 ff ff ff ff ff 04 ff 00 00 00 ff 00 ff 00 ff ff ff ff 00 ff 00 ff ff 47 ff 00 ff ff ff ff 00 ff ff 00 00 ff ff ff ff ff ff 00 00 ff ff ff ff 52 ff ff ff 00 00 ff ff 00 ff 00 ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff 00 00 ff 00 00 ff ff ff ff ff 00 ff 00 ff ff ff 00 00 ff ff ff ff ff ff ff ff ff 00 00 ff ff 00 00 00 ff ff ff ff ff 00 52 ff ff ff 47 ff ff
*/
