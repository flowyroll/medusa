.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1e7b5, %rsi
clflush (%rsi)
dec %r10
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
inc %rsi

// Store
lea addresses_WC+0x111f5, %rdx
nop
nop
nop
and $10850, %r10
movl $0x51525354, (%rdx)
cmp $37710, %rax

// Store
lea addresses_UC+0x153f5, %rax
cmp %rdx, %rdx
movw $0x5152, (%rax)
nop
nop
nop
nop
and $22682, %rdx

// REPMOV
lea addresses_normal+0x5b65, %rsi
lea addresses_PSE+0xe5f5, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $61, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_PSE+0x19cf5, %rdx
and $7443, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdx)
sub %rax, %rax

// REPMOV
lea addresses_US+0x17f55, %rsi
lea addresses_WT+0xfcf5, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r10, %r10
mov $27, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_D+0x8ff5, %rsi
nop
nop
nop
sub $60328, %r10
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'36': 6}
36 36 36 36 36 36
*/
