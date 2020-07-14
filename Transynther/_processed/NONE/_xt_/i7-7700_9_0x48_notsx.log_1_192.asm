.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rsi
lea addresses_A_ht+0x1344, %r11
nop
and $55671, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
cmp $12344, %r11
lea addresses_D_ht+0x151f4, %r10
nop
xor $61459, %r15
movl $0x61626364, (%r10)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1a074, %r14
nop
and %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x38c4, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x1b06e, %r15
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
xor %r10, %r10
lea addresses_A_ht+0x1b074, %r11
dec %rbp
movb (%r11), %r14b
and $57120, %r15
lea addresses_UC_ht+0x16474, %r15
nop
nop
nop
nop
nop
add $30423, %r10
mov (%r15), %r14d
and %rbp, %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x18ba4, %rsi
nop
nop
nop
nop
sub $8394, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovaps %ymm6, (%rsi)
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_PSE+0x12874, %r15
nop
nop
inc %rsi
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'33': 1}
33
*/
