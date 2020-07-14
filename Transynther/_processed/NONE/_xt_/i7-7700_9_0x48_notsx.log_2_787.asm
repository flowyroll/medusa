.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0x1fab0, %rsi
clflush (%rsi)
and $52827, %r13
movb $0x51, (%rsi)
nop
nop
nop
add %r9, %r9

// Store
mov $0x2c1b440000000aec, %r12
nop
nop
nop
nop
nop
sub $34797, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r12)
nop
add %r12, %r12

// Store
mov $0xcec, %r12
nop
nop
nop
cmp %rdx, %rdx
movb $0x51, (%r12)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_D+0x32ec, %r12
nop
nop
inc %r13
movb (%r12), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'36': 2}
36 36
*/
