.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
lea addresses_WC_ht+0xe699, %r11
and %r8, %r8
mov (%r11), %cx
inc %r11
lea addresses_A_ht+0x1e091, %rdi
nop
nop
add $9196, %r9
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xaed9, %rdi
nop
nop
sub $5010, %r12
mov (%rdi), %r15d
nop
nop
nop
nop
add %rdi, %rdi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_A+0x5e99, %rax
nop
nop
nop
nop
nop
sub $22004, %r14
vmovaps (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
