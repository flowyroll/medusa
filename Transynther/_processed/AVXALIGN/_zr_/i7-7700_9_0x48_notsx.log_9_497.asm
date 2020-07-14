.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdx

// Load
mov $0x2df93e000000087b, %r10
clflush (%r10)
nop
add $21755, %rdx
mov (%r10), %rcx
nop
nop
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_normal+0x1d882, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $61291, %rdx
movaps (%rcx), %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
