.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1a08d, %rsi
lea addresses_A+0x16ab7, %rdi
clflush (%rdi)
dec %r8
mov $62, %rcx
rep movsq
nop
nop
nop
add $34290, %rcx

// Store
lea addresses_PSE+0x1dc99, %r13
nop
and $4174, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
and $49292, %rbx

// Store
lea addresses_A+0x11f99, %r10
nop
nop
nop
nop
sub $1321, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
nop
and %rcx, %rcx

// Store
lea addresses_UC+0xbf79, %rbx
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
cmp $12552, %r10

// Store
lea addresses_RW+0xfaa1, %r10
nop
nop
mfence
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x6d99, %r10
nop
nop
nop
nop
nop
sub $24509, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
sub %r8, %r8

// Store
lea addresses_UC+0x1b0d9, %rbx
nop
nop
inc %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
cmp $7580, %rcx

// Faulty Load
lea addresses_normal+0x13f99, %r8
nop
nop
nop
nop
cmp $39611, %rdi
vmovaps (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'08': 16, '72': 14, '32': 15, '90': 21211, '07': 573}
07 07 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 08 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 07 90 90 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 07 90 90 90 90 07 90 90 90 90 90 90 90 90 90 90 90 07
*/
