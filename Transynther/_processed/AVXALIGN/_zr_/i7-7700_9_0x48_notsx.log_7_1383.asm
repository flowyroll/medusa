.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1482f, %r12
sub $19977, %rcx
movb $0x51, (%r12)
nop
nop
inc %r8

// Load
lea addresses_D+0x42f, %rbp
dec %r9
mov (%rbp), %esi
nop
nop
nop
nop
add $46648, %rbp

// Store
mov $0x12e9c0000000002f, %rsi
sub $18494, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
and $32788, %rcx

// Faulty Load
mov $0x188e91000000002f, %rdi
clflush (%rdi)
nop
nop
cmp $14691, %r12
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 7}
00 00 00 00 00 00 00
*/
