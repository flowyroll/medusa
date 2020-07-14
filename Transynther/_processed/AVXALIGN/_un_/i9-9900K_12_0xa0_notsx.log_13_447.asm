.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rdi
lea addresses_A_ht+0x1bb18, %r12
sub $45825, %r9
movl $0x61626364, (%r12)
nop
dec %rdi
pop %rdi
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1f218, %r14
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
nop
and $54526, %rcx

// Faulty Load
lea addresses_UC+0x14a18, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub $43171, %r8
vmovntdqa (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'60': 5, '16': 8}
16 16 60 60 16 60 16 16 60 60 16 16 16
*/
