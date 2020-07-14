.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rdi
lea addresses_normal_ht+0x1bfc0, %rdi
nop
nop
nop
nop
nop
sub $61640, %r9
mov (%rdi), %ax
nop
nop
sub $8017, %rax
pop %rdi
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Load
lea addresses_RW+0x1238c, %r10
nop
and $37364, %r12
mov (%r10), %rax
xor %r10, %r10

// Store
mov $0x440, %r12
nop
nop
nop
nop
nop
xor $9431, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_A+0x1be00, %rax
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rax)
and $6849, %rax

// Store
mov $0x2336a60000000c3c, %r12
nop
nop
nop
nop
nop
cmp $56564, %r9
mov $0x5152535455565758, %r13
movq %r13, (%r12)
and %r13, %r13

// Faulty Load
lea addresses_D+0x13f80, %rax
add %r13, %r13
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
