.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c7ce, %rsi
lea addresses_normal_ht+0x188e, %rdi
nop
lfence
mov $104, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x15406, %rsi
lea addresses_PSE+0x3d0e, %rdi
xor $23135, %r13
mov $76, %rcx
rep movsq
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x1ccee, %r13
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
nop
sub $63563, %r13

// Store
lea addresses_UC+0xf956, %rcx
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x7f2e, %r13
nop
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovntdq %ymm0, (%r13)
inc %rsi

// Store
lea addresses_WC+0x1f60e, %rsi
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_PSE+0x3d0e, %r13
nop
xor $13824, %rbp
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'32': 122}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
