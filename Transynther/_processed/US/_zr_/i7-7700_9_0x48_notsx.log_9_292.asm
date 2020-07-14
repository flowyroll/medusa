.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x14084, %rdi
nop
dec %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movaps %xmm4, (%rdi)
and $29529, %rdx

// Load
lea addresses_PSE+0x11204, %rax
nop
nop
nop
nop
nop
xor $32617, %r14
mov (%rax), %r12w
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_US+0x19604, %rdx
nop
nop
nop
nop
nop
sub $26980, %r12
mov (%rdx), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
