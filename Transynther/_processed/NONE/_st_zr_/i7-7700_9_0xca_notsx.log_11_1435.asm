.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x1a32b, %r9
nop
nop
inc %r13
movb $0x51, (%r9)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x1feeb, %r10
cmp $17635, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_D+0x856b, %r10
clflush (%r10)
nop
nop
nop
and $23836, %rbx
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
add %rsi, %rsi

// Faulty Load
lea addresses_A+0x1a6b, %r10
sub $51440, %rdi
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 3, '00': 8}
00 36 00 00 36 00 00 00 00 36 00
*/
