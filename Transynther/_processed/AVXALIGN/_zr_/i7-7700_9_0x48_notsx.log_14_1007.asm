.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbx
push %rdi
push %rsi
lea addresses_A_ht+0x18a, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $51061, %rax
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xcd54, %r12
and %rax, %rax
movw $0x6162, (%r12)
nop
nop
and $4691, %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
mov $0x98a, %rbx
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
xor $44121, %r10

// Store
lea addresses_PSE+0xd89a, %r10
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
xor $3402, %rax

// Store
lea addresses_PSE+0xb98a, %rdx
nop
and %rbp, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
sub $34146, %rdx

// Faulty Load
mov $0x98a, %rdx
nop
nop
nop
nop
xor %r10, %r10
vmovaps (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
