.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a064, %rsi
lea addresses_WT_ht+0x170a0, %rdi
sub $33863, %r11
mov $8, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x16c88, %r10
nop
nop
nop
nop
nop
cmp %r9, %r9
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x6ae3700000008a0, %rdx
nop
nop
nop
nop
nop
mfence
movw $0x5152, (%rdx)
nop
nop
sub $58444, %r10

// Faulty Load
mov $0x6ae3700000008a0, %rdx
clflush (%rdx)
xor %rsi, %rsi
mov (%rdx), %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'52': 107}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
